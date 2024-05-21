// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> updateBasket(DocumentReference basketMainRef) async {
  try {
    // Получение данных корзины из Firebase
    Map<String, dynamic> basketData =
        await fetchBasketDataFromFirebase(basketMainRef);

    // Проверка наличия всех полей в basketData и преобразование значений в строки
    basketData.forEach((key, value) {
      if (value != null) {
        basketData[key] = value.toString();
      } else {
        // Если значение равно null, передаем пустую строку ''
        basketData[key] = '';
      }
    });

    // Получение данных о товарах из субколлекции basket
    List<Map<String, dynamic>> products =
        await fetchBasketProductsFromFirebase(basketMainRef);

    // Отправка данных на сервер и получение обновленных данных
    Map<String, dynamic> updatedBasket =
        await sendDataToPHP(basketData, products);

    // Проверка наличия данных в ответе от сервера
    if (updatedBasket.isNotEmpty) {
      // Обновление данных корзины в Firebase
      await basketMainRef.set({
        'user_reference': updatedBasket['user_reference'],
        'user_UID_SUL': updatedBasket['user_UID_SUL'],
        'user_UID': updatedBasket['user_UID'],
        'card_id_SUL': updatedBasket['card_id_SUL'],
        'coupons_sum':
            int.tryParse(updatedBasket['coupons_sum'].toString()) ?? 0,
        'total_r': int.tryParse(updatedBasket['total_r'].toString()) ?? 0,
        'total_discount':
            int.tryParse(updatedBasket['total_discount'].toString()) ?? 0,
        'total': int.tryParse(updatedBasket['total'].toString()) ?? 0,
        'kol_products':
            int.tryParse(updatedBasket['kol_products'].toString()) ?? 0,
      });

      // Обновление товаров в субколлекции basket

      List<dynamic> updatedProducts = updatedBasket['products'];
      for (var updatedProduct in updatedProducts) {
        String fbDocId = updatedProduct['fb_doc_id'];
        await basketMainRef.collection('basket').doc(fbDocId).update({
          'r_price': int.tryParse(updatedProduct['r_price'].toString()) ?? 0,
          'user_price':
              int.tryParse(updatedProduct['user_price'].toString()) ?? 0,
          'discount_sum':
              int.tryParse(updatedProduct['discount_sum'].toString()) ?? 0,
        });
      }

      print('Данные корзины успешно обновлены в Firebase');

// Обновление состояния приложения FFAppState
      FFAppState().update(() {
        FFAppState().BasketMain.couponsSum =
            int.tryParse(updatedBasket['coupons_sum'].toString()) ?? 0;
        FFAppState().BasketMain.cardIdSUL = updatedBasket['card_id_SUL'];
        FFAppState().BasketMain.kolProducts =
            int.tryParse(updatedBasket['kol_products'].toString()) ?? 0;
        FFAppState().BasketMain.userIdSUL = updatedBasket['user_UID_SUL'];
        FFAppState().BasketMain.total =
            int.tryParse(updatedBasket['total'].toString()) ?? 0;
        FFAppState().BasketMain.totalR =
            int.tryParse(updatedBasket['total_r'].toString()) ?? 0;
        FFAppState().BasketMain.totalDiscount =
            int.tryParse(updatedBasket['total_discount'].toString()) ?? 0;

        FFAppState().basketDiscountSum =
            int.parse(updatedBasket['total_discount']);
        FFAppState().basketTotal = int.parse(updatedBasket['total']);
        FFAppState().basketItemsCount =
            int.parse(updatedBasket['kol_products']);
        FFAppState().badgecount = updatedBasket['kol_products'];
      });

      return true;
    } else {
      print('Ошибка: обновленные данные пусты');
      return false;
    }
  } catch (error) {
    print('Произошла ошибка: $error');
    return false;
  }
}

Future<Map<String, dynamic>> fetchBasketDataFromFirebase(
    DocumentReference basketMainRef) async {
  try {
    // Получение документа с данными корзины
    DocumentSnapshot basketDoc = await basketMainRef.get();

    // Проверка наличия данных в документе
    if (basketDoc.exists) {
      // Получение данных корзины
      Map<String, dynamic> basketData =
          basketDoc.data() as Map<String, dynamic>;

      // Преобразование DocumentReference в путь к документу (строку)
      basketData.forEach((key, value) {
        if (value is DocumentReference) {
          basketData[key] = value.path;
        }
      });

      // Возвращение данных корзины
      return basketData;
    } else {
      // Если документ не существует, возвращаем пустой словарь
      return {};
    }
  } catch (error) {
    // Если произошла ошибка при получении данных, выведем сообщение об ошибке и вернем пустой словарь
    print('Произошла ошибка при получении данных из Firestore: $error');
    return {};
  }
}

Future<List<Map<String, dynamic>>> fetchBasketProductsFromFirebase(
    DocumentReference basketMainRef) async {
  try {
    // Получение данных о товарах из субколлекции basket
    QuerySnapshot productsSnapshot =
        await basketMainRef.collection('basket').get();

    // Создание списка товаров
    List<Map<String, dynamic>> products = [];

    // Добавление данных о товарах в список
    for (QueryDocumentSnapshot productDoc in productsSnapshot.docs) {
      // Преобразование данных о продукте в Map<String, dynamic>
      Map<String, dynamic>? productData =
          productDoc.data() as Map<String, dynamic>?;

      if (productData != null) {
        // Преобразование DocumentReference в строку пути к документу
        productData.forEach((key, value) {
          if (value is DocumentReference) {
            productData[key] = value.path;
          }
        });
        productData['fb_doc_id'] = productDoc.id;
        // Добавление данных о продукте в список
        products.add(productData);
      }
    }

    return products;
  } catch (error) {
    // Если произошла ошибка при получении данных, выведем сообщение об ошибке и вернем пустой список
    print(
        'Произошла ошибка при получении данных о товарах из Firestore: $error');
    return [];
  }
}

Future<Map<String, dynamic>> sendDataToPHP(Map<String, dynamic> basketData,
    List<Map<String, dynamic>> products) async {
  String url =
      'https://imagine-parfum.ru/personal/rest/basket/info'; // Замените на ваш URL PHP скрипта

  try {
    // Преобразование данных корзины в строку x-www-form-urlencoded, включая массив продуктов
    String requestBody = basketData.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');

    // Добавление данных о продуктах в строку x-www-form-urlencoded
    for (int i = 0; i < products.length; i++) {
      products[i].forEach((key, value) {
        requestBody +=
            '&products[$i][${Uri.encodeComponent(key)}]=${Uri.encodeComponent(value.toString())}';
      });
    }

    // Отправка POST запроса с данными корзины и установка заголовков
    http.Response response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type':
            'application/x-www-form-urlencoded', // Установка типа содержимого как x-www-form-urlencoded
      },
      body: requestBody, // Отправляем строку JSON в теле запроса
    );

    // Обработка ответа
    if (response.statusCode == 200) {
      // Преобразование ответа в формат JSON
      Map<String, dynamic> updatedData = json.decode(response.body);

      // Возвращаем обновленные данные
      return updatedData;
    } else {
      // Если сервер вернул ошибку, выбрасываем исключение с описанием ошибки
      throw Exception(
          'Ошибка ${response.statusCode} при отправке запроса: ${response.reasonPhrase}');
    }
  } catch (error) {
    // Если произошла ошибка при выполнении запроса, выбрасываем исключение с описанием ошибки
    throw Exception('Произошла ошибка при отправке запроса: $error');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

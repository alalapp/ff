import 'dart:async';

import 'serialization_util.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: FlutterFlowTheme.of(context).primary,
          child: Image.asset(
            'assets/images/ImageToStl.com_logotype.png',
            fit: BoxFit.contain,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'accountPage': ParameterData.none(),
  'homePage': ParameterData.none(),
  'sendCodeRegPage': (data) async => ParameterData(
        allParams: {
          'regUserTel': getParameter<String>(data, 'regUserTel'),
          'regUserFio': getParameter<String>(data, 'regUserFio'),
          'regUserBd': getParameter<String>(data, 'regUserBd'),
          'regUserPass': getParameter<String>(data, 'regUserPass'),
          'regUserMail': getParameter<String>(data, 'regUserMail'),
        },
      ),
  'LoginPage': (data) async => ParameterData(
        allParams: {
          'code0': getParameter<bool>(data, 'code0'),
        },
      ),
  'sendCodePage': (data) async => ParameterData(
        allParams: {
          'userTel': getParameter<String>(data, 'userTel'),
          'userMail': getParameter<String>(data, 'userMail'),
          'userPass': getParameter<String>(data, 'userPass'),
          'userName': getParameter<String>(data, 'userName'),
        },
      ),
  'UserSalesPage': (data) async => ParameterData(
        allParams: {
          'card': getParameter<String>(data, 'card'),
        },
      ),
  'UserSalesInfoPage': (data) async => ParameterData(
        allParams: {
          'sDate': getParameter<String>(data, 'sDate'),
          'sSumm': getParameter<String>(data, 'sSumm'),
        },
      ),
  'ActionInfoPage': (data) async => const ParameterData(
        allParams: {},
      ),
  'userPodpPage': (data) async => ParameterData(
        allParams: {
          'card': getParameter<String>(data, 'card'),
        },
      ),
  'userPromoPage': (data) async => ParameterData(
        allParams: {
          'card': getParameter<String>(data, 'card'),
        },
      ),
  'userEcardsPage': (data) async => ParameterData(
        allParams: {
          'card': getParameter<String>(data, 'card'),
        },
      ),
  'rasPricePage': ParameterData.none(),
  'rasPriceInfoPage': (data) async => const ParameterData(
        allParams: {},
      ),
  'UserBonusPage': (data) async => ParameterData(
        allParams: {
          'card': getParameter<String>(data, 'card'),
        },
      ),
  'sendCodePageNew': (data) async => ParameterData(
        allParams: {
          'userTel': getParameter<String>(data, 'userTel'),
          'userMail': getParameter<String>(data, 'userMail'),
          'userPass': getParameter<String>(data, 'userPass'),
          'userName': getParameter<String>(data, 'userName'),
        },
      ),
  'brandsPage': ParameterData.none(),
  'categoryPage': ParameterData.none(),
  'catalogGoodsPage': (data) async => ParameterData(
        allParams: {
          'parId': getParameter<int>(data, 'parId'),
          'parName': getParameter<String>(data, 'parName'),
          'from': getParameter<String>(data, 'from'),
        },
      ),
  'productPage': (data) async => ParameterData(
        allParams: {
          'productId': getParameter<int>(data, 'productId'),
          'parId': getParameter<int>(data, 'parId'),
          'parName': getParameter<String>(data, 'parName'),
          'partype': getParameter<String>(data, 'partype'),
          'byPar': getParameter<String>(data, 'byPar'),
        },
      ),
  'brandsGoodsPage': (data) async => ParameterData(
        allParams: {
          'parId': getParameter<int>(data, 'parId'),
          'parName': getParameter<String>(data, 'parName'),
          'from': getParameter<String>(data, 'from'),
        },
      ),
  'NewsInfoPage': (data) async => const ParameterData(
        allParams: {},
      ),
  'DrawerPage': ParameterData.none(),
  'searchPage': ParameterData.none(),
  'basketPage': ParameterData.none(),
  'propPage': (data) async => ParameterData(
        allParams: {
          'parID': getParameter<int>(data, 'parID'),
          'parName': getParameter<String>(data, 'parName'),
          'parType': getParameter<String>(data, 'parType'),
        },
      ),
  'orderPage': (data) async => const ParameterData(
        allParams: {},
      ),
  'orderUserInfoPage': ParameterData.none(),
  'orderDeliveryPage': ParameterData.none(),
  'orderPaymentPage': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}

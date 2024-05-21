// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderPropertiesStruct extends FFFirebaseStruct {
  OrderPropertiesStruct({
    int? paymentID,
    String? paymentName,
    int? deliveryID,
    String? deliveryName,
    int? deliveryTariffID,
    String? deliveryTariff,
    int? deliveryCost,
    int? couponsAvailable,
    int? couponsResult,
    int? orderTotal,
    int? orderTotalR,
    int? orderDiscount,
    int? orderKolProducts,
    List<BasketStruct>? orderProducts,
    UserProfileStruct? userInfo,
    int? orderID,
    DateTime? orderDate,
    String? promocode,
    int? promocodeSum,
    String? deliveryTrack,
    DeliveryStatusesStruct? deliveryStatus,
    PaymentStatusesStruct? paymentStatus,
    bool? issetAddress,
    bool? issetDelivery,
    bool? issetPayments,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _paymentID = paymentID,
        _paymentName = paymentName,
        _deliveryID = deliveryID,
        _deliveryName = deliveryName,
        _deliveryTariffID = deliveryTariffID,
        _deliveryTariff = deliveryTariff,
        _deliveryCost = deliveryCost,
        _couponsAvailable = couponsAvailable,
        _couponsResult = couponsResult,
        _orderTotal = orderTotal,
        _orderTotalR = orderTotalR,
        _orderDiscount = orderDiscount,
        _orderKolProducts = orderKolProducts,
        _orderProducts = orderProducts,
        _userInfo = userInfo,
        _orderID = orderID,
        _orderDate = orderDate,
        _promocode = promocode,
        _promocodeSum = promocodeSum,
        _deliveryTrack = deliveryTrack,
        _deliveryStatus = deliveryStatus,
        _paymentStatus = paymentStatus,
        _issetAddress = issetAddress,
        _issetDelivery = issetDelivery,
        _issetPayments = issetPayments,
        super(firestoreUtilData);

  // "paymentID" field.
  int? _paymentID;
  int get paymentID => _paymentID ?? 0;
  set paymentID(int? val) => _paymentID = val;
  void incrementPaymentID(int amount) => _paymentID = paymentID + amount;
  bool hasPaymentID() => _paymentID != null;

  // "paymentName" field.
  String? _paymentName;
  String get paymentName => _paymentName ?? '';
  set paymentName(String? val) => _paymentName = val;
  bool hasPaymentName() => _paymentName != null;

  // "deliveryID" field.
  int? _deliveryID;
  int get deliveryID => _deliveryID ?? 0;
  set deliveryID(int? val) => _deliveryID = val;
  void incrementDeliveryID(int amount) => _deliveryID = deliveryID + amount;
  bool hasDeliveryID() => _deliveryID != null;

  // "deliveryName" field.
  String? _deliveryName;
  String get deliveryName => _deliveryName ?? '';
  set deliveryName(String? val) => _deliveryName = val;
  bool hasDeliveryName() => _deliveryName != null;

  // "deliveryTariffID" field.
  int? _deliveryTariffID;
  int get deliveryTariffID => _deliveryTariffID ?? 0;
  set deliveryTariffID(int? val) => _deliveryTariffID = val;
  void incrementDeliveryTariffID(int amount) =>
      _deliveryTariffID = deliveryTariffID + amount;
  bool hasDeliveryTariffID() => _deliveryTariffID != null;

  // "deliveryTariff" field.
  String? _deliveryTariff;
  String get deliveryTariff => _deliveryTariff ?? '';
  set deliveryTariff(String? val) => _deliveryTariff = val;
  bool hasDeliveryTariff() => _deliveryTariff != null;

  // "deliveryCost" field.
  int? _deliveryCost;
  int get deliveryCost => _deliveryCost ?? 0;
  set deliveryCost(int? val) => _deliveryCost = val;
  void incrementDeliveryCost(int amount) =>
      _deliveryCost = deliveryCost + amount;
  bool hasDeliveryCost() => _deliveryCost != null;

  // "couponsAvailable" field.
  int? _couponsAvailable;
  int get couponsAvailable => _couponsAvailable ?? 0;
  set couponsAvailable(int? val) => _couponsAvailable = val;
  void incrementCouponsAvailable(int amount) =>
      _couponsAvailable = couponsAvailable + amount;
  bool hasCouponsAvailable() => _couponsAvailable != null;

  // "couponsResult" field.
  int? _couponsResult;
  int get couponsResult => _couponsResult ?? 0;
  set couponsResult(int? val) => _couponsResult = val;
  void incrementCouponsResult(int amount) =>
      _couponsResult = couponsResult + amount;
  bool hasCouponsResult() => _couponsResult != null;

  // "orderTotal" field.
  int? _orderTotal;
  int get orderTotal => _orderTotal ?? 0;
  set orderTotal(int? val) => _orderTotal = val;
  void incrementOrderTotal(int amount) => _orderTotal = orderTotal + amount;
  bool hasOrderTotal() => _orderTotal != null;

  // "orderTotalR" field.
  int? _orderTotalR;
  int get orderTotalR => _orderTotalR ?? 0;
  set orderTotalR(int? val) => _orderTotalR = val;
  void incrementOrderTotalR(int amount) => _orderTotalR = orderTotalR + amount;
  bool hasOrderTotalR() => _orderTotalR != null;

  // "orderDiscount" field.
  int? _orderDiscount;
  int get orderDiscount => _orderDiscount ?? 0;
  set orderDiscount(int? val) => _orderDiscount = val;
  void incrementOrderDiscount(int amount) =>
      _orderDiscount = orderDiscount + amount;
  bool hasOrderDiscount() => _orderDiscount != null;

  // "orderKolProducts" field.
  int? _orderKolProducts;
  int get orderKolProducts => _orderKolProducts ?? 0;
  set orderKolProducts(int? val) => _orderKolProducts = val;
  void incrementOrderKolProducts(int amount) =>
      _orderKolProducts = orderKolProducts + amount;
  bool hasOrderKolProducts() => _orderKolProducts != null;

  // "orderProducts" field.
  List<BasketStruct>? _orderProducts;
  List<BasketStruct> get orderProducts => _orderProducts ?? const [];
  set orderProducts(List<BasketStruct>? val) => _orderProducts = val;
  void updateOrderProducts(Function(List<BasketStruct>) updateFn) =>
      updateFn(_orderProducts ??= []);
  bool hasOrderProducts() => _orderProducts != null;

  // "userInfo" field.
  UserProfileStruct? _userInfo;
  UserProfileStruct get userInfo => _userInfo ?? UserProfileStruct();
  set userInfo(UserProfileStruct? val) => _userInfo = val;
  void updateUserInfo(Function(UserProfileStruct) updateFn) =>
      updateFn(_userInfo ??= UserProfileStruct());
  bool hasUserInfo() => _userInfo != null;

  // "orderID" field.
  int? _orderID;
  int get orderID => _orderID ?? 0;
  set orderID(int? val) => _orderID = val;
  void incrementOrderID(int amount) => _orderID = orderID + amount;
  bool hasOrderID() => _orderID != null;

  // "orderDate" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  set orderDate(DateTime? val) => _orderDate = val;
  bool hasOrderDate() => _orderDate != null;

  // "promocode" field.
  String? _promocode;
  String get promocode => _promocode ?? '';
  set promocode(String? val) => _promocode = val;
  bool hasPromocode() => _promocode != null;

  // "promocodeSum" field.
  int? _promocodeSum;
  int get promocodeSum => _promocodeSum ?? 0;
  set promocodeSum(int? val) => _promocodeSum = val;
  void incrementPromocodeSum(int amount) =>
      _promocodeSum = promocodeSum + amount;
  bool hasPromocodeSum() => _promocodeSum != null;

  // "deliveryTrack" field.
  String? _deliveryTrack;
  String get deliveryTrack => _deliveryTrack ?? '';
  set deliveryTrack(String? val) => _deliveryTrack = val;
  bool hasDeliveryTrack() => _deliveryTrack != null;

  // "deliveryStatus" field.
  DeliveryStatusesStruct? _deliveryStatus;
  DeliveryStatusesStruct get deliveryStatus =>
      _deliveryStatus ?? DeliveryStatusesStruct();
  set deliveryStatus(DeliveryStatusesStruct? val) => _deliveryStatus = val;
  void updateDeliveryStatus(Function(DeliveryStatusesStruct) updateFn) =>
      updateFn(_deliveryStatus ??= DeliveryStatusesStruct());
  bool hasDeliveryStatus() => _deliveryStatus != null;

  // "paymentStatus" field.
  PaymentStatusesStruct? _paymentStatus;
  PaymentStatusesStruct get paymentStatus =>
      _paymentStatus ?? PaymentStatusesStruct();
  set paymentStatus(PaymentStatusesStruct? val) => _paymentStatus = val;
  void updatePaymentStatus(Function(PaymentStatusesStruct) updateFn) =>
      updateFn(_paymentStatus ??= PaymentStatusesStruct());
  bool hasPaymentStatus() => _paymentStatus != null;

  // "issetAddress" field.
  bool? _issetAddress;
  bool get issetAddress => _issetAddress ?? false;
  set issetAddress(bool? val) => _issetAddress = val;
  bool hasIssetAddress() => _issetAddress != null;

  // "issetDelivery" field.
  bool? _issetDelivery;
  bool get issetDelivery => _issetDelivery ?? false;
  set issetDelivery(bool? val) => _issetDelivery = val;
  bool hasIssetDelivery() => _issetDelivery != null;

  // "issetPayments" field.
  bool? _issetPayments;
  bool get issetPayments => _issetPayments ?? false;
  set issetPayments(bool? val) => _issetPayments = val;
  bool hasIssetPayments() => _issetPayments != null;

  static OrderPropertiesStruct fromMap(Map<String, dynamic> data) =>
      OrderPropertiesStruct(
        paymentID: castToType<int>(data['paymentID']),
        paymentName: data['paymentName'] as String?,
        deliveryID: castToType<int>(data['deliveryID']),
        deliveryName: data['deliveryName'] as String?,
        deliveryTariffID: castToType<int>(data['deliveryTariffID']),
        deliveryTariff: data['deliveryTariff'] as String?,
        deliveryCost: castToType<int>(data['deliveryCost']),
        couponsAvailable: castToType<int>(data['couponsAvailable']),
        couponsResult: castToType<int>(data['couponsResult']),
        orderTotal: castToType<int>(data['orderTotal']),
        orderTotalR: castToType<int>(data['orderTotalR']),
        orderDiscount: castToType<int>(data['orderDiscount']),
        orderKolProducts: castToType<int>(data['orderKolProducts']),
        orderProducts: getStructList(
          data['orderProducts'],
          BasketStruct.fromMap,
        ),
        userInfo: UserProfileStruct.maybeFromMap(data['userInfo']),
        orderID: castToType<int>(data['orderID']),
        orderDate: data['orderDate'] as DateTime?,
        promocode: data['promocode'] as String?,
        promocodeSum: castToType<int>(data['promocodeSum']),
        deliveryTrack: data['deliveryTrack'] as String?,
        deliveryStatus:
            DeliveryStatusesStruct.maybeFromMap(data['deliveryStatus']),
        paymentStatus:
            PaymentStatusesStruct.maybeFromMap(data['paymentStatus']),
        issetAddress: data['issetAddress'] as bool?,
        issetDelivery: data['issetDelivery'] as bool?,
        issetPayments: data['issetPayments'] as bool?,
      );

  static OrderPropertiesStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderPropertiesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'paymentID': _paymentID,
        'paymentName': _paymentName,
        'deliveryID': _deliveryID,
        'deliveryName': _deliveryName,
        'deliveryTariffID': _deliveryTariffID,
        'deliveryTariff': _deliveryTariff,
        'deliveryCost': _deliveryCost,
        'couponsAvailable': _couponsAvailable,
        'couponsResult': _couponsResult,
        'orderTotal': _orderTotal,
        'orderTotalR': _orderTotalR,
        'orderDiscount': _orderDiscount,
        'orderKolProducts': _orderKolProducts,
        'orderProducts': _orderProducts?.map((e) => e.toMap()).toList(),
        'userInfo': _userInfo?.toMap(),
        'orderID': _orderID,
        'orderDate': _orderDate,
        'promocode': _promocode,
        'promocodeSum': _promocodeSum,
        'deliveryTrack': _deliveryTrack,
        'deliveryStatus': _deliveryStatus?.toMap(),
        'paymentStatus': _paymentStatus?.toMap(),
        'issetAddress': _issetAddress,
        'issetDelivery': _issetDelivery,
        'issetPayments': _issetPayments,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'paymentID': serializeParam(
          _paymentID,
          ParamType.int,
        ),
        'paymentName': serializeParam(
          _paymentName,
          ParamType.String,
        ),
        'deliveryID': serializeParam(
          _deliveryID,
          ParamType.int,
        ),
        'deliveryName': serializeParam(
          _deliveryName,
          ParamType.String,
        ),
        'deliveryTariffID': serializeParam(
          _deliveryTariffID,
          ParamType.int,
        ),
        'deliveryTariff': serializeParam(
          _deliveryTariff,
          ParamType.String,
        ),
        'deliveryCost': serializeParam(
          _deliveryCost,
          ParamType.int,
        ),
        'couponsAvailable': serializeParam(
          _couponsAvailable,
          ParamType.int,
        ),
        'couponsResult': serializeParam(
          _couponsResult,
          ParamType.int,
        ),
        'orderTotal': serializeParam(
          _orderTotal,
          ParamType.int,
        ),
        'orderTotalR': serializeParam(
          _orderTotalR,
          ParamType.int,
        ),
        'orderDiscount': serializeParam(
          _orderDiscount,
          ParamType.int,
        ),
        'orderKolProducts': serializeParam(
          _orderKolProducts,
          ParamType.int,
        ),
        'orderProducts': serializeParam(
          _orderProducts,
          ParamType.DataStruct,
          true,
        ),
        'userInfo': serializeParam(
          _userInfo,
          ParamType.DataStruct,
        ),
        'orderID': serializeParam(
          _orderID,
          ParamType.int,
        ),
        'orderDate': serializeParam(
          _orderDate,
          ParamType.DateTime,
        ),
        'promocode': serializeParam(
          _promocode,
          ParamType.String,
        ),
        'promocodeSum': serializeParam(
          _promocodeSum,
          ParamType.int,
        ),
        'deliveryTrack': serializeParam(
          _deliveryTrack,
          ParamType.String,
        ),
        'deliveryStatus': serializeParam(
          _deliveryStatus,
          ParamType.DataStruct,
        ),
        'paymentStatus': serializeParam(
          _paymentStatus,
          ParamType.DataStruct,
        ),
        'issetAddress': serializeParam(
          _issetAddress,
          ParamType.bool,
        ),
        'issetDelivery': serializeParam(
          _issetDelivery,
          ParamType.bool,
        ),
        'issetPayments': serializeParam(
          _issetPayments,
          ParamType.bool,
        ),
      }.withoutNulls;

  static OrderPropertiesStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderPropertiesStruct(
        paymentID: deserializeParam(
          data['paymentID'],
          ParamType.int,
          false,
        ),
        paymentName: deserializeParam(
          data['paymentName'],
          ParamType.String,
          false,
        ),
        deliveryID: deserializeParam(
          data['deliveryID'],
          ParamType.int,
          false,
        ),
        deliveryName: deserializeParam(
          data['deliveryName'],
          ParamType.String,
          false,
        ),
        deliveryTariffID: deserializeParam(
          data['deliveryTariffID'],
          ParamType.int,
          false,
        ),
        deliveryTariff: deserializeParam(
          data['deliveryTariff'],
          ParamType.String,
          false,
        ),
        deliveryCost: deserializeParam(
          data['deliveryCost'],
          ParamType.int,
          false,
        ),
        couponsAvailable: deserializeParam(
          data['couponsAvailable'],
          ParamType.int,
          false,
        ),
        couponsResult: deserializeParam(
          data['couponsResult'],
          ParamType.int,
          false,
        ),
        orderTotal: deserializeParam(
          data['orderTotal'],
          ParamType.int,
          false,
        ),
        orderTotalR: deserializeParam(
          data['orderTotalR'],
          ParamType.int,
          false,
        ),
        orderDiscount: deserializeParam(
          data['orderDiscount'],
          ParamType.int,
          false,
        ),
        orderKolProducts: deserializeParam(
          data['orderKolProducts'],
          ParamType.int,
          false,
        ),
        orderProducts: deserializeStructParam<BasketStruct>(
          data['orderProducts'],
          ParamType.DataStruct,
          true,
          structBuilder: BasketStruct.fromSerializableMap,
        ),
        userInfo: deserializeStructParam(
          data['userInfo'],
          ParamType.DataStruct,
          false,
          structBuilder: UserProfileStruct.fromSerializableMap,
        ),
        orderID: deserializeParam(
          data['orderID'],
          ParamType.int,
          false,
        ),
        orderDate: deserializeParam(
          data['orderDate'],
          ParamType.DateTime,
          false,
        ),
        promocode: deserializeParam(
          data['promocode'],
          ParamType.String,
          false,
        ),
        promocodeSum: deserializeParam(
          data['promocodeSum'],
          ParamType.int,
          false,
        ),
        deliveryTrack: deserializeParam(
          data['deliveryTrack'],
          ParamType.String,
          false,
        ),
        deliveryStatus: deserializeStructParam(
          data['deliveryStatus'],
          ParamType.DataStruct,
          false,
          structBuilder: DeliveryStatusesStruct.fromSerializableMap,
        ),
        paymentStatus: deserializeStructParam(
          data['paymentStatus'],
          ParamType.DataStruct,
          false,
          structBuilder: PaymentStatusesStruct.fromSerializableMap,
        ),
        issetAddress: deserializeParam(
          data['issetAddress'],
          ParamType.bool,
          false,
        ),
        issetDelivery: deserializeParam(
          data['issetDelivery'],
          ParamType.bool,
          false,
        ),
        issetPayments: deserializeParam(
          data['issetPayments'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'OrderPropertiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OrderPropertiesStruct &&
        paymentID == other.paymentID &&
        paymentName == other.paymentName &&
        deliveryID == other.deliveryID &&
        deliveryName == other.deliveryName &&
        deliveryTariffID == other.deliveryTariffID &&
        deliveryTariff == other.deliveryTariff &&
        deliveryCost == other.deliveryCost &&
        couponsAvailable == other.couponsAvailable &&
        couponsResult == other.couponsResult &&
        orderTotal == other.orderTotal &&
        orderTotalR == other.orderTotalR &&
        orderDiscount == other.orderDiscount &&
        orderKolProducts == other.orderKolProducts &&
        listEquality.equals(orderProducts, other.orderProducts) &&
        userInfo == other.userInfo &&
        orderID == other.orderID &&
        orderDate == other.orderDate &&
        promocode == other.promocode &&
        promocodeSum == other.promocodeSum &&
        deliveryTrack == other.deliveryTrack &&
        deliveryStatus == other.deliveryStatus &&
        paymentStatus == other.paymentStatus &&
        issetAddress == other.issetAddress &&
        issetDelivery == other.issetDelivery &&
        issetPayments == other.issetPayments;
  }

  @override
  int get hashCode => const ListEquality().hash([
        paymentID,
        paymentName,
        deliveryID,
        deliveryName,
        deliveryTariffID,
        deliveryTariff,
        deliveryCost,
        couponsAvailable,
        couponsResult,
        orderTotal,
        orderTotalR,
        orderDiscount,
        orderKolProducts,
        orderProducts,
        userInfo,
        orderID,
        orderDate,
        promocode,
        promocodeSum,
        deliveryTrack,
        deliveryStatus,
        paymentStatus,
        issetAddress,
        issetDelivery,
        issetPayments
      ]);
}

OrderPropertiesStruct createOrderPropertiesStruct({
  int? paymentID,
  String? paymentName,
  int? deliveryID,
  String? deliveryName,
  int? deliveryTariffID,
  String? deliveryTariff,
  int? deliveryCost,
  int? couponsAvailable,
  int? couponsResult,
  int? orderTotal,
  int? orderTotalR,
  int? orderDiscount,
  int? orderKolProducts,
  UserProfileStruct? userInfo,
  int? orderID,
  DateTime? orderDate,
  String? promocode,
  int? promocodeSum,
  String? deliveryTrack,
  DeliveryStatusesStruct? deliveryStatus,
  PaymentStatusesStruct? paymentStatus,
  bool? issetAddress,
  bool? issetDelivery,
  bool? issetPayments,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderPropertiesStruct(
      paymentID: paymentID,
      paymentName: paymentName,
      deliveryID: deliveryID,
      deliveryName: deliveryName,
      deliveryTariffID: deliveryTariffID,
      deliveryTariff: deliveryTariff,
      deliveryCost: deliveryCost,
      couponsAvailable: couponsAvailable,
      couponsResult: couponsResult,
      orderTotal: orderTotal,
      orderTotalR: orderTotalR,
      orderDiscount: orderDiscount,
      orderKolProducts: orderKolProducts,
      userInfo: userInfo ?? (clearUnsetFields ? UserProfileStruct() : null),
      orderID: orderID,
      orderDate: orderDate,
      promocode: promocode,
      promocodeSum: promocodeSum,
      deliveryTrack: deliveryTrack,
      deliveryStatus: deliveryStatus ??
          (clearUnsetFields ? DeliveryStatusesStruct() : null),
      paymentStatus:
          paymentStatus ?? (clearUnsetFields ? PaymentStatusesStruct() : null),
      issetAddress: issetAddress,
      issetDelivery: issetDelivery,
      issetPayments: issetPayments,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrderPropertiesStruct? updateOrderPropertiesStruct(
  OrderPropertiesStruct? orderProperties, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orderProperties
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrderPropertiesStructData(
  Map<String, dynamic> firestoreData,
  OrderPropertiesStruct? orderProperties,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orderProperties == null) {
    return;
  }
  if (orderProperties.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orderProperties.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderPropertiesData =
      getOrderPropertiesFirestoreData(orderProperties, forFieldValue);
  final nestedData =
      orderPropertiesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orderProperties.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrderPropertiesFirestoreData(
  OrderPropertiesStruct? orderProperties, [
  bool forFieldValue = false,
]) {
  if (orderProperties == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orderProperties.toMap());

  // Handle nested data for "userInfo" field.
  addUserProfileStructData(
    firestoreData,
    orderProperties.hasUserInfo() ? orderProperties.userInfo : null,
    'userInfo',
    forFieldValue,
  );

  // Handle nested data for "deliveryStatus" field.
  addDeliveryStatusesStructData(
    firestoreData,
    orderProperties.hasDeliveryStatus() ? orderProperties.deliveryStatus : null,
    'deliveryStatus',
    forFieldValue,
  );

  // Handle nested data for "paymentStatus" field.
  addPaymentStatusesStructData(
    firestoreData,
    orderProperties.hasPaymentStatus() ? orderProperties.paymentStatus : null,
    'paymentStatus',
    forFieldValue,
  );

  // Add any Firestore field values
  orderProperties.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderPropertiesListFirestoreData(
  List<OrderPropertiesStruct>? orderPropertiess,
) =>
    orderPropertiess
        ?.map((e) => getOrderPropertiesFirestoreData(e, true))
        .toList() ??
    [];

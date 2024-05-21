import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "orderID" field.
  int? _orderID;
  int get orderID => _orderID ?? 0;
  bool hasOrderID() => _orderID != null;

  // "orderTotal" field.
  int? _orderTotal;
  int get orderTotal => _orderTotal ?? 0;
  bool hasOrderTotal() => _orderTotal != null;

  // "orderTotalR" field.
  int? _orderTotalR;
  int get orderTotalR => _orderTotalR ?? 0;
  bool hasOrderTotalR() => _orderTotalR != null;

  // "orderDiscountSum" field.
  int? _orderDiscountSum;
  int get orderDiscountSum => _orderDiscountSum ?? 0;
  bool hasOrderDiscountSum() => _orderDiscountSum != null;

  // "orderCouponsSum" field.
  int? _orderCouponsSum;
  int get orderCouponsSum => _orderCouponsSum ?? 0;
  bool hasOrderCouponsSum() => _orderCouponsSum != null;

  // "orderDeliverySum" field.
  int? _orderDeliverySum;
  int get orderDeliverySum => _orderDeliverySum ?? 0;
  bool hasOrderDeliverySum() => _orderDeliverySum != null;

  // "orderProductsKol" field.
  int? _orderProductsKol;
  int get orderProductsKol => _orderProductsKol ?? 0;
  bool hasOrderProductsKol() => _orderProductsKol != null;

  // "paymentID" field.
  int? _paymentID;
  int get paymentID => _paymentID ?? 0;
  bool hasPaymentID() => _paymentID != null;

  // "paymentName" field.
  String? _paymentName;
  String get paymentName => _paymentName ?? '';
  bool hasPaymentName() => _paymentName != null;

  // "paymentStatus" field.
  String? _paymentStatus;
  String get paymentStatus => _paymentStatus ?? '';
  bool hasPaymentStatus() => _paymentStatus != null;

  // "orderCouponsAbailable" field.
  int? _orderCouponsAbailable;
  int get orderCouponsAbailable => _orderCouponsAbailable ?? 0;
  bool hasOrderCouponsAbailable() => _orderCouponsAbailable != null;

  // "orderPromocode" field.
  String? _orderPromocode;
  String get orderPromocode => _orderPromocode ?? '';
  bool hasOrderPromocode() => _orderPromocode != null;

  // "orderPromocodeSum" field.
  int? _orderPromocodeSum;
  int get orderPromocodeSum => _orderPromocodeSum ?? 0;
  bool hasOrderPromocodeSum() => _orderPromocodeSum != null;

  // "deliveryID" field.
  int? _deliveryID;
  int get deliveryID => _deliveryID ?? 0;
  bool hasDeliveryID() => _deliveryID != null;

  // "deliveryName" field.
  String? _deliveryName;
  String get deliveryName => _deliveryName ?? '';
  bool hasDeliveryName() => _deliveryName != null;

  // "deliveryTariffID" field.
  int? _deliveryTariffID;
  int get deliveryTariffID => _deliveryTariffID ?? 0;
  bool hasDeliveryTariffID() => _deliveryTariffID != null;

  // "deliveryTariffName" field.
  String? _deliveryTariffName;
  String get deliveryTariffName => _deliveryTariffName ?? '';
  bool hasDeliveryTariffName() => _deliveryTariffName != null;

  // "deliveryTime" field.
  int? _deliveryTime;
  int get deliveryTime => _deliveryTime ?? 0;
  bool hasDeliveryTime() => _deliveryTime != null;

  // "deliverySum" field.
  int? _deliverySum;
  int get deliverySum => _deliverySum ?? 0;
  bool hasDeliverySum() => _deliverySum != null;

  // "deliveryTrack" field.
  String? _deliveryTrack;
  String get deliveryTrack => _deliveryTrack ?? '';
  bool hasDeliveryTrack() => _deliveryTrack != null;

  // "deliveryStatus" field.
  String? _deliveryStatus;
  String get deliveryStatus => _deliveryStatus ?? '';
  bool hasDeliveryStatus() => _deliveryStatus != null;

  // "orderProducts" field.
  List<BasketStruct>? _orderProducts;
  List<BasketStruct> get orderProducts => _orderProducts ?? const [];
  bool hasOrderProducts() => _orderProducts != null;

  // "userInfo" field.
  UserProfileStruct? _userInfo;
  UserProfileStruct get userInfo => _userInfo ?? UserProfileStruct();
  bool hasUserInfo() => _userInfo != null;

  // "isSetAddress" field.
  bool? _isSetAddress;
  bool get isSetAddress => _isSetAddress ?? false;
  bool hasIsSetAddress() => _isSetAddress != null;

  // "isSetDelivery" field.
  bool? _isSetDelivery;
  bool get isSetDelivery => _isSetDelivery ?? false;
  bool hasIsSetDelivery() => _isSetDelivery != null;

  // "isSetPayment" field.
  bool? _isSetPayment;
  bool get isSetPayment => _isSetPayment ?? false;
  bool hasIsSetPayment() => _isSetPayment != null;

  // "basketReference" field.
  DocumentReference? _basketReference;
  DocumentReference? get basketReference => _basketReference;
  bool hasBasketReference() => _basketReference != null;

  // "recipientInfo" field.
  DocumentReference? _recipientInfo;
  DocumentReference? get recipientInfo => _recipientInfo;
  bool hasRecipientInfo() => _recipientInfo != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _orderID = castToType<int>(snapshotData['orderID']);
    _orderTotal = castToType<int>(snapshotData['orderTotal']);
    _orderTotalR = castToType<int>(snapshotData['orderTotalR']);
    _orderDiscountSum = castToType<int>(snapshotData['orderDiscountSum']);
    _orderCouponsSum = castToType<int>(snapshotData['orderCouponsSum']);
    _orderDeliverySum = castToType<int>(snapshotData['orderDeliverySum']);
    _orderProductsKol = castToType<int>(snapshotData['orderProductsKol']);
    _paymentID = castToType<int>(snapshotData['paymentID']);
    _paymentName = snapshotData['paymentName'] as String?;
    _paymentStatus = snapshotData['paymentStatus'] as String?;
    _orderCouponsAbailable =
        castToType<int>(snapshotData['orderCouponsAbailable']);
    _orderPromocode = snapshotData['orderPromocode'] as String?;
    _orderPromocodeSum = castToType<int>(snapshotData['orderPromocodeSum']);
    _deliveryID = castToType<int>(snapshotData['deliveryID']);
    _deliveryName = snapshotData['deliveryName'] as String?;
    _deliveryTariffID = castToType<int>(snapshotData['deliveryTariffID']);
    _deliveryTariffName = snapshotData['deliveryTariffName'] as String?;
    _deliveryTime = castToType<int>(snapshotData['deliveryTime']);
    _deliverySum = castToType<int>(snapshotData['deliverySum']);
    _deliveryTrack = snapshotData['deliveryTrack'] as String?;
    _deliveryStatus = snapshotData['deliveryStatus'] as String?;
    _orderProducts = getStructList(
      snapshotData['orderProducts'],
      BasketStruct.fromMap,
    );
    _userInfo = UserProfileStruct.maybeFromMap(snapshotData['userInfo']);
    _isSetAddress = snapshotData['isSetAddress'] as bool?;
    _isSetDelivery = snapshotData['isSetDelivery'] as bool?;
    _isSetPayment = snapshotData['isSetPayment'] as bool?;
    _basketReference = snapshotData['basketReference'] as DocumentReference?;
    _recipientInfo = snapshotData['recipientInfo'] as DocumentReference?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  int? orderID,
  int? orderTotal,
  int? orderTotalR,
  int? orderDiscountSum,
  int? orderCouponsSum,
  int? orderDeliverySum,
  int? orderProductsKol,
  int? paymentID,
  String? paymentName,
  String? paymentStatus,
  int? orderCouponsAbailable,
  String? orderPromocode,
  int? orderPromocodeSum,
  int? deliveryID,
  String? deliveryName,
  int? deliveryTariffID,
  String? deliveryTariffName,
  int? deliveryTime,
  int? deliverySum,
  String? deliveryTrack,
  String? deliveryStatus,
  UserProfileStruct? userInfo,
  bool? isSetAddress,
  bool? isSetDelivery,
  bool? isSetPayment,
  DocumentReference? basketReference,
  DocumentReference? recipientInfo,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderID': orderID,
      'orderTotal': orderTotal,
      'orderTotalR': orderTotalR,
      'orderDiscountSum': orderDiscountSum,
      'orderCouponsSum': orderCouponsSum,
      'orderDeliverySum': orderDeliverySum,
      'orderProductsKol': orderProductsKol,
      'paymentID': paymentID,
      'paymentName': paymentName,
      'paymentStatus': paymentStatus,
      'orderCouponsAbailable': orderCouponsAbailable,
      'orderPromocode': orderPromocode,
      'orderPromocodeSum': orderPromocodeSum,
      'deliveryID': deliveryID,
      'deliveryName': deliveryName,
      'deliveryTariffID': deliveryTariffID,
      'deliveryTariffName': deliveryTariffName,
      'deliveryTime': deliveryTime,
      'deliverySum': deliverySum,
      'deliveryTrack': deliveryTrack,
      'deliveryStatus': deliveryStatus,
      'userInfo': UserProfileStruct().toMap(),
      'isSetAddress': isSetAddress,
      'isSetDelivery': isSetDelivery,
      'isSetPayment': isSetPayment,
      'basketReference': basketReference,
      'recipientInfo': recipientInfo,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  // Handle nested data for "userInfo" field.
  addUserProfileStructData(firestoreData, userInfo, 'userInfo');

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.orderID == e2?.orderID &&
        e1?.orderTotal == e2?.orderTotal &&
        e1?.orderTotalR == e2?.orderTotalR &&
        e1?.orderDiscountSum == e2?.orderDiscountSum &&
        e1?.orderCouponsSum == e2?.orderCouponsSum &&
        e1?.orderDeliverySum == e2?.orderDeliverySum &&
        e1?.orderProductsKol == e2?.orderProductsKol &&
        e1?.paymentID == e2?.paymentID &&
        e1?.paymentName == e2?.paymentName &&
        e1?.paymentStatus == e2?.paymentStatus &&
        e1?.orderCouponsAbailable == e2?.orderCouponsAbailable &&
        e1?.orderPromocode == e2?.orderPromocode &&
        e1?.orderPromocodeSum == e2?.orderPromocodeSum &&
        e1?.deliveryID == e2?.deliveryID &&
        e1?.deliveryName == e2?.deliveryName &&
        e1?.deliveryTariffID == e2?.deliveryTariffID &&
        e1?.deliveryTariffName == e2?.deliveryTariffName &&
        e1?.deliveryTime == e2?.deliveryTime &&
        e1?.deliverySum == e2?.deliverySum &&
        e1?.deliveryTrack == e2?.deliveryTrack &&
        e1?.deliveryStatus == e2?.deliveryStatus &&
        listEquality.equals(e1?.orderProducts, e2?.orderProducts) &&
        e1?.userInfo == e2?.userInfo &&
        e1?.isSetAddress == e2?.isSetAddress &&
        e1?.isSetDelivery == e2?.isSetDelivery &&
        e1?.isSetPayment == e2?.isSetPayment &&
        e1?.basketReference == e2?.basketReference &&
        e1?.recipientInfo == e2?.recipientInfo &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.orderID,
        e?.orderTotal,
        e?.orderTotalR,
        e?.orderDiscountSum,
        e?.orderCouponsSum,
        e?.orderDeliverySum,
        e?.orderProductsKol,
        e?.paymentID,
        e?.paymentName,
        e?.paymentStatus,
        e?.orderCouponsAbailable,
        e?.orderPromocode,
        e?.orderPromocodeSum,
        e?.deliveryID,
        e?.deliveryName,
        e?.deliveryTariffID,
        e?.deliveryTariffName,
        e?.deliveryTime,
        e?.deliverySum,
        e?.deliveryTrack,
        e?.deliveryStatus,
        e?.orderProducts,
        e?.userInfo,
        e?.isSetAddress,
        e?.isSetDelivery,
        e?.isSetPayment,
        e?.basketReference,
        e?.recipientInfo,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}

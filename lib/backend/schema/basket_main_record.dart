import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BasketMainRecord extends FirestoreRecord {
  BasketMainRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_UID" field.
  String? _userUID;
  String get userUID => _userUID ?? '';
  bool hasUserUID() => _userUID != null;

  // "user_UID_SUL" field.
  String? _userUIDSUL;
  String get userUIDSUL => _userUIDSUL ?? '';
  bool hasUserUIDSUL() => _userUIDSUL != null;

  // "card_id_SUL" field.
  String? _cardIdSUL;
  String get cardIdSUL => _cardIdSUL ?? '';
  bool hasCardIdSUL() => _cardIdSUL != null;

  // "kol_products" field.
  int? _kolProducts;
  int get kolProducts => _kolProducts ?? 0;
  bool hasKolProducts() => _kolProducts != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  bool hasTotal() => _total != null;

  // "total_discount" field.
  int? _totalDiscount;
  int get totalDiscount => _totalDiscount ?? 0;
  bool hasTotalDiscount() => _totalDiscount != null;

  // "total_r" field.
  int? _totalR;
  int get totalR => _totalR ?? 0;
  bool hasTotalR() => _totalR != null;

  // "coupons_sum" field.
  int? _couponsSum;
  int get couponsSum => _couponsSum ?? 0;
  bool hasCouponsSum() => _couponsSum != null;

  // "coupons_list" field.
  List<String>? _couponsList;
  List<String> get couponsList => _couponsList ?? const [];
  bool hasCouponsList() => _couponsList != null;

  // "user_reference" field.
  DocumentReference? _userReference;
  DocumentReference? get userReference => _userReference;
  bool hasUserReference() => _userReference != null;

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
    _userUID = snapshotData['user_UID'] as String?;
    _userUIDSUL = snapshotData['user_UID_SUL'] as String?;
    _cardIdSUL = snapshotData['card_id_SUL'] as String?;
    _kolProducts = castToType<int>(snapshotData['kol_products']);
    _total = castToType<int>(snapshotData['total']);
    _totalDiscount = castToType<int>(snapshotData['total_discount']);
    _totalR = castToType<int>(snapshotData['total_r']);
    _couponsSum = castToType<int>(snapshotData['coupons_sum']);
    _couponsList = getDataList(snapshotData['coupons_list']);
    _userReference = snapshotData['user_reference'] as DocumentReference?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('basket_main');

  static Stream<BasketMainRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BasketMainRecord.fromSnapshot(s));

  static Future<BasketMainRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BasketMainRecord.fromSnapshot(s));

  static BasketMainRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BasketMainRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BasketMainRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BasketMainRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BasketMainRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BasketMainRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBasketMainRecordData({
  String? userUID,
  String? userUIDSUL,
  String? cardIdSUL,
  int? kolProducts,
  int? total,
  int? totalDiscount,
  int? totalR,
  int? couponsSum,
  DocumentReference? userReference,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_UID': userUID,
      'user_UID_SUL': userUIDSUL,
      'card_id_SUL': cardIdSUL,
      'kol_products': kolProducts,
      'total': total,
      'total_discount': totalDiscount,
      'total_r': totalR,
      'coupons_sum': couponsSum,
      'user_reference': userReference,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class BasketMainRecordDocumentEquality implements Equality<BasketMainRecord> {
  const BasketMainRecordDocumentEquality();

  @override
  bool equals(BasketMainRecord? e1, BasketMainRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userUID == e2?.userUID &&
        e1?.userUIDSUL == e2?.userUIDSUL &&
        e1?.cardIdSUL == e2?.cardIdSUL &&
        e1?.kolProducts == e2?.kolProducts &&
        e1?.total == e2?.total &&
        e1?.totalDiscount == e2?.totalDiscount &&
        e1?.totalR == e2?.totalR &&
        e1?.couponsSum == e2?.couponsSum &&
        listEquality.equals(e1?.couponsList, e2?.couponsList) &&
        e1?.userReference == e2?.userReference &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(BasketMainRecord? e) => const ListEquality().hash([
        e?.userUID,
        e?.userUIDSUL,
        e?.cardIdSUL,
        e?.kolProducts,
        e?.total,
        e?.totalDiscount,
        e?.totalR,
        e?.couponsSum,
        e?.couponsList,
        e?.userReference,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is BasketMainRecord;
}

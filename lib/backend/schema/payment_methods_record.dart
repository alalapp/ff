import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentMethodsRecord extends FirestoreRecord {
  PaymentMethodsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "paymentID" field.
  int? _paymentID;
  int get paymentID => _paymentID ?? 0;
  bool hasPaymentID() => _paymentID != null;

  // "paymentName" field.
  String? _paymentName;
  String get paymentName => _paymentName ?? '';
  bool hasPaymentName() => _paymentName != null;

  // "isCash" field.
  bool? _isCash;
  bool get isCash => _isCash ?? false;
  bool hasIsCash() => _isCash != null;

  // "isSplit" field.
  bool? _isSplit;
  bool get isSplit => _isSplit ?? false;
  bool hasIsSplit() => _isSplit != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _paymentID = castToType<int>(snapshotData['paymentID']);
    _paymentName = snapshotData['paymentName'] as String?;
    _isCash = snapshotData['isCash'] as bool?;
    _isSplit = snapshotData['isSplit'] as bool?;
    _active = snapshotData['active'] as bool?;
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('paymentMethods');

  static Stream<PaymentMethodsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentMethodsRecord.fromSnapshot(s));

  static Future<PaymentMethodsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentMethodsRecord.fromSnapshot(s));

  static PaymentMethodsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentMethodsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentMethodsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentMethodsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentMethodsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentMethodsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentMethodsRecordData({
  int? paymentID,
  String? paymentName,
  bool? isCash,
  bool? isSplit,
  bool? active,
  String? image,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'paymentID': paymentID,
      'paymentName': paymentName,
      'isCash': isCash,
      'isSplit': isSplit,
      'active': active,
      'image': image,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentMethodsRecordDocumentEquality
    implements Equality<PaymentMethodsRecord> {
  const PaymentMethodsRecordDocumentEquality();

  @override
  bool equals(PaymentMethodsRecord? e1, PaymentMethodsRecord? e2) {
    return e1?.paymentID == e2?.paymentID &&
        e1?.paymentName == e2?.paymentName &&
        e1?.isCash == e2?.isCash &&
        e1?.isSplit == e2?.isSplit &&
        e1?.active == e2?.active &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description;
  }

  @override
  int hash(PaymentMethodsRecord? e) => const ListEquality().hash([
        e?.paymentID,
        e?.paymentName,
        e?.isCash,
        e?.isSplit,
        e?.active,
        e?.image,
        e?.description
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentMethodsRecord;
}

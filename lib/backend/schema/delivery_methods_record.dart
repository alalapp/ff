import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeliveryMethodsRecord extends FirestoreRecord {
  DeliveryMethodsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "deliveryID" field.
  int? _deliveryID;
  int get deliveryID => _deliveryID ?? 0;
  bool hasDeliveryID() => _deliveryID != null;

  // "deliveryName" field.
  String? _deliveryName;
  String get deliveryName => _deliveryName ?? '';
  bool hasDeliveryName() => _deliveryName != null;

  // "external" field.
  bool? _external;
  bool get external => _external ?? false;
  bool hasExternal() => _external != null;

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
    _deliveryID = castToType<int>(snapshotData['deliveryID']);
    _deliveryName = snapshotData['deliveryName'] as String?;
    _external = snapshotData['external'] as bool?;
    _active = snapshotData['active'] as bool?;
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('deliveryMethods');

  static Stream<DeliveryMethodsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeliveryMethodsRecord.fromSnapshot(s));

  static Future<DeliveryMethodsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeliveryMethodsRecord.fromSnapshot(s));

  static DeliveryMethodsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeliveryMethodsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeliveryMethodsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeliveryMethodsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeliveryMethodsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeliveryMethodsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeliveryMethodsRecordData({
  int? deliveryID,
  String? deliveryName,
  bool? external,
  bool? active,
  String? image,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'deliveryID': deliveryID,
      'deliveryName': deliveryName,
      'external': external,
      'active': active,
      'image': image,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeliveryMethodsRecordDocumentEquality
    implements Equality<DeliveryMethodsRecord> {
  const DeliveryMethodsRecordDocumentEquality();

  @override
  bool equals(DeliveryMethodsRecord? e1, DeliveryMethodsRecord? e2) {
    return e1?.deliveryID == e2?.deliveryID &&
        e1?.deliveryName == e2?.deliveryName &&
        e1?.external == e2?.external &&
        e1?.active == e2?.active &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description;
  }

  @override
  int hash(DeliveryMethodsRecord? e) => const ListEquality().hash([
        e?.deliveryID,
        e?.deliveryName,
        e?.external,
        e?.active,
        e?.image,
        e?.description
      ]);

  @override
  bool isValidKey(Object? o) => o is DeliveryMethodsRecord;
}

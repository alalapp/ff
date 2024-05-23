import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class DeliveryPointsRecord extends FirestoreRecord {
  DeliveryPointsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "nearest_station" field.
  String? _nearestStation;
  String get nearestStation => _nearestStation ?? '';
  bool hasNearestStation() => _nearestStation != null;

  // "work_time" field.
  String? _workTime;
  String get workTime => _workTime ?? '';
  bool hasWorkTime() => _workTime != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "owner_code" field.
  String? _ownerCode;
  String get ownerCode => _ownerCode ?? '';
  bool hasOwnerCode() => _ownerCode != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "address_full" field.
  String? _addressFull;
  String get addressFull => _addressFull ?? '';
  bool hasAddressFull() => _addressFull != null;

  // "postal_code" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  bool hasPostalCode() => _postalCode != null;

  // "coordinates" field.
  LatLng? _coordinates;
  LatLng? get coordinates => _coordinates;
  bool hasCoordinates() => _coordinates != null;

  // "code_pvz" field.
  String? _codePvz;
  String get codePvz => _codePvz ?? '';
  bool hasCodePvz() => _codePvz != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _nearestStation = snapshotData['nearest_station'] as String?;
    _workTime = snapshotData['work_time'] as String?;
    _phone = snapshotData['phone'] as String?;
    _type = snapshotData['type'] as String?;
    _ownerCode = snapshotData['owner_code'] as String?;
    _city = snapshotData['city'] as String?;
    _address = snapshotData['address'] as String?;
    _addressFull = snapshotData['address_full'] as String?;
    _postalCode = snapshotData['postal_code'] as String?;
    _coordinates = snapshotData['coordinates'] as LatLng?;
    _codePvz = snapshotData['code_pvz'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('deliveryPoints');

  static Stream<DeliveryPointsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeliveryPointsRecord.fromSnapshot(s));

  static Future<DeliveryPointsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeliveryPointsRecord.fromSnapshot(s));

  static DeliveryPointsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeliveryPointsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeliveryPointsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeliveryPointsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeliveryPointsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeliveryPointsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeliveryPointsRecordData({
  String? name,
  String? nearestStation,
  String? workTime,
  String? phone,
  String? type,
  String? ownerCode,
  String? city,
  String? address,
  String? addressFull,
  String? postalCode,
  LatLng? coordinates,
  String? codePvz,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'nearest_station': nearestStation,
      'work_time': workTime,
      'phone': phone,
      'type': type,
      'owner_code': ownerCode,
      'city': city,
      'address': address,
      'address_full': addressFull,
      'postal_code': postalCode,
      'coordinates': coordinates,
      'code_pvz': codePvz,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeliveryPointsRecordDocumentEquality
    implements Equality<DeliveryPointsRecord> {
  const DeliveryPointsRecordDocumentEquality();

  @override
  bool equals(DeliveryPointsRecord? e1, DeliveryPointsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.nearestStation == e2?.nearestStation &&
        e1?.workTime == e2?.workTime &&
        e1?.phone == e2?.phone &&
        e1?.type == e2?.type &&
        e1?.ownerCode == e2?.ownerCode &&
        e1?.city == e2?.city &&
        e1?.address == e2?.address &&
        e1?.addressFull == e2?.addressFull &&
        e1?.postalCode == e2?.postalCode &&
        e1?.coordinates == e2?.coordinates &&
        e1?.codePvz == e2?.codePvz;
  }

  @override
  int hash(DeliveryPointsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.nearestStation,
        e?.workTime,
        e?.phone,
        e?.type,
        e?.ownerCode,
        e?.city,
        e?.address,
        e?.addressFull,
        e?.postalCode,
        e?.coordinates,
        e?.codePvz
      ]);

  @override
  bool isValidKey(Object? o) => o is DeliveryPointsRecord;
}

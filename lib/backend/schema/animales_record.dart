import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'animales_record.g.dart';

abstract class AnimalesRecord
    implements Built<AnimalesRecord, AnimalesRecordBuilder> {
  static Serializer<AnimalesRecord> get serializer =>
      _$animalesRecordSerializer;

  String? get name;

  String? get description;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'Imagen')
  String? get imagen;

  String? get nombrecompleto;

  String? get genomas;

  String? get especies;

  String? get despliegues;

  String? get imagenscanner;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AnimalesRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..imagen = ''
    ..nombrecompleto = ''
    ..genomas = ''
    ..especies = ''
    ..despliegues = ''
    ..imagenscanner = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Animales');

  static Stream<AnimalesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AnimalesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AnimalesRecord._();
  factory AnimalesRecord([void Function(AnimalesRecordBuilder) updates]) =
      _$AnimalesRecord;

  static AnimalesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAnimalesRecordData({
  String? name,
  String? description,
  DateTime? createdAt,
  String? imagen,
  String? nombrecompleto,
  String? genomas,
  String? especies,
  String? despliegues,
  String? imagenscanner,
}) {
  final firestoreData = serializers.toFirestore(
    AnimalesRecord.serializer,
    AnimalesRecord(
      (a) => a
        ..name = name
        ..description = description
        ..createdAt = createdAt
        ..imagen = imagen
        ..nombrecompleto = nombrecompleto
        ..genomas = genomas
        ..especies = especies
        ..despliegues = despliegues
        ..imagenscanner = imagenscanner,
    ),
  );

  return firestoreData;
}

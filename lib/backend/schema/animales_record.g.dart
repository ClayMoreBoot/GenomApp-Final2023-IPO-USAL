// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animales_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnimalesRecord> _$animalesRecordSerializer =
    new _$AnimalesRecordSerializer();

class _$AnimalesRecordSerializer
    implements StructuredSerializer<AnimalesRecord> {
  @override
  final Iterable<Type> types = const [AnimalesRecord, _$AnimalesRecord];
  @override
  final String wireName = 'AnimalesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AnimalesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('Imagen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombrecompleto;
    if (value != null) {
      result
        ..add('nombrecompleto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genomas;
    if (value != null) {
      result
        ..add('genomas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.especies;
    if (value != null) {
      result
        ..add('especies')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.despliegues;
    if (value != null) {
      result
        ..add('despliegues')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagenscanner;
    if (value != null) {
      result
        ..add('imagenscanner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AnimalesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnimalesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nombrecompleto':
          result.nombrecompleto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'genomas':
          result.genomas = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'especies':
          result.especies = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'despliegues':
          result.despliegues = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagenscanner':
          result.imagenscanner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AnimalesRecord extends AnimalesRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final DateTime? createdAt;
  @override
  final String? imagen;
  @override
  final String? nombrecompleto;
  @override
  final String? genomas;
  @override
  final String? especies;
  @override
  final String? despliegues;
  @override
  final String? imagenscanner;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AnimalesRecord([void Function(AnimalesRecordBuilder)? updates]) =>
      (new AnimalesRecordBuilder()..update(updates))._build();

  _$AnimalesRecord._(
      {this.name,
      this.description,
      this.createdAt,
      this.imagen,
      this.nombrecompleto,
      this.genomas,
      this.especies,
      this.despliegues,
      this.imagenscanner,
      this.ffRef})
      : super._();

  @override
  AnimalesRecord rebuild(void Function(AnimalesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimalesRecordBuilder toBuilder() =>
      new AnimalesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimalesRecord &&
        name == other.name &&
        description == other.description &&
        createdAt == other.createdAt &&
        imagen == other.imagen &&
        nombrecompleto == other.nombrecompleto &&
        genomas == other.genomas &&
        especies == other.especies &&
        despliegues == other.despliegues &&
        imagenscanner == other.imagenscanner &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, imagen.hashCode);
    _$hash = $jc(_$hash, nombrecompleto.hashCode);
    _$hash = $jc(_$hash, genomas.hashCode);
    _$hash = $jc(_$hash, especies.hashCode);
    _$hash = $jc(_$hash, despliegues.hashCode);
    _$hash = $jc(_$hash, imagenscanner.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnimalesRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('createdAt', createdAt)
          ..add('imagen', imagen)
          ..add('nombrecompleto', nombrecompleto)
          ..add('genomas', genomas)
          ..add('especies', especies)
          ..add('despliegues', despliegues)
          ..add('imagenscanner', imagenscanner)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AnimalesRecordBuilder
    implements Builder<AnimalesRecord, AnimalesRecordBuilder> {
  _$AnimalesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  String? _nombrecompleto;
  String? get nombrecompleto => _$this._nombrecompleto;
  set nombrecompleto(String? nombrecompleto) =>
      _$this._nombrecompleto = nombrecompleto;

  String? _genomas;
  String? get genomas => _$this._genomas;
  set genomas(String? genomas) => _$this._genomas = genomas;

  String? _especies;
  String? get especies => _$this._especies;
  set especies(String? especies) => _$this._especies = especies;

  String? _despliegues;
  String? get despliegues => _$this._despliegues;
  set despliegues(String? despliegues) => _$this._despliegues = despliegues;

  String? _imagenscanner;
  String? get imagenscanner => _$this._imagenscanner;
  set imagenscanner(String? imagenscanner) =>
      _$this._imagenscanner = imagenscanner;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AnimalesRecordBuilder() {
    AnimalesRecord._initializeBuilder(this);
  }

  AnimalesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _createdAt = $v.createdAt;
      _imagen = $v.imagen;
      _nombrecompleto = $v.nombrecompleto;
      _genomas = $v.genomas;
      _especies = $v.especies;
      _despliegues = $v.despliegues;
      _imagenscanner = $v.imagenscanner;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimalesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnimalesRecord;
  }

  @override
  void update(void Function(AnimalesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnimalesRecord build() => _build();

  _$AnimalesRecord _build() {
    final _$result = _$v ??
        new _$AnimalesRecord._(
            name: name,
            description: description,
            createdAt: createdAt,
            imagen: imagen,
            nombrecompleto: nombrecompleto,
            genomas: genomas,
            especies: especies,
            despliegues: despliegues,
            imagenscanner: imagenscanner,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RoutesAdapter extends TypeAdapter<Routes> {
  @override
  final int typeId = 2;

  @override
  Routes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Routes(
      id: fields[0] as String,
      name: fields[1] as String,
      driverId: fields[3] as String?,
      storeIds: (fields[4] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, Routes obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.driverId)
      ..writeByte(4)
      ..write(obj.storeIds);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoutesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

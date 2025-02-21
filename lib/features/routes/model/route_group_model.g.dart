// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_group_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RouteGroupModelAdapter extends TypeAdapter<RouteGroupModel> {
  @override
  final int typeId = 3;

  @override
  RouteGroupModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RouteGroupModel(
      asignedDriver: fields[0] as Driver?,
      groupName: fields[1] as String,
      routes: (fields[2] as List).cast<String>(),
      id: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RouteGroupModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.asignedDriver)
      ..writeByte(1)
      ..write(obj.groupName)
      ..writeByte(2)
      ..write(obj.routes)
      ..writeByte(3)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RouteGroupModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

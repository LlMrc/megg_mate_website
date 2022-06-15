// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clients_box.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClientBoxAdapter extends TypeAdapter<ClientBox> {
  @override
  final int typeId = 1;

  @override
  ClientBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClientBox()
      ..id = fields[0] as String?
      ..name = fields[1] as String
      ..mail = fields[2] as String
      ..technologie = fields[3] as String
      ..webColor = fields[4] as String
      ..comment = fields[5] as String
      ..company = fields[6] as String
      ..category = fields[7] as String;
  }

  @override
  void write(BinaryWriter writer, ClientBox obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.mail)
      ..writeByte(3)
      ..write(obj.technologie)
      ..writeByte(4)
      ..write(obj.webColor)
      ..writeByte(5)
      ..write(obj.comment)
      ..writeByte(6)
      ..write(obj.company)
      ..writeByte(7)
      ..write(obj.category);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

import 'dart:convert';

DeudoresModel deudoresModelFromJson(String str) => DeudoresModel.fromJson(json.decode(str));

String deudoresModelToJson(DeudoresModel data) => json.encode(data.toJson());

class DeudoresModel {
    final String nombre;
    final String apellido;
    final String direccion;
    final String telefono;

    DeudoresModel({
        required this.nombre,
        required this.apellido,
        required this.direccion,
        required this.telefono,
    });

    factory DeudoresModel.fromJson(Map<String, dynamic> json) => DeudoresModel(
        nombre: json["nombre"],
        apellido: json["apellido"],
        direccion: json["direccion"],
        telefono: json["telefono"],
    );

    Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "apellido": apellido,
        "direccion": direccion,
        "telefono": telefono,
    };
}
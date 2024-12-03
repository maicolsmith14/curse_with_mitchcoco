import 'dart:convert';

class Deudores {
  String? nombre;
  String? apellido;
  String? direccion;
  String? telefono;

  Deudores({
    this.nombre,
    this.apellido,
    this.direccion,
    this.telefono,
  });

  factory Deudores.fromRawJson(String str) => Deudores.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Deudores.fromJson(Map<String, dynamic> json) => Deudores(
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

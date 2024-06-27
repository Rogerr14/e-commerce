// To parse this JSON data, do
//
//     final authResponseModel = authResponseModelFromJson(jsonString);

import 'dart:convert';

AuthResponseModel authResponseModelFromJson(String str) => AuthResponseModel.fromJson(json.decode(str));

String authResponseModelToJson(AuthResponseModel data) => json.encode(data.toJson());

class AuthResponseModel {
    final String token;
    final String nombre;
    final String correo;
    final int rol;

    AuthResponseModel({
        required this.token,
        required this.nombre,
        required this.correo,
        required this.rol,
    });

    factory AuthResponseModel.fromJson(Map<String, dynamic> json) => AuthResponseModel(
        token: json["token"],
        nombre: json["nombre"],
        correo: json["correo"],
        rol: json["rol"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "nombre": nombre,
        "correo": correo,
        "rol": rol,
    };
}

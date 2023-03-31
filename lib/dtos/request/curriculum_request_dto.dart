// To parse this JSON data, do
//
//     final curriculumRequestDto = curriculumRequestDtoFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

CurriculumRequestDto curriculumRequestDtoFromJson(String str) => CurriculumRequestDto.fromJson(json.decode(str));

String curriculumRequestDtoToJson(CurriculumRequestDto data) => json.encode(data.toJson());

class CurriculumRequestDto {
    CurriculumRequestDto({
        required this.foto,
        required this.nombre,
        required this.apellidos,
        required this.telefono,
        required this.direccion,
        required this.codigoPostal,
        required this.localidad,
        required this.descripcion,
        required this.formacion,
        required this.institucion,
        required this.formacionLocalidad,
        required this.formacionFechaInicio,
        required this.fromacionFechaFin,
        required this.puesto,
        required this.empleador,
        required this.experienciaLocalidad,
        required this.experienciaFechaInicio,
        required this.experienciaFechaFin,
        required this.idioma,
    });

    final String foto;
    final String nombre;
    final String apellidos;
    final String telefono;
    final String direccion;
    final String codigoPostal;
    final String localidad;
    final String descripcion;
    final String formacion;
    final String institucion;
    final String formacionLocalidad;
    final String formacionFechaInicio;
    final String fromacionFechaFin;
    final String puesto;
    final String empleador;
    final String experienciaLocalidad;
    final String experienciaFechaInicio;
    final String experienciaFechaFin;
    final String idioma;

    factory CurriculumRequestDto.fromJson(Map<String, dynamic> json) => CurriculumRequestDto(
        foto: json["foto"],
        nombre: json["nombre"],
        apellidos: json["apellidos"],
        telefono: json["telefono"],
        direccion: json["direccion"],
        codigoPostal: json["codigoPostal"],
        localidad: json["localidad"],
        descripcion: json["descripcion"],
        formacion: json["formacion"],
        institucion: json["institucion"],
        formacionLocalidad: json["formacionLocalidad"],
        formacionFechaInicio: json["formacionFechaInicio"],
        fromacionFechaFin: json["fromacionFechaFin"],
        puesto: json["puesto"],
        empleador: json["empleador"],
        experienciaLocalidad: json["experienciaLocalidad"],
        experienciaFechaInicio: json["experienciaFechaInicio"],
        experienciaFechaFin: json["experienciaFechaFin"],
        idioma: json["idioma"],
    );

    Map<String, dynamic> toJson() => {
        "foto": foto,
        "nombre": nombre,
        "apellidos": apellidos,
        "telefono": telefono,
        "direccion": direccion,
        "codigoPostal": codigoPostal,
        "localidad": localidad,
        "descripcion": descripcion,
        "formacion": formacion,
        "institucion": institucion,
        "formacionLocalidad": formacionLocalidad,
        "formacionFechaInicio": formacionFechaInicio,
        "fromacionFechaFin": fromacionFechaFin,
        "puesto": puesto,
        "empleador": empleador,
        "experienciaLocalidad": experienciaLocalidad,
        "experienciaFechaInicio": experienciaFechaInicio,
        "experienciaFechaFin": experienciaFechaFin,
        "idioma": idioma,
    };
}

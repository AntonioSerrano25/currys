import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:proyecto_currys/dtos/response/curriculums_responseDto.dart';
import 'package:http/http.dart' as http;

class CurriculumsProviders extends ChangeNotifier {
  final logger = Logger();
  bool isloading = true;
  bool userFound = true;
  CurriculumResponseDto? _CurriculumResponseDto;
  // CurriculumResponseDto? get curriculumResponseDto => _CurriculumResponseDto;
  List<CurriculumResponseDto>? _curriculums;

  Future CreateCurriculum(
      String nombre,
      String apellidos,
      String telefono,
      String dirreccion,
      String codigoPostal,
      String descripccion,
      String formacion,
      String instucion,
      String formacionLocalidad,
      String fechaInicio,
      String fechaFin,
      String puesto,
      String empleador,
      String experinciaLocalidad,
      String experinciaFechaaIncio,
      String experinciaFechaaFin,
      String idioma,
      String localidad,
      BuildContext context) async {
    final create_curriculum = CurriculumResponseDto(
        nombre: nombre,
        apellidos: apellidos,
        telefono: telefono,
        direccion: dirreccion,
        codigoPostal: codigoPostal,
        localidad: localidad,
        descripcion: descripccion,
        formacion: formacion,
        institucion: instucion,
        formacionLocalidad: formacionLocalidad,
        formacionFechaInicio: fechaInicio,
        fromacionFechaFin: fechaFin,
        puesto: puesto,
        empleador: empleador,
        experienciaLocalidad: experinciaLocalidad,
        experienciaFechaInicio: experinciaFechaaIncio,
        experienciaFechaFin: experinciaFechaaFin,
        idioma: idioma);
    final response = await http
        .post(Uri.parse('http://currysapi.somee.com/api/curriculums'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body:  jsonEncode(create_curriculum));
  }
}

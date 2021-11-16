import 'dart:async';

import 'package:day33/Animation/FadeAnimation.dart';
import 'package:day33/pages/profile.dart';
import 'package:day33/services/api_service.dart';
import 'package:day33/services/medicos.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class RegisterNacionalPage extends StatefulWidget {
  const RegisterNacionalPage({Key? key}) : super(key: key);

  @override
  _RegisterNacionalPageState createState() => _RegisterNacionalPageState();
}

class _RegisterNacionalPageState extends State<RegisterNacionalPage> {
  int activeStatus = 0;
  TextEditingController NombreController = TextEditingController();
  TextEditingController EspecialidadController = TextEditingController();
  TextEditingController EspecialidadIdController = TextEditingController();
  TextEditingController CelularController = TextEditingController();
  TextEditingController DireccionController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController SeguroIdController = TextEditingController();
  Medicos medico = Medicos();
  ApiServices apiServices = ApiServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Nacional',
          style: TextStyle(color: Colors.black),
        ),
        leading: BackButton(color: Colors.black),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                    1,
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('Registro de nuevo doctor',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    )),

                //Espacio

                SizedBox(height: 20),
                TextField(
                  controller: NombreController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    hintText: "Nombre",
                    border: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                //Espacio

                SizedBox(height: 20),
                TextField(
                  controller: EspecialidadController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    hintText: "Especialidad",
                    border: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                //Espacio
                SizedBox(height: 20),
                TextField(
                  controller: SeguroIdController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    hintText: "Seguro 1 Puede ser 1 2 3",
                    border: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                TextField(
                  controller: DireccionController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    hintText: "Dirección",
                    border: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                //Espacio

                SizedBox(height: 20),
                TextField(
                  controller: CelularController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    hintText: "Celular",
                    border: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  width: 200.0,
                  child: ElevatedButton(
                    onPressed: () async {
                      medico.nombreDoctor = NombreController.text.toString();
                      medico.especialidad =
                          EspecialidadController.text.toString();
                      medico.seguroId =
                          int.parse(SeguroIdController.text.toString());
                      medico.direccion = DireccionController.text.toString();
                      medico.celular =
                          int.parse(CelularController.text.toString());
                      apiServices.postMedico(medico);
                    },
                    child: Text('Registrar doctor'),
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

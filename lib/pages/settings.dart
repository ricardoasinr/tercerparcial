import 'dart:async';

import 'package:day33/Animation/FadeAnimation.dart';
import 'package:day33/pages/profile.dart';
import 'package:day33/services/api_service.dart';
import 'package:day33/services/medicos.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  Medicos medicos;
  SettingsPage(this.medicos);
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int activeStatus = 0;
  TextEditingController NombreController = TextEditingController();

  TextEditingController EspecialidadController = TextEditingController();
  TextEditingController DOCTORIDController = TextEditingController();
  TextEditingController CelularController = TextEditingController();
  TextEditingController DireccionController = TextEditingController();
  TextEditingController SeguroIdController = TextEditingController();
  Medicos medico = Medicos();
  ApiServices apiServices = ApiServices();

  @override
  void initState() {
    super.initState();
    NombreController.text = widget.medicos.nombreDoctor.toString();
    EspecialidadController.text = widget.medicos.especialidad.toString();
    //DoctorID
    DOCTORIDController.text = widget.medicos.especialidadId.toString();
    CelularController.text = widget.medicos.celular.toString();
    DireccionController.text = widget.medicos.direccion.toString();
    SeguroIdController.text = widget.medicos.seguroId.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Editando información',
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
                      child: Text('Editar de nuevo doctor',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    )),

                SizedBox(height: 30.0),
                TextField(
                  controller: DOCTORIDController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    hintText: "Doctor ID",
                    fillColor: Colors.white,
                    border: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                TextField(
                  
                  controller: SeguroIdController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    hintText: "Número de especialidad",
                    fillColor: Colors.white,
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
                      medico.seguroId = int.parse(SeguroIdController.text.toString());

                      medico.direccion = DireccionController.text.toString();
                      medico.celular =
                          int.parse(CelularController.text.toString());
                      medico.especialidad =
                          EspecialidadController.text.toString();
                      medico.especialidadId =
                          int.parse(DOCTORIDController.text.toString());
                      await apiServices.putMedico(
                          int.parse(DOCTORIDController.text.toString()), medico);
                    },
                    child: Text('Editar doctor'),
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

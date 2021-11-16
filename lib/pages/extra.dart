import 'package:day33/pages/Alianza/editalianza.dart';
import 'package:flutter/material.dart';
import "package:day33/services/api_service.dart";
import 'package:day33/services/medicos.dart';


// ignore: must_be_immutable
class MedicosDetails extends StatefulWidget {
  Medicos medico;
  MedicosDetails(this.medico);
  @override
  _MedicosDetailsState createState() => _MedicosDetailsState();
}

class _MedicosDetailsState extends State<MedicosDetails> {
  final ApiServices apiServices = ApiServices();
  @override
  Widget build(BuildContext context) {
    int? id = widget.medico.especialidadId;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detalles de entrada",
          style: TextStyle(
            color: Color(0xFF356859),
          ),
        ),
        //iconTheme: IconThemeData(color: Color(0xFF356859)),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xFFFFFBE6),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        color: Color(0xFF356859),
        child: Card(
          color: Color(0xFFFFFBE6),
          child: Container(
            padding: EdgeInsets.all(10.0),
            width: 440.0,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.person,
                        size: 50.0,
                      ),
                      Text(
                        'Nombre: ',
                        style: TextStyle(
                          color: Color(0xFF356859),
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        widget.medico.nombreDoctor.toString(),
                        style: TextStyle(
                          color: Color(0xFF356859),
                          fontSize: 25.0,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
                  child: Column(
                    children: [
                      Text(
                        'Especialidad ',
                        style: TextStyle(
                          color: Color(0xFF356859),
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        widget.medico.especialidad.toString(),
                        style: TextStyle(
                          color: Color(0xFF356859),
                          fontSize: 25.0,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.card_membership,
                        size: 50.0,
                      ),
                      Text(
                        'Doctor ID: ',
                        style: TextStyle(
                          color: Color(0xFF356859),
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        widget.medico.especialidadId.toString(),
                        style: TextStyle(
                          color: Color(0xFF356859),
                          fontSize: 25.0,
                        ),
                      ),
                    ],
                  ),
                ),
                
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
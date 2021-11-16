import 'package:day33/pages/profile.dart';
import "package:day33/services/api_service.dart";
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:day33/services/medicos.dart';
//import 'details.dart';

// ignore: must_be_immutable
class MedicosListView extends StatefulWidget {
  int? id_seguros;
  MedicosListView(this.id_seguros);
  

  @override
  State<MedicosListView> createState() => _MedicosListViewState();
}

class _MedicosListViewState extends State<MedicosListView> {
  final ApiServices apiServices = ApiServices();

  refreshState() {
    MedicosListView(widget.id_seguros);
  }

  @override
  Widget build(BuildContext context) {
    ListTile _tile(int? especialidadId, int? seguroId, String? nombreDoctor,
        String? especialidad, String? direccion, int? celular) {
      Medicos medicos = Medicos.newMedicos(especialidadId!, seguroId!,
          nombreDoctor!, especialidad!, direccion!, celular!);
      return ListTile(
        title: Text(
          nombreDoctor,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.0,
          ),
        ),
        subtitle: Text(
          'Especialidad: ' +
              especialidad.toString() +
              "\nDoctor ID: ${especialidadId}",
          style: TextStyle(fontSize: 15.0),
        ),
        isThreeLine: true,
        leading: Icon(
          Icons.person,
          color: Color(0XFF1B3FA1),
          size: 45.0,
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Color(0xFF356859),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePage(medicos, especialidadId)),
          ).then((value) => refreshState());
        },
      );
    }

    ListView _medicosListView(data) {
      return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            if (data[index].seguroId == widget.id_seguros)
              return _tile(
                data[index].especialidadId,
                data[index].seguroId,
                data[index].nombreDoctor,
                data[index].especialidad,
                data[index].direccion,
                data[index].celular,
              );
            else {
              return SizedBox(height: 0, width: 0,);
            }
          });
    }

    return FutureBuilder<List<Medicos>>(
      future: apiServices.getMedicos(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Medicos>? data = snapshot.data;
          return _medicosListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }
}

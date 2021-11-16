import 'package:day33/Animation/FadeAnimation.dart';
import 'package:day33/pages/settings.dart';
import 'package:day33/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:day33/services/medicos.dart';
import 'package:http/http.dart' as http;

class ProfilePage extends StatefulWidget {
  //const ProfilePage(Medicos medicos, {Key? key}) : super(key: key);
  Medicos medico;
  int id;
  ProfilePage(this.medico, this.id);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController NombreController = TextEditingController();
  TextEditingController EspecialidadController = TextEditingController();
  TextEditingController CelularController = TextEditingController();
  TextEditingController DireccionController = TextEditingController();
  TextEditingController idController = TextEditingController();

  actualizar(
      Medicos data,
      TextEditingController Nombre,
      TextEditingController Especialidad,
      TextEditingController Celular,
      TextEditingController Direccion,
      TextEditingController id) {
    Nombre.text = data.nombreDoctor.toString();
    Especialidad.text = data.especialidad.toString();
    Celular.text = data.celular.toString();
    Direccion.text = data.direccion.toString();
    id.text = data.especialidadId.toString();
  }

  ApiServices apiServices = ApiServices();

  List<String> posts = [
    'https://cdn.dribbble.com/users/6047818/screenshots/16425364/media/a855b66a9d41c79ef04ba5dd258516ef.png?compress=1&resize=1200x900',
    'https://cdn.dribbble.com/users/6228692/screenshots/16452651/media/f0c5644c6686695f873f94294d6e2872.png?compress=1&resize=1200x900',
    'https://cdn.dribbble.com/users/1187002/screenshots/16387491/media/15a6b53012791aeabe8debc092dbab5f.jpg?compress=1&resize=1200x900',
    'https://cdn.dribbble.com/users/1962534/screenshots/16431541/media/7324634fc6300cff2ef93023f04b44c2.jpg?compress=1&resize=1200x900',
    'https://cdn.dribbble.com/users/1615584/screenshots/16364085/media/f7a6bb29101ab59b53c72aba06f890dc.jpg?compress=1&resize=1200x900',
    'https://cdn.dribbble.com/users/427857/screenshots/16434886/media/ae5f9ae8ef9dd88d9b51221d04e9b368.png?compress=1&resize=1200x900',
    'https://cdn.dribbble.com/users/2564256/screenshots/16375491/media/895c28ea1efd9423393a85c291c94ae6.png?compress=1&resize=1200x900',
    'https://cdn.dribbble.com/users/2564256/screenshots/16421629/media/fa97071b5dd84f924d6cda859e758648.png?compress=1&resize=1200x900',
    'https://cdn.dribbble.com/users/1126935/screenshots/16438160/media/02e1bfa43512c40bd19be76fe53391f6.png?compress=1&resize=1200x900',
    'https://cdn.dribbble.com/users/2019344/screenshots/16425765/media/4ae7436b13d722ae28741508788ca425.png?compress=1&resize=1200x900'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Perfil del doctor",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: BackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SettingsPage(widget.medico)),
                );
              },
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ))
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              FadeAnimation(
                  1.2,
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.grey.shade300, width: 5)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(300),
                        child: Image.network(
                            'https://media.istockphoto.com/photos/portrait-of-mature-male-doctor-wearing-white-coat-standing-in-picture-id1203995945?k=20&m=1203995945&s=612x612&w=0&h=g0_ioNezBqP0NXrR_36-A5NDHIR0nLabFFrAQVk4PhA='),
                      ),
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              FadeAnimation(
                  1.3,
                  Text(
                    "Dr: " + widget.medico.nombreDoctor.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  )),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              FadeAnimation(
                  1.3,
                  Text(
                    "Dirección:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
              FadeAnimation(
                  1.2,
                  Text(
                    widget.medico.direccion.toString(),
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )),
              SizedBox(
                height: 20,
              ),
              SizedBox(height: 40),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FadeAnimation(
                            1.2,
                            Column(
                              children: [
                                Text(
                                  widget.medico.especialidadId.toString(),
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "ID",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )),
                        FadeAnimation(
                            1.5,
                            Column(
                              children: [
                                Text(
                                  widget.medico.especialidad.toString(),
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Especialidad",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )),
                        FadeAnimation(
                          1.6,
                          Column(
                            children: [
                              Text(
                                widget.medico.celular.toString(),
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Celular",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])),
              SizedBox(
                height: 20,
              ),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ]),
    );
  }
}

import 'dart:async';

import 'package:day33/Animation/FadeAnimation.dart';
import 'package:day33/pages/profile.dart';
import 'package:flutter/material.dart';

class EditRegisterBisaPage extends StatefulWidget {
  const EditRegisterBisaPage({Key? key}) : super(key: key);

  @override
  _EditRegisterBisaPageState createState() =>
      _EditRegisterBisaPageState();
}

class _EditRegisterBisaPageState extends State<EditRegisterBisaPage> {
  int activeStatus = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Bisa',
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
                      child: Text('Editar doctor',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    )),

                SizedBox(height: 30.0),
                TextField(
                  //controller: numberLuckyController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
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
                  //controller: numberLuckyController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
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
                  //controller: luckyController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
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
                  //controller: luckyController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
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
                  //controller: luckyController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
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
                  //controller: luckyController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
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
                      //Info data = await apiService.getResponse();
                      //actualizar(data, numberLuckyController, luckyController);
                    },
                    child: Text('Editar doctor'),
                    style: ElevatedButton.styleFrom(primary: Colors.red),
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

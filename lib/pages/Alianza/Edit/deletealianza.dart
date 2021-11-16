import 'dart:async';

import 'package:day33/Animation/FadeAnimation.dart';
import 'package:day33/pages/profile.dart';
import 'package:day33/services/api_service.dart';
import 'package:flutter/material.dart';

class DeleteRegisterAlianzaPage extends StatefulWidget {
  const DeleteRegisterAlianzaPage({Key? key}) : super(key: key);

  @override
  _DeleteRegisterAlianzaPageState createState() => _DeleteRegisterAlianzaPageState();
}

class _DeleteRegisterAlianzaPageState extends State<DeleteRegisterAlianzaPage> {
  int activeStatus = 0;
   TextEditingController idController = TextEditingController();
  ApiServices apiServices = ApiServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Alianza',
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
                SizedBox(height: 30,),
            FadeAnimation(1, Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Eliminar registro del doctor',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
              ),
            )),
                SizedBox(height: 30.0),
                TextField(
                  controller: idController,
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
                Container(
                  width: 200.0,
                  child: ElevatedButton(
                    onPressed: () async {
                      apiServices.deleteMedico(
                      int.parse(idController.text.toString()));
                      
                    },
                    child: Text('Eliminar doctor'),
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

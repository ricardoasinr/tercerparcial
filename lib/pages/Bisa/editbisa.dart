import 'dart:async';

import 'package:day33/Animation/FadeAnimation.dart';
import 'package:day33/pages/Alianza/Edit/deletealianza.dart';
import 'package:day33/pages/Alianza/Edit/editregister.dart';
import 'package:day33/pages/Alianza/Edit/registeralianzapage.dart';
import 'package:day33/pages/Bisa/Edit/deletebisa.dart';
import 'package:day33/pages/Bisa/Edit/editregister.dart';
import 'package:day33/pages/Bisa/Edit/registerbisapage.dart';
import 'package:day33/pages/profile.dart';
import 'package:flutter/material.dart';

class EditBisaPage extends StatefulWidget {
  const EditBisaPage({Key? key}) : super(key: key);

  @override
  _EditBisaPageState createState() => _EditBisaPageState();
}

class _EditBisaPageState extends State<EditBisaPage> {
  int activeStatus = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Editando Bisa',
          style: TextStyle(color: Colors.black),
        ),
        leading: BackButton(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  FadeAnimation(
                      1.2,
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                            'https://scontent.fsrz1-2.fna.fbcdn.net/v/t1.6435-9/181610633_4688541927842475_4286000254950554553_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=DJV_mLlTiCgAX_oobGv&_nc_ht=scontent.fsrz1-2.fna&oh=4350339e3d3907b65995ebf227691409&oe=61B003D1'),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(
                          1.2,
                          Text(
                            'Bisa',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      FadeAnimation(
                          1.2,
                          Text(
                            "Seguro nacional",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FadeAnimation(
                1,
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Modificar',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  FadeAnimation(
                      1.2,
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey[200],
                        //backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/2910/2910768.png'),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(
                          1.2,
                          Text(
                            'Nuevo registro',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      FadeAnimation(
                          1.2,
                          Text(
                            "M??dico",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          )),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterBisaPage()));
                        },
                        icon: FadeAnimation(
                            1,
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.red,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  FadeAnimation(
                      1.2,
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/1159/1159633.png'),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(
                          1.2,
                          Text(
                            'Editar registro',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      FadeAnimation(
                          1.2,
                          Text(
                            "M??dico",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          )),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EditRegisterBisaPage()));
                        },
                        icon: FadeAnimation(
                            1,
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.red,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  FadeAnimation(
                      1.2,
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey[200],
                        //backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/2910/2910768.png'),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(
                          1.2,
                          Text(
                            'Eliminar registro',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      FadeAnimation(
                          1.2,
                          Text(
                            "M??dico",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          )),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DeleteRegisterBisaPage()));
                        },
                        icon: FadeAnimation(
                            1,
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.red,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

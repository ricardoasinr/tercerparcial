import 'dart:async';

import 'package:day33/Animation/FadeAnimation.dart';
import 'package:day33/pages/Nacional/Edit/deletenacional.dart';
import 'package:day33/pages/Nacional/Edit/editregister.dart';
import 'package:day33/pages/Nacional/Edit/registernacionalpage.dart';
import 'package:day33/pages/Nacional/editnacional.dart';
import 'package:day33/pages/doctorespage.dart';
import 'package:day33/pages/profile.dart';
import 'package:day33/services/medicos.dart';
import 'package:flutter/material.dart';

class NacionalPage extends StatefulWidget {
  const NacionalPage({Key? key}) : super(key: key);

  @override
  _NacionalPageState createState() => _NacionalPageState();
}

class _NacionalPageState extends State<NacionalPage> {
  int activeStatus = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Nacional Seguros',
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
                            'https://scontent.fsrz1-2.fna.fbcdn.net/v/t1.6435-9/107528610_3110186419072456_1960063996195045747_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=yrj190G46YIAX9tm7U3&_nc_ht=scontent.fsrz1-2.fna&oh=e097f8030eea569f192a3b6af510bb5b&oe=61AFAF4C'),
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
                            'Nacional seguros',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      FadeAnimation(
                          1.2,
                          Text(
                            "Bolivia",
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
                                  builder: (context) => EditNacionalPage()));
                        },
                        icon: FadeAnimation(
                            1,
                            Icon(
                              Icons.mode_edit_outline_outlined,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                  )
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
                  child: Text('Doctores',
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
                        backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-psd/doctor-with-his-arms-crossed-white-background_1368-22255.jpg?size=338&ext=jpg'),
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
                            'Ver más ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      FadeAnimation(
                          1.2,
                          Text(
                            "Todos los doctores",
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
                                  builder: (context) => DoctoresPage(2)));
                        },
                        icon: FadeAnimation(
                            1,
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.blue[200],
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  FadeAnimation(
                      1.2,
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.blue,
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
                            "Médico",
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
                                  builder: (context) =>
                                      RegisterNacionalPage()));
                        },
                        icon: FadeAnimation(
                            1,
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.blue[200],
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
                        backgroundColor: Colors.blue,
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
                            "Médico",
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
                                  builder: (context) =>
                                      DeleteRegisterNacionalPage()));
                        },
                        icon: FadeAnimation(
                            1,
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.blue[200],
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

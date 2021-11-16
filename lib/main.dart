import 'dart:async';

import 'package:day33/Animation/FadeAnimation.dart';
import 'package:day33/pages/Alianza/alianzapage.dart';
import 'package:day33/pages/doctorespage.dart';
import 'package:day33/pages/Bisa/bisapage.dart';
import 'package:day33/pages/Nacional/nacionalpage.dart';
import 'package:day33/pages/profile.dart';
import 'package:day33/pages/settings.dart';
import 'package:drawing_animation/drawing_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    'Todos',
    'Pediatria',
    'Psicologia',
    'Urologia',
    'Cardiologia'
  ];

  int activeTab = 0;
  bool run = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //  // MaterialPageRoute(builder: (context) => ProfilePage()),
              // );
            },
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                      'https://lh3.googleusercontent.com/a-/AOh14GiG9_IdAaVPHPeAWATQc2JJMCaAGyRoVRCNO7B_eQ=s128-p-k-rw-no'),
                )),
          )
        ],
        title: Container(
          height: 45,
          child: TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              filled: true,
              fillColor: Colors.grey.shade200,
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none),
              hintText: "Buscar especialidad",
              hintStyle: TextStyle(fontSize: 14),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 150,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FadeAnimation(
                        1,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lo mas importante es',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'la salud',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                          ],
                        )),
                    FadeAnimation(
                        1,
                        Container(
                            width: 100,
                            child: Image.network(
                                "https://freesvg.org/img/1533845191.png")))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: 300.0,
                        child: ElevatedButton(
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BisaPage()),
                            );
                          },
                          child: Text('BISA'),
                          style: ElevatedButton.styleFrom(primary: Colors.red),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        child: ElevatedButton(
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NacionalPage()),
                            );
                          },
                          child: Text('Nacional seguros'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue[600]),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        child: ElevatedButton(
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AlianzaPage()),
                            );
                          },
                          child: Text('Alianza'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue[600]),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),

              /*
              FadeAnimation(
                  1.2,
                  Container(
                    height: 40,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return Center(
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 8),
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: activeTab == index
                                          ? Colors.blue
                                          : Colors.grey.shade200),
                                  child: Text(
                                    categories[index],
                                    style: TextStyle(
                                        color: activeTab == index
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                )),
                          );
                        }),
                  )),*/

              SizedBox(
                height: 30,
              ),
              post(1.2,
                  'https://plustatic.com/43/conversions/ramas-medicina-social.jpg'),
              post(1.3,
                  'https://blog.ida.cl/wp-content/uploads/sites/5/2020/03/medicina-tecnologia-blog.png'),
            ],
          ),
        ),
      ),
    );
  }

  post(delay, image) {
    return FadeAnimation(
        delay,
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(image),
          ),
        ));
  }
}

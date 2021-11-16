import 'dart:async';

import 'package:day33/Animation/FadeAnimation.dart';
import 'package:day33/pages/Alianza/editalianza.dart';
import 'package:day33/pages/Alianza/Edit/registeralianzapage.dart';
import 'package:day33/pages/doclistview.dart';
import 'package:day33/pages/profile.dart';
import 'package:flutter/material.dart';

class DoctoresPage extends StatefulWidget {
  int id_seguros;
  DoctoresPage(this.id_seguros);

  @override
  _DoctoresPageState createState() => _DoctoresPageState();
}

class _DoctoresPageState extends State<DoctoresPage> {
  int activeStatus = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Doctores',
            style: TextStyle(color: Colors.black),
          ),
          leading: BackButton(color: Colors.black),
        ),
        body: MedicosListView(widget.id_seguros));
  }
}

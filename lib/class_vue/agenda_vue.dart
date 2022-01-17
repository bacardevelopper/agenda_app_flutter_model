// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:agenda_flutter/functions_agenda/agenda_function.dart';

class AgendaVue extends StatefulWidget {
  @override
  _AgendaVue createState() => _AgendaVue();
}

class _AgendaVue extends State<AgendaVue> {
  // # variables
  var bordure = Radius.circular(10.0);
  late TextEditingController _controllerJours;
  late TextEditingController _controllerMois;

  @override
  void initState() {
    super.initState();
    _controllerJours = TextEditingController();
    _controllerMois = TextEditingController();
  }

  @override
  void dispose() {
    _controllerJours.dispose();
    _controllerMois.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.1,
      height: MediaQuery.of(context).size.height / 1.7,
      child: border_radiusContainer(),
    );
  }

  Widget border_radiusContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: bordure,
          bottomLeft: bordure,
          topRight: bordure,
          bottomRight: bordure,
        ),
      ),
      child: lecolumnWidget(),
    );
  }

  Widget affichageInfos() {
    return Container(
      height: MediaQuery.of(context).size.width / 2,
      width: MediaQuery.of(context).size.height / 2.5,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.only(
          topLeft: bordure,
          bottomLeft: bordure,
          topRight: bordure,
          bottomRight: bordure,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              height: 10.0,
            ),
            text_fieldJours(),
            Container(
              height: 20.0,
            ),
            text_fieldMois(),
          ],
        ),
      ),
    );
  }

  Widget lecolumnWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        affichageInfos(),
        Container(
          height: 20.0,
        ),
        button_deColumn(),
      ],
    );
  }

  Widget text_fieldJours() {
    return TextField(
      controller: _controllerJours,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'jours',
      ),
    );
  }

  Widget text_fieldMois() {
    return TextField(
      controller: _controllerMois,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'mois',
      ),
    );
  }

  Widget button_deColumn() {
    return Container(
      height: 40.0,
      width: MediaQuery.of(context).size.width / 2,
      child: TextButton(
        child: Text(
          "Ajouter elt",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 17.0,
          ),
        ),
        onPressed: () {
          ajouterCalandar(_controllerJours.text, _controllerMois.text);
        },
      ),
      color: Colors.yellow,
    );
  }
}

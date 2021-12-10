import 'package:cryptobas/pages/criptoMoedas.dart';
import 'package:cryptobas/pages/home.dart';
import 'package:cryptobas/pages/loading.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(

    home: Home(),

    initialRoute: '/home',
    routes: {

      '/home': (context) => Home(),
      '/Loading': (context) => Loading(),
      '/criptoMoedas': (context) => CriptoMoeda(),
    }
  )
);


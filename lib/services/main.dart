import 'package:cryptobas/pages/criptoMoedas.dart';
import 'package:cryptobas/pages/home.dart';
import 'package:cryptobas/pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:cryptobas/screens/conversao.dart';
import 'package:cryptobas/screens/noticias.dart';

void main() => runApp(MaterialApp(

    initialRoute: '/home',
    routes: {

      '/home': (context) => Home(),
      '/Loading': (context) => Loading(),
      '/criptoMoedas': (context) => CriptoMoeda(),
    }
  )
);
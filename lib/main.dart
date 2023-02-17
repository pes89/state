//Importo los archivos dart que vamos a usar
import 'package:flutter/material.dart';
import 'date_screen.dart';
import 'alert_screen.dart';
import 'switch_screen.dart';
import 'slider_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Creo el controlador de pestañas
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              bottom: const TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.date_range),
                  text: "Date",
                ),
                Tab(
                  icon: Icon(Icons.report_problem),
                  text: "Alert",
                ),
                Tab(
                  icon: Icon(Icons.swipe),
                  text: "Switch",
                ),
                Tab(
                  icon: Icon(Icons.touch_app),
                  text: "Slider",
                ),
              ]),
              title: const Center(
                  child: Text(
                "Stateful vs Stateless",
                textAlign: TextAlign.center,
              ))),
          //Para cada pestaña añado la clase que está creada en cada archivo dart
          body: TabBarView(
            children: <Widget>[
              DateContent(),
              AlertContent(),
              SwitchContent(),
              SliderContent(),
            ],
          ),
        ),
      ),
    );
  }
}

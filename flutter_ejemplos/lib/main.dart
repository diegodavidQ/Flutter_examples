import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
      home: Container(
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisSize: MainAxisSize.min, //centrado
              children: <Widget>[
                Icon(Icons.wb_cloudy),
                SizedBox(width: 8.0),
                Text("Mi aplicación"),
              ],
            ),
          ),
          body: HomePage(),
        )
      )
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        header(),
        list(),
      ],
    );
  }


  Widget header(){
    return Stack(
      children: <Widget>[
        Container(
            height: 100.0,
            width: double.infinity, //all width
            child: Image.network('https://static1.squarespace.com/static/59a706d4f5e2319b70240ef9/t/5a7a3f018165f5e5566ca3e6/1517961006265/AdobeStock_54132491.jpeg',
            fit: BoxFit.cover,
            )
        ),
        Container(
          height: 100.0,
          width: double.infinity,
          color: Colors.black38,
        ),
        Positioned(
            left: 16.0,
            top: 16.0,
            child: Text(
                'Diego David',
            style: TextStyle(
                fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            )
        ),
        Positioned(
          right: 8.0,
          bottom: 8.0,
          child: Text('29C',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }

  Widget list(){
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        children: <Widget>[
          dayWidget('Lunes', Icons.wb_sunny, '29C'),
          dayWidget('Martes', Icons.wb_cloudy, '20C'),
          dayWidget('Miércoles', Icons.wb_cloudy, '18C'),
          dayWidget('Jueves', Icons.wb_sunny, '28C'),
          dayWidget('Viernes', Icons.wb_cloudy, '21C'),
          dayWidget('Sábado', Icons.wb_sunny, '27C'),
          dayWidget('Domingo', Icons.wb_sunny, '28C'),
        ],
      ),
    );
  }

  Widget dayWidget(String day, IconData iconData, String temp){
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(day),
            Icon(iconData),
            Text(temp)
          ],
        ),
      )
    );
  }
}

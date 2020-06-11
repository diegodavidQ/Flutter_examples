# Flutter

## Creando aplicaciones

Cuando creamos el proyecto en Android Studio, iniciará con un código inicial. Lo borramos y dejamos el siguiente.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(Text("Hola soy Diego"));
}
```

Si ejecutamos nos saldrá un mensaje de error, que necesita un padre que tenga una dirección.

Si ubicamos nuestro cursos en el widget text y presionamos `Alt+Enter` podremos escoger la opción de envolverlo en un Widget `Wrap with widget...` y para este ejemplo escribimos Directionality.

```dart
void main() => runApp(
    Directionality(
      textDirection: TextDirection.ltr,
        child: Text("Hola soy Diego")
    )
);
```

Centramos el widget con `Center`

```dart
void main() => runApp(
    Directionality(
        textDirection: TextDirection.ltr,
        child: Center(
            child: Text("Hola soy Diego")
        )
    )
);
```

Usaremos la librería material que nos ayudará a construir de mejor manera la aplicación.

Ìnicaremos con un `StatelessWidget` que no tiene estado.

```dart
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    );
  }
}
```

## Aplicación #1

Aplicación sencilla de tiempo:

```dart
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

```

<p align="center">
	<img src="screenshots/wheater.PNG" width="400">
</p>

**Repositorio:** [wheater](https://github.com/diegodavidQ/Flutter_examples/repository/weather.dart)

## Aplicación #2

Inicamos colocando un color de fondo a la aplicación.

```dart
const backgroundColor = Color(0xff5E37DB);


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
                  
      )
    );
  }
}

```

En el archivo `pubspec.yaml` configuramos en `assets` los archivos que estan dentro de nuestra aplicación.

En esta ocasión colocamos una imagen de un avatar. Creamos un directorio llamado `assets` y dentro de este colocamos las imagenes que usaremos.


```dart
assets:
    - assets/avatar1.png
    - assets/avatar2.png
```

### AppBar

```dart
appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Row(
          children: <Widget>[
            SizedBox(width: 32.0),
            Icon(Icons.arrow_back_ios),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.green.withOpacity(0.3),
              ),
              child: MaterialButton(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.check,
                    color: Colors.green,
                    ),
                    SizedBox(width: 12.0,),
                    Text('Friends',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.green,
                    ),)
                  ],
                )
              ),
            ),
          )
        ],
      ),
```

### Body

Para el body crearemos los Widgets:

```dart
 body: Column(
          children: <Widget>[
            userWidget(),
            pointsWidget(),
            graphWidget(),
            FriendsWidget(),
          ],
        )
```

Dentro de la clase instanciamos cada uno


```dart
  Widget userWidget() => Container();
  Widget pointsWidget() => Container();
  Widget graphWidget() => Container();
  Widget FriendsWidget() => Container();
```

Modifcaremos los widgets.

<p align="center">
	<img src="screenshots/user_points.jpeg" width="400">
</p>

El documento final de esta interfaz lo podemos ver en:

**Repositorio:** [User points](https://github.com/diegodavidQ/Flutter_examples/repository/user_points.dart)




```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```

```dart
```


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Text(
                      'Friends',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.green,
                      ),
                    )
                  ],
                )),
              ),
            )
          ],
        ),
        backgroundColor: backgroundColor,
        body: Column(
          children: <Widget>[
            userWidget(),
            pointsWidget(),
            graphWidget(),
            FriendsWidget(),
          ],
        ));
  }

  Widget userWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 24.0),
      child: Row(
        children: <Widget>[
          Container(
              width: 75.0,
              height: 75.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage('assets/avatar2.png'),
                ),
              )),
          SizedBox(width: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Diego',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'David',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget pointsWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, top: 24.0, right: 16.0),
      child: Container(
        width: double.infinity,
        height: 120.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '957',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'place',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xffAEA1C1),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '8 500',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'points',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xffAEA1C1),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget graphWidget() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 32.0, top: 24.0, right: 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text('Days',
              style: TextStyle(
                color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(width: 16.0),
              Text('Months',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),
              ),
              Expanded(
                child: Text('visits in mins',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 15.0,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 24.0),
        Container(
          width: double.infinity,
          height: 200.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              dayItem('28.01',55),
              dayItem('30.01',58),
              dayItem('01.02',45),
              dayItem('04.02',25),
              dayItem('08.02',55),
              dayItem('11.02',45),
              dayItem('13.02',60),
              dayItem('28.01',45),
            ],
          )
        )
      ],
    );
  }

  Widget dayItem(String day, int value){
    var barHeight = 200.0 * value /100.0;
    var offSet = 200.0 - barHeight - 60.0;

    return Column(
      children: <Widget>[
        SizedBox(height: offSet),
        Text(value.toString(),
          style: TextStyle(
            color: Colors.greenAccent,
          ),
        ),
        SizedBox(height: 12.0),
        Container(
          width: 2.0,
          height: barHeight,
          color: Colors.greenAccent,
        ),
        SizedBox(height: 12.0),
        Text(day,
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
          ),
        )
      ],
    );

  }

  Widget FriendsWidget() => Container();
}

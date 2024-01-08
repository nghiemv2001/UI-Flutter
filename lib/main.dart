import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(
      MaterialApp(
          theme: ThemeData(
              primaryColor: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity),
          debugShowCheckedModeBanner: false,
          home: day12_appWeather()),
    );

class day12_appWeather extends StatefulWidget {
  const day12_appWeather({Key? key}) : super(key: key);

  @override
  State<day12_appWeather> createState() => _day12_appWeatherState();
}

class _day12_appWeatherState extends State<day12_appWeather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            colors: [
              Color(0xff19D2FE),
              Color(0xff1D6CF3),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            home_Weather_Icon(),
            home_Temperature(),
            home_Location(),
            SizedBox(
              height: 40,
            ),
            home_DetailWeather(),
          ],
        ),
      ),
    );
  }
}

class home_Weather_Icon extends StatelessWidget {
  const home_Weather_Icon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width / 2,
      child: Image.asset(
        "assets/images/moderateorheavyrainshower.png",
        fit: BoxFit.cover,
      ),
    );
  }
}

class home_Temperature extends StatelessWidget {
  const home_Temperature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "45",
          style: TextStyle(
              fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          "0",
          style: TextStyle(
              fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ],
    );
  }
}

class home_Location extends StatelessWidget {
  const home_Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final df = DateFormat("dd-MM-yyyy");
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/icons/location.png"),
            SizedBox(
              width: 20,
            ),
            Text(
              "Ho CHi Minh",
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
          ],
        ),
        SizedBox(
          height: 17,
        ),
        Text(
          df.format(DateTime.now()),
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ],
    );
  }
}

class home_DetailWeather extends StatelessWidget {
  const home_DetailWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Image.asset("assets/icons/Vector.png"),
            Text(
              "5km/h",
              style: TextStyle(fontSize: 21, color: Colors.white),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Image.asset("assets/icons/humidity.png"),
            Text(
              "5km/h",
              style: TextStyle(fontSize: 21, color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mbk/weather/weather_altitude.dart';
import 'package:mbk/weather/weather_temperature.dart';
import 'package:mbk/weather/weather_pressure.dart';
class WeatherScreen extends StatefulWidget {

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  double balandlik = 800.0;
  double temperatura = 0.0;
  double bosim = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('MERGAN BALLISTIK KALKULYATORI'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Balandlik (metr)"),
                AltitudeInput(
                  onAltitudeChanged: (newBalandlik) {
                    setState(() {
                      balandlik = newBalandlik; // masofa qiymatini yangilash
                    });
                  },
                ),
              ],
            ), //altitude
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Temperatura (C)"),
                TemperatureInput(
                  onTemperatureChanged: (newtemperatura) {
                    setState(() {
                      temperatura = newtemperatura; // masofa qiymatini yangilash
                    });
                  },
                ),
              ],
            ),  //temperature
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Bosim (Hg)"),
                PressureInput(
                  onPressureChanged: (newbosim) {
                    setState(() {
                      bosim = newbosim; // masofa qiymatini yangilash
                    });
                  },
                ),
              ],
            ),  //pressure
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Shamol yo'nalishi (gradus)"),
                WindDirectionInput(
                  onWindDirectionChanged: (newshamolYonalishi) {
                    setState(() {
                      shamolYonalishi = newshamolYonalishi; // masofa qiymatini yangilash
                    });
                  },
                ),
              ],
            ),  //pressurbutton
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 5.0),
              padding: EdgeInsets.all(10.0),
              height: 45.0,
              width: MediaQuery.of(context).size.width, // ekran eni
              color: Colors.white24,
              child: Text('5'),

            ),  //weather

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 5.0),
                  padding: EdgeInsets.all(5.0),
                  height: 45.0,
                  width: 170,
                  color: Colors.white24,
                  child: Text("OK"),

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 5.0),
                  padding: EdgeInsets.all(5.0),
                  height: 45.0,
                  width: 170,
                  color: Colors.white24,
                  child: Text('Orqaga'),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


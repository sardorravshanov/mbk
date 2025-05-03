import 'package:flutter/material.dart';
import 'package:mbk/wind_speed.dart';
import 'distance.dart'; // DistanceInput-ni chaqirish
import 'slope_angly_screen.dart';
import 'wind_direction_screen.dart';
import 'weather/weather.dart';
class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double masofa = 800.0;
  double shamolTezligi = 0.0;
  double nishonBurchagi = 0.0;
  double shamolYonalishi = 0.0;
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
                Text("Masofa (metr)"),
                DistanceInput(
                  onDistanceChanged: (newMasofa) {
                    setState(() {
                      masofa = newMasofa; // masofa qiymatini yangilash
                    });
                  },
                ),
              ],
            ), //distance
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Nishon burchagi (gradus)"),
                SlopeAnglyInput(
                  onSlopeAnglyChanged: (newnishonBurchagi) {
                    setState(() {
                      nishonBurchagi = newnishonBurchagi; // masofa qiymatini yangilash
                    });
                  },
                ),
              ],
            ),  //slopeangly
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Shamol tezligi (m/s)"),
                WindSpeedInput(
                  onWindSpeedChanged: (newshamolTezligi) {
                    setState(() {
                      shamolTezligi = newshamolTezligi; // masofa qiymatini yangilash
                    });
                  },
                ),
              ],
            ),  //windspeed
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
            ),  //winddirection
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 5.0),
              padding: EdgeInsets.all(10.0),
              height: 45.0,
              width: MediaQuery.of(context).size.width, // ekran eni
              color: Colors.white24,
              child: Text('5'),

            ),  //weather
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 5.0),
              padding: EdgeInsets.all(10.0),
              height: 100.0,
              width: MediaQuery.of(context).size.width, // ekran eni
              color: Colors.white24,
              child: Text('6'),

            ),  //6
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 5.0),
                  padding: EdgeInsets.all(10.0),
                  height: 45.0,
                  width: 160,
                  color: Colors.white24,
                  child: Text('Hisoblash'),

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 5.0),
                  padding: EdgeInsets.all(10.0),
                  height: 45.0,
                  width: 160,
                  color: Colors.white24,
                  child: Text('Nishon'),

                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 50.0),
              padding: EdgeInsets.all(10.0),
              height: 100.0,
              width: MediaQuery.of(context).size.width, // ekran eni
              color: Colors.white24,
              child: Text('7'),

            ),  //7
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 5.0),
                  padding: EdgeInsets.all(5.0),
                  height: 45.0,
                  width: 170,
                  color: Colors.white24,
                  child: Text("Qo'shimcha ma'lumotlar"),

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 5.0),
                  padding: EdgeInsets.all(5.0),
                  height: 45.0,
                  width: 170,
                  color: Colors.white24,
                  child: Text('Jadval'),

                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 5.0),
                  padding: EdgeInsets.all(5.0),
                  height: 45.0,
                  width: 170,
                  color: Colors.white24,
                  child: Text("Sozlamalar"),

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 5.0),
                  padding: EdgeInsets.all(5.0),
                  height: 45.0,
                  width: 170,
                  color: Colors.white24,
                  child: Text('Haqida...'),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


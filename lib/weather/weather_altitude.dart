import 'package:flutter/material.dart';

class AltitudeInput extends StatefulWidget {
  final Function(double) onAltitudeChanged;

  AltitudeInput({required this.onAltitudeChanged});

  @override
  _AltitudeInputState createState() => _AltitudeInputState();
}

class _AltitudeInputState extends State<AltitudeInput> {
  final TextEditingController _controller = TextEditingController(text: '0.0');
  double balandlik = 0.0; // boshlang‘ich qiymat

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 5.0),
      padding: EdgeInsets.all(10.0),
      height: 45.0,
      width: 150.0,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextField(
        controller: _controller,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        style: TextStyle(fontSize: 16),
        onChanged: (value) {
          setState(() {
            balandlik = double.tryParse(value) ?? 0.0;
          });
          widget.onAltitudeChanged(balandlik); // Masofani HomeScreen-ga yuborish
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PressureConvert extends StatefulWidget {
  final Function(double) onPressureConvertChanged;

  PressureConvert({required this.onPressureConvertChanged});

  @override
  _PressureConvertState createState() => _PressureConvertState();
}

class _PressureConvertState extends State<PressureConvert> {
  final TextEditingController _controller = TextEditingController(text: '0.0');
  double bosim = 0.0; // boshlang‘ich qiymat
  void convertToPascal() {
    double inputValue = double.tryParse(_controller.text) ?? 0.0;

    // Misol uchun: atm ni pascalga o‘tkazamiz (1 atm = 101325 Pa)
    setState(() {
      bosim = inputValue * 101325;
    });
  }
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

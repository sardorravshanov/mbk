import 'package:flutter/material.dart';

class WindDirectionInput extends StatefulWidget {
  final Function(double) onWindDirectionChanged;

  WindDirectionInput({required this.onWindDirectionChanged});

  @override
  _WindDirectionInputState createState() => _WindDirectionInputState();
}

class _WindDirectionInputState extends State<WindDirectionInput> {
  final TextEditingController _controller = TextEditingController(text: '0.0');
  double shamolYonalishi = 0.0; // boshlang‘ich qiymat

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
            shamolYonalishi = double.tryParse(value) ?? 0.0;
          });
          widget.onWindDirectionChanged(shamolYonalishi); // Shamol tezligini HomeScreen-ga yuborish
        },
      ),
    );
  }
}

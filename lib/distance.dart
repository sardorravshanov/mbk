import 'package:flutter/material.dart';

class DistanceInput extends StatefulWidget {
  final Function(double) onDistanceChanged;

  DistanceInput({required this.onDistanceChanged});

  @override
  _DistanceInputState createState() => _DistanceInputState();
}

class _DistanceInputState extends State<DistanceInput> {
  final TextEditingController _controller = TextEditingController(text: '800.0');
  double masofa = 0.0; // boshlang‘ich qiymat

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
            masofa = double.tryParse(value) ?? 0.0;
          });
          widget.onDistanceChanged(masofa); // Masofani HomeScreen-ga yuborish
        },
      ),
    );
  }
}

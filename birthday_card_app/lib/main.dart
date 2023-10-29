import 'package:flutter/material.dart';

void main() {
  runApp(BirthdayCard());
}

class BirthdayCard extends StatelessWidget {
  BirthdayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFD2BCD5),
        body: Center(
          child: Image(
            image: AssetImage('images/birthday_card.png'),
          ),
        ),
      ),
    );
  }
}

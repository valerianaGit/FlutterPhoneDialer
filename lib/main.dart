import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'widgets.dart';
import 'theme.dart';

// main is the root or 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: MyFancyDialer());
  }
}

class MyDialer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        NumberReadOut(),
      MyNumPad(),
      DialButton(),
      
      ],);
  }
}

class MyNumPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.all(25.0),
     child: Table(
      children: [
        TableRow(
          children: ['1', '2', '3'].map((d) => DigitButton(d)).toList(),
        ),
         TableRow(
          children: ['4', '5', '6'].map((d) => DigitButton(d)).toList(),
        ),
         TableRow(
          children: ['7', '8', '9'].map((d) => DigitButton(d)).toList(),
        ),
         TableRow(
          children: ['*', '0', '#'].map((d) => DigitButton(d)).toList(),
        )

      ],
    ));
  }
}

class MyFancyDialer extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Stack(
children: <Widget>[
  Positioned.fill(
    child: Opacity(
      opacity: 0.5,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [darkBlue, Colors.green,],)
        ),
        child: FlutterLogo(),),)
  ),
  MyDialer(),
],

  );
}

}

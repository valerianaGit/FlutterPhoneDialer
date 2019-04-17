import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'widgets.dart';
import 'theme.dart';

void main() => runApp(
      Builder(
        builder: (context) => MaterialApp(
              theme: phoneTheme(context),
              title: 'Flutter Dialer',
              home: Scaffold(
                body: DialerData(
                  child: DialerApp(),
                ),
              ),
            ),
      ),
    );

class DialerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Hello MWC!'));
  }
}

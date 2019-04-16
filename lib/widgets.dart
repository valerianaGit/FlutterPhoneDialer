import 'package:flutter/material.dart';


class DeleteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.backspace),
      onPressed: () {
        Provide.value<PhoneNumber>(context).removeDigit(),
      },
      );
  }
}

class NumberReadOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: darkBlue),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: <Widget>[
          PhoneNumberDisplay(),
          DeleteButton(),
        ],
      ),
    );
  }
}
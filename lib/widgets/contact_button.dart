import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final Widget icon;
  final Function onPressed;
  const ContactButton({
    Key key,
    this.buttonText,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextButton.icon(
          style: TextButton.styleFrom(
            textStyle: TextStyle(color: Colors.black),
            backgroundColor: Colors.black26,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0)),
          ),
          onPressed: () {},
          icon: icon,
          label: Text(
            '$buttonText',
            style: TextStyle(color: Colors.black),
          )),
    );
  }
}

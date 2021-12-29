import 'package:flutter/material.dart';
import 'package:portflio_app/utilis/util.dart';
import 'package:portflio_app/widgets/body.dart';
import 'package:portflio_app/widgets/button_row.dart';
import 'package:portflio_app/widgets/contact_button.dart';

class Portflio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        // ignore: prefer_const_constructors
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              foregroundImage: AssetImage('assets/images/mypic.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Priya',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
        actions: [
          ContactButton(
            buttonText: 'Contact me',
            icon: Icon(Icons.send_sharp),
            onPressed: () {
              launchMailto();
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Body(),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(48.0),
                child: ButtonRow(),
              ))
        ],
      ),
    );
  }
}

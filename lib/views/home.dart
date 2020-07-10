import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Home',
                style: TextStyle(
                  fontSize: 40,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text('Welcome to your shadow journal.')
            ],
          ),
        ],
      ),
    );
  }
}

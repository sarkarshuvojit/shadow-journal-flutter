import 'package:flutter/material.dart';

class RouteItem {
  String name;
  Widget view;
  IconData icon;
  Color color;

  RouteItem(this.name, this.view, this.icon, {this.color: Colors.blue});
}

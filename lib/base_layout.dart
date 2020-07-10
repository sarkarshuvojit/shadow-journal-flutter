import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shadow_journal/utils/models/common/route_model.dart';
import './route.dart';

class BaseLayout extends StatefulWidget {
  BaseLayout({Key key}) : super(key: key);

  @override
  _BaseLayoutState createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {
  var _routes = routes;
  RouteItem _selectedRoute;
  int _selectedIndex = 0;

  _BaseLayoutState() {
    this._selectedRoute = this._routes[0];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _selectedRoute = this._routes.elementAt(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle());

    return Scaffold(
      body: Center(
        child: this._selectedRoute.view,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          ...this._routes.map(
                (route) => BottomNavigationBarItem(
                  icon: Icon(route.icon),
                  title: Text(route.name),
                ),
              ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

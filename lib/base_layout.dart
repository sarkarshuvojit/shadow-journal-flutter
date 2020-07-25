import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
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
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.blue));

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: GradientAppBar(
        title: Text('Shadow Journal'),
        centerTitle: true,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
        child: Center(
          child: Container(
            child: this._selectedRoute.view,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.blue,
                  Colors.white,
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.blue,
        // elevation: 0,
        // fixedColor: Colors.white,
        items: <BottomNavigationBarItem>[
          ...this._routes.map(
                (route) => BottomNavigationBarItem(
                  icon: Icon(route.icon),
                  title: Text(route.name),
                  backgroundColor: route.color
                ),
              ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

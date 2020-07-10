import 'package:flutter/material.dart';
import 'package:shadow_journal/views/home.dart';
import 'package:shadow_journal/views/more.dart';
import 'package:shadow_journal/views/my-shadow.dart';

import 'utils/models/common/route_model.dart';

List<RouteItem> routes = [
  new RouteItem('Home', new HomeView(), Icons.home),
  new RouteItem('Shadow', new MyShadowView(), Icons.filter_vintage),
  new RouteItem('More', new MoreView(), Icons.more_horiz),
];
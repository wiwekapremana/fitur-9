/*
*  main.dart
*  fixxxx
*
*  Created by wiwekadwi.
*  Copyright © 2018 wiweka. All rights reserved.
    */

import 'package:fixxxx/sales_report_widget/sales_report_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());


class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: SalesReportWidget(),
    );
  }
}
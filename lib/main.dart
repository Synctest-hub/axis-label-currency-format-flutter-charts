import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:intl/intl.dart';

void main() {
  return runApp(ChartApp());
}

class ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chart Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: Center(
          child: Container(
            height: 500,
            width: 340,
            child: SfCartesianChart(
                backgroundColor: Colors.white,
                primaryXAxis: CategoryAxis(),
                primaryYAxis: NumericAxis(
                  minimum: 1000000,
                  maximum: 2000000,
                  numberFormat: NumberFormat.compactCurrency(
                      symbol: '', decimalDigits: 1),
                  // *** For currency representation ***
                  // numberFormat: NumberFormat.currency(
                  //   locale: 'en_In',
                  //   symbol: "₹"
                  // ),
                ),
                series: <LineSeries<ChartData, String>>[
                  LineSeries<ChartData, String>(
                    dataSource: <ChartData>[
                      ChartData(1211000, 'Jan'),
                      ChartData(1312000, 'Feb'),
                      ChartData(1413000, 'Mar'),
                      ChartData(1514000, 'Apr'),
                      ChartData(1615000, 'May')
                    ],
                    xValueMapper: (ChartData sales, _) => sales.value2,
                    yValueMapper: (ChartData sales, _) => sales.value1,
                  )
                ]),
          ),
        ));
  }
}

class ChartData {
  ChartData(this.value1, this.value2);

  final num value1;
  final String value2;
}

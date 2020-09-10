import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loancalculation/classLoanProvider.dart';
import 'package:provider/provider.dart';
import 'classLoanCalculator.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    LoanProvider loanProvider =
        Provider.of<LoanProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("${loanProvider.test().toString()}")],
        ),
      ),
    );
  }
}

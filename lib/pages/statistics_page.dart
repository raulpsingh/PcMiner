import 'package:flutter/material.dart';
import 'package:untitled1/functions/widgets.dart';


class StatisticsPage extends StatefulWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double paddHeight = MediaQuery.of(context).size.height;
    final double paddwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(55, 66, 63, 1),
        title: Center(
          child: Text(
            "Statistics",style: TextStyle(fontFamily: "Lato", fontSize: 25, color: Colors.white),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(55, 66, 63, 1),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: paddHeight*0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,children: [GraphWidget()],
            ),)
        ],
      ),

    );
  }
}

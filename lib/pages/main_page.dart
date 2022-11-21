import 'package:flutter/material.dart';
import 'package:untitled1/functions/widgets.dart';


class MiningPage extends StatefulWidget {
  const MiningPage({Key? key}) : super(key: key);

  @override
  State<MiningPage> createState() => _MiningPageState();
}

class _MiningPageState extends State<MiningPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double paddHeight = MediaQuery.of(context).size.height;
    final double paddwidth = MediaQuery.of(context).size.width;

    return  Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color.fromRGBO(55, 66, 63, 1),
        title: Center(
          child: Text(
            "Miner",style: TextStyle(fontFamily: "Lato", fontSize: 25, color: Colors.white),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(55, 66, 63, 1),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: paddHeight*0.1),child:
          MiningWidget()),
          Padding(padding: EdgeInsets.only(top: paddHeight*0.1),child:
          Center(child: Text("45 mh/s",style: TextStyle(fontSize: 25,fontFamily: "Lato",color: Colors.white),),),),
          Padding(padding: EdgeInsets.only(top: paddHeight*0.1),child:
          Center(child: Text("GPU temperature - 60 c",style: TextStyle(fontSize: 25,fontFamily: "Lato",color: Colors.white),),),),



          Padding(padding: EdgeInsets.only(top: paddHeight*0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(width: paddwidth*0.4,height: paddHeight*0.1,child: MiningButton())],
            ),)
        ],
      ),



      );
  }
}

import 'package:draw_graph/models/feature.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/objects/user.dart';
import 'package:untitled1/translations/locale_keys.g.dart';
import 'package:untitled1/functions/function.dart';
import 'package:draw_graph/draw_graph.dart';


Widget logo(Size size) {
  return Container(
    child: Column(
      children: [
        Row(
          children: const [
            Text(
              "Miner App",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lato"),
            )
          ],
        )
      ],
    ),
  );
}
Widget input(IconData icon, String hint, TextEditingController controller,
    bool obscure) {
  return Container(
    child: TextField(
      controller: controller,
      obscureText: obscure,
      style: const TextStyle(fontSize: 16, color: Colors.white, fontFamily: "Lato"),
      decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontSize: 15,
            color: Colors.white60,
          ),
          hintText: hint,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white, width: 3)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white, width: 1)),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          )),
    ),
  );
}

Widget loginButton(String text, void func()) {
  return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          foregroundColor: MaterialStateProperty.all(Colors.black),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          overlayColor: MaterialStateProperty.all(Colors.black)),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color.fromRGBO(31, 52, 56, 1),
            fontFamily: "Lato"),
      ),
      onPressed: () {
        func();
      });
}

Widget loginWithButtonMail(void func()) {
  return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        overlayColor: MaterialStateProperty.all(Colors.black),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.mail,
                size: 20,
                color: Color.fromRGBO(55, 66, 63, 1),
              ),
              SizedBox(width: 10),
              Text(
                LocaleKeys.input_email.tr(),
                style: TextStyle(
                    fontSize: 18, color: Colors.black, fontFamily: "Lato"),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
      onPressed: () {
        func();
      });
}


class MiningWidget extends StatefulWidget {
  const MiningWidget({Key? key}) : super(key: key);

  @override
  State<MiningWidget> createState() => _MiningWidgetState();
}

class _MiningWidgetState extends State<MiningWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(Mining.getStatus(),style: TextStyle(fontSize: 25,fontFamily: "Lato",color: Colors.white),));
  }
}


class MiningButton extends StatefulWidget {
  const MiningButton({Key? key}) : super(key: key);

  @override
  State<MiningButton> createState() => _MiningButtonState();
}

class _MiningButtonState extends State<MiningButton> {
  @override
  Widget build(BuildContext context) {
    String mining="Start Mining";

    void onClick(){

    }

    return Container(child: ElevatedButton(style: ButtonStyle(elevation: MaterialStateProperty.all(5),backgroundColor: MaterialStateProperty.all(Color.fromRGBO(56, 64, 69, 1))), onPressed: (){
      Mining.startMining();
    },
        child: Container(child: Text("Start Mining",
        style: TextStyle(fontFamily: "Lato", fontSize: 25, color: Colors.white)))));
  }
}


class GraphWidget extends StatefulWidget {
  const GraphWidget({Key? key}) : super(key: key);

  @override
  State<GraphWidget> createState() => _GraphWidgetState();
}

class _GraphWidgetState extends State<GraphWidget> {
  final List<Feature> features = [
    Feature(
      title: "MH/s",
      color: Colors.blue,
      data: [0.5, 0.7, 0.6, 0.6, 0.5],
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Container(child:
        LineGraph(
        features: features,
        size: Size(320, 400),
    labelX: ['16.11', '17.11', '18.11', '19.11', '20.11'],
    labelY: ['20 MH/S', '40 MH/S', '60 MH/S', '80 MH/S', '100 MH/S'],
    showDescription: true,
    graphColor: Colors.white30,
    graphOpacity: 0.2,
    verticalFeatureDirection: true,
    descriptionHeight: 130,));
  }
}

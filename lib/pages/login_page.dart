import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:untitled1/functions/widgets.dart';
import 'package:untitled1/objects/user.dart';
import 'package:untitled1/translations/locale_keys.g.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  late String _email;
  late String _password;
  bool showLogin = true;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double paddHeight = MediaQuery.of(context).size.height;
    final double paddwidth = MediaQuery.of(context).size.width;

    void _loginbutton() async {
      _email = _emailController.text;
      _password = _passwordController.text;

    }

    void _registerbutton() async {
      _email = _emailController.text;
      _password = _passwordController.text;
      if (_email.isEmpty || _password.isEmpty) return;

    }

    return ColorFiltered(
      colorFilter: ColorFilter.mode(Colors.yellow.withOpacity(0.7), BlendMode.dstATop),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(55, 66, 63, 1.0),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: paddHeight * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  logo(size),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: paddHeight * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      width: size.width * 0.9,
                      height: size.height * 0.1,
                      child: input(Icons.email, LocaleKeys.input_email.tr(),
                          _emailController, false))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: size.width * 0.9,
                    height: size.height * 0.1,
                    child: input(Icons.password_rounded,
                        LocaleKeys.input_password.tr(), _passwordController, true))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: paddHeight * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: (showLogin
                          ? Column(
                        children: [
                          Container(
                              width: size.width * 0.8,
                              height: size.height * 0.07,
                              child: loginButton(LocaleKeys.login.tr(), _loginbutton)),
                          Padding(
                            padding:
                            EdgeInsets.only(top: paddHeight * 0.04),
                            child: GestureDetector(
                              child: Text(
                                LocaleKeys.register.tr(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,fontFamily: "Lato"),
                              ),
                              onTap: () {
                                setState(() {
                                  showLogin = false;
                                });
                              },
                            ),
                          )
                        ],
                      )
                          : Column(
                        children: [
                          Container(
                              width: size.width * 0.8,
                              height: size.height * 0.07,
                              child: loginButton(LocaleKeys.register.tr(), _registerbutton)),
                          Padding(
                            padding:
                            EdgeInsets.only(top: paddHeight * 0.04),
                            child: GestureDetector(
                              child: Text(
                                LocaleKeys.login.tr(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,fontFamily: "Lato"),
                              ),
                              onTap: () {
                                setState(() {
                                  showLogin = true;
                                });
                              },
                            ),
                          )
                        ],
                      ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
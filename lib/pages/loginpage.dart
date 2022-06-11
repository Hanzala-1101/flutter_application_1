import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomeRoutes);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Login page")),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/nature.jpg",
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text("Nature is god gifted do not destroy $name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.redAccent,
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter the text",
                            labelText: "Enter your name",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "User name cannot be empty";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cannot be empty";
                            } else if (value.length < 6) {
                              return "greater than 6";
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter the text",
                            labelText: "Enter your password",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Material(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(changebutton ? 30 : 7),
                    child: InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width: changebutton ? 50 : 150,
                        alignment: Alignment.center,
                        child: changebutton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: Text("login"),
                  //   style: TextButton.styleFrom(
                  //       primary: Color.lerp(Colors.black, Colors.black, 5.3),
                  //       shadowColor: Color.alphaBlend(
                  //           Colors.deepPurple, Colors.greenAccent),
                  //       fixedSize: Size(100, 20)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.HomeRoutes);
                  //   },
                  // ),
                ],
              ),
            ),
          ),
        )));
  }
}

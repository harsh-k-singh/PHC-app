import 'package:flutter/material.dart';
import 'package:phc_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int changebutton = 0;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = 1;
      });
      await Future.delayed(Duration(milliseconds: 700));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IIITDMJ"),
      ),
      body: Material(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    "IIITDMJ Health Care",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image.asset(
                    "assets/images/logo.jpg",
                    height: 150,
                    width: 150,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter User Name",
                            labelText: "User Name",
                          ),
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "User Name can not be Empty!";
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                          validator: (value) {
                            if (value != null && !value.isEmpty) {
                              if (value.length < 6) {
                                return "Password length should be atleast 6";
                              } else {
                                return null;
                              }
                            } else {
                              return "Password cannot be empty";
                            }
                          },
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Material(
                          color: Color.fromARGB(255, 85, 173, 245),
                          borderRadius: BorderRadius.circular(
                              (changebutton == 1) ? 50 : 8),
                          child: InkWell(
                            onTap: () => moveToHome(context),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 700),
                              height: (changebutton == 1) ? 50 : 40,
                              width: (changebutton == 1) ? 100 : 150,
                              alignment: Alignment.center,
                              child: (changebutton == 1)
                                  ? Icon(Icons.done, color: Colors.white)
                                  : Text(
                                      "Login",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.medication),
              onTap: () => Navigator.pushNamed(context, MyRoutes.schedule),
              title: Text(
                "Doctors Timing",
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(Icons.medical_services),
              title: Text(
                "Ambulance",
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(Icons.question_mark_rounded),
              onTap: () => Navigator.pushNamed(context, MyRoutes.aboutus),
              title: Text(
                "About us",
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}

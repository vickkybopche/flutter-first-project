import 'package:flutter/material.dart';
import 'package:flutter_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
       setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
    }
   
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 80),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "Username"),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "Username can not be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "Password can not be empty";
                        }
                        if(value!=null && value.length<6)
                        {
                          return "Password length should be min 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    // Animations

                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 55 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 45,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(Icons.done, color: Colors.white)
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                          // decoration: BoxDecoration(
                          //   color: Colors.deepPurpleAccent,

                          // ),
                        ),
                      ),
                    ),

                    // ElevatedButton(
                    //   onPressed: (){
                    //
                    //   },
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: Size(150, 40)
                    //   ),
                    //    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

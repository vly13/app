import 'package:flutter/material.dart';
import 'package:task2/login_pge.dart';
import 'package:task2/new_home_screen.dart';
import 'package:dio/dio.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailContrller = TextEditingController();

  final TextEditingController nameContrller = TextEditingController();

  final TextEditingController passwordContrller = TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            // width: MediaQuery.of(context).size.width,
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Image.asset(
                    'assets/images/logo.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Lets Get Started",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("creat an new account",
                      style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Full Name",
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: TextFormField(
                      validator: (text) {
                        if (!text!.contains('@')) {
                          return "you should write correct email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Your Email",
                        prefixIcon: Icon(
                          Icons.email_sharp,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: TextFormField(
                      validator: (text) {
                        if (text!.length < 6) {
                          return "name should be more then 6";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: ('Enter Your password'),
                        prefixIcon: Icon(Icons.password_sharp),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: TextFormField(
                      validator: (text) {
                        if (text!.length < 6) {
                          return "name should be more then 6";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: ('Enter Your password again'),
                        prefixIcon: Icon(Icons.password_sharp),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        register();
                      }
                    },
                    child: Text(
                      'sign up',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginPage();
                              },
                            ),
                          );
                        },
                        child: Text("sign in"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void register() async {
    try {
      var response =
          await Dio().post('https://api.escuelajs.co/api/v1/users/', data: {
        "name": nameContrller.text,
        "email": emailContrller.text,
        "password": passwordContrller.text,
        "avatar": "https://api.lorem.space/image/face?w=640&h=480",
      });
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return LoginPage();
        }),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("error in email or password"),
        ),
      );
    }
  }
}

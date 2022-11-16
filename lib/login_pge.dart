import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task2/new_home_screen.dart';
import 'package:task2/register_page.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailContrller = TextEditingController();
  final TextEditingController nameContrller = TextEditingController();
  final TextEditingController passwordContrller = TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                    height: 20,
                  ),
                  Text(
                    "مسائك لذيذ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("sign in"),
                  SizedBox(height: 30),
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
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        loginPage();
                      }
                    },
                    child: Text('Sign in'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'OR',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: 200,
                    child: TextButton.icon(
                      onPressed: () {
                        print("hello world");
                      },
                      icon: Icon(Icons.g_mobiledata_rounded),
                      label: Text("login with google"),
                    ),
                  ),
                  Container(
                    width: 200,
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.facebook_rounded),
                      label: Text("login with facebook"),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'forget password?',
                        style: TextStyle(color: Colors.blue),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "doesn't have an account ?",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return RegisterPage();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'register',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void loginPage() async {
    try {
      final prefs = await SharedPreferences.getInstance();

      final response =
          await Dio().post('https://api.escuelajs.co/api/v1/auth/login', data: {
        "email": emailContrller.text,
        "password": passwordContrller.text,
      });
      print(response.data);

      await prefs.setString('access_token', response.data['access_token']);

      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) {
          return NewHomeScreen();
        }), (route)=> false
      );
      print(response);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("error in email or password"),
        ),
      );
    }
  }
}
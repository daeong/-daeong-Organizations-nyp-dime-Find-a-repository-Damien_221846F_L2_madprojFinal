import 'package:flutter/material.dart';
import 'login.dart';

class Register extends StatelessWidget {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.blue,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlue[50],
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.blue,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlue[50],
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.blue,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlue[50],
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child: TextField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.blue,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlue[50],
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  String password = passwordController.text;
                  String confirmPassword = confirmPasswordController.text;

                  // password must equal confirm password
                  if (password == confirmPassword) {
                    Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(

                      ),
                    ),
                  );
                  } else {
                    // error message
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Error'),
                          content: Text('Passwords do not match.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

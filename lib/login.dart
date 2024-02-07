import 'package:flutter/material.dart';
import 'home.dart';
import 'register.dart';

class Login extends StatelessWidget {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset('images/bus1.png'),
              height: 200,
            ),
            Padding(
              padding: EdgeInsets.all(18),
              child: TextField(
                controller: userNameController,
                decoration: InputDecoration(
                  hintText: 'Enter Username',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.blue,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue[50]),
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
                    borderSide: BorderSide(color: Colors.lightBlue[50]),
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
                String enteredUsername = userNameController.text;      
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home(txtUser: enteredUsername)),
                  );
               
              },
              child: Text('Login'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              child: Text(
                'Don\'t have an account? Register here',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

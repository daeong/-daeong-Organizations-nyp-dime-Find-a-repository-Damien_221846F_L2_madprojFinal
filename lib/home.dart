import 'package:flutter/material.dart';
import 'drawer.dart';

class Home extends StatelessWidget {
  final String txtUser;
  final String userEmail;

  const Home({Key key, this.txtUser, this.userEmail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Material App',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title:Text('Home')
        ),
        drawer: MyDrawer(txtUser: txtUser),
         body: Center(
        child: Text(
          'Welcome, $txtUser!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      ),
    );
  }
}


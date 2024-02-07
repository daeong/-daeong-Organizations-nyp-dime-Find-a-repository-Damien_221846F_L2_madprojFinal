import 'package:flutter/material.dart';
import 'package:madproject_flutterapp/about.dart';
import 'package:madproject_flutterapp/bus.dart';


class MyDrawer extends StatelessWidget {

  final String txtUser;

  const MyDrawer({Key key, this.txtUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:MediaQuery.of(context).size.width * 0.8,
      child:Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color:Colors.lightBlueAccent),
              child:Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width:80,
                      height:80,
                      child:CircleAvatar(
                        backgroundImage: AssetImage('images/guest.jpg'),
                      ),
                    ),
                    SizedBox(height:15),
                    Text(
                      txtUser,
                      style:TextStyle(
                        fontSize:16,
                        fontWeight: FontWeight.bold,
                        color:Colors.white),
                      ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading:Icon(Icons.home),
              title:Text('Home'),
              onTap: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
              }
            ),
             ListTile(
              leading:Icon(Icons.account_box_sharp),
              title:Text('About Us'),
               onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage()));
              }
            ),
            ListTile(
              leading:Icon(Icons.directions_bus_sharp),
              title:Text('Bus Stops'),
               onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BusStopListApp()));
              }
            ),
          ],
        ),
      ),
    );
  }
}
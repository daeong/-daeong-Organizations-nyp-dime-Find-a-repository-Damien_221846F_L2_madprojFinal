import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'About Our App',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Welcome to our public transport app! We aim to provide convenient and efficient transportation services to our users.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Our Mission',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Our mission is to make public transportation more accessible and reliable for everyone. We strive to create a seamless experience for our users, helping them navigate their cities with ease.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'For any inquiries or feedback, please feel free to contact us at support@example.com. We value your input and are committed to continually improving our app to better serve our users.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

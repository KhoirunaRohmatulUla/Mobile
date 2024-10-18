import 'package:flutter/material.dart';
import 'package:uts/detail.dart';
import 'home_page.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Beranda(),
        '/home': (context) => HomePage(),
        '/detail': (context) => Detail(),
      },
    );
  }
}

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Application'),
        backgroundColor: const Color.fromARGB(255, 145, 222, 248),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.pinimg.com/550x/22/dc/71/22dc7193a18315ae2f25bd6081573505.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16), 
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6), 
                  borderRadius: BorderRadius.circular(12), 
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(66, 112, 198, 255), 
                      blurRadius: 10, 
                      offset: Offset(0, 4), 
                    ),
                  ],
                ),
                child: Text(
                  'Welcome to TravelEase',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: const Color.fromARGB(186, 7, 7, 7),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('Explore'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'sign_up.dart';
import 'calculator.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Drawer Navigation'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.login), text: 'Sign In'),
              Tab(icon: Icon(Icons.person_add), text: 'Sign Up'),
              Tab(icon: Icon(Icons.calculate), text: 'Calculator'),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.login),
                title: Text('Sign In'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.person_add),
                title: Text('Sign Up'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.person_add),
                title: Text('Calculator'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CalculatorHomePage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SignInScreen(),
            SignUpScreen(),
            CalculatorHomePage(),
          ],
        ),
      ),
    );
  }
}

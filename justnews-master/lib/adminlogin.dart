import 'package:flutter/material.dart';
import 'package:justnews/displaypost.dart'; // Import the displaypost.dart file

// void main() {
//   runApp(adminlogin());
// }

// class adminlogin extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => admin_Login(),
//         'displaypost': (context) =>
//             displaypost(), // Add your route for displaypost.dart
//       },
//     );
//   }
// }

class admin_Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 250,
                  height: 250,
                ),
                SizedBox(height: 5),
                Text(
                  'Admin Login',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFD2D5D2),
            borderRadius: BorderRadius.circular(30),
          ),
          margin: EdgeInsets.only(bottom: 30),
          child: TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Admin Name ',
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              prefixIcon: Icon(Icons.person),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFD2D5D2),
            borderRadius: BorderRadius.circular(30),
          ),
          margin: EdgeInsets.only(bottom: 10),
          child: TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              prefixIcon: Icon(Icons.lock),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                print('Username: ${_usernameController.text}');
                print('Password: ${_passwordController.text}');
                Navigator.pushReplacementNamed(context, "displaypost");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text('Login', style: TextStyle(fontSize: 18)),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: WelcomeBody(),
    );
  }
}
class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WelcomeLogo(),
          SizedBox(height: 20),
          WelcomeTitle(),
          SizedBox(height: 30),
          GetStartedButton(),
        ],
      ),
    );
  }
}
class WelcomeLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo.png',
      width: 150,
      height: 150,
    );
  }
}
class WelcomeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome to the App',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
class GetStartedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/register');
      },
      child: Text('Get Started'),
    );
  }
}

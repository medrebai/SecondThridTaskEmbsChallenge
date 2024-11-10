import 'package:firsttask/screens/quiz_list_screen.dart';
import 'package:firsttask/screens/quiz_one_screen.dart';
import 'package:firsttask/screens/register_screen.dart';
import 'package:firsttask/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => WelcomeScreen(),
  '/register': (context) => RegisterScreen(),
  '/quiz-list': (context) => QuizListScreen(),
  '/quiz-one': (context) => QuizOneScreen(),
};
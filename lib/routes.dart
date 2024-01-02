import 'package:flutter/material.dart';
import 'package:tooma_app/screens/product/detail_screen.dart';
import 'package:tooma_app/screens/home.dart';
import 'package:tooma_app/screens/tabbar.dart';
import 'package:tooma_app/screens/auth/welcome.dart';
import 'package:tooma_app/screens/auth/login.dart';
import 'package:tooma_app/screens/auth/signup.dart';
import 'package:tooma_app/screens/product/most_popular_screen.dart';
import 'package:tooma_app/screens/profile_screen.dart';
import 'package:tooma_app/screens/special_offers_screen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.route(): (context) => const LoginScreen(),
  SignUpScreen.route(): (context) => const SignUpScreen(),
  WelcomeScreen.route(): (context) => const WelcomeScreen(),
  TMTabbarScreen.route(): (context) => const TMTabbarScreen(),
  HomeScreen.route(): (context) => const HomeScreen(title: '123'),
  MostPopularScreen.route(): (context) => const MostPopularScreen(),
  SpecialOfferScreen.route(): (context) => const SpecialOfferScreen(),
  ProfileScreen.route(): (context) => const ProfileScreen(),
  ShopDetailScreen.route(): (context) => const ShopDetailScreen(),
  

};

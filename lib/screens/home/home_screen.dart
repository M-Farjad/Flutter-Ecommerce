import 'package:ecommerce/screens/Home/components/body.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = "/Home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Body(),
    );
  }
}

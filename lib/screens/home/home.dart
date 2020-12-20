import 'package:ecommerce/screens/home/components/body.dart';
import 'package:ecommerce/screens/profile/profile_screen.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

import '../../enum.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

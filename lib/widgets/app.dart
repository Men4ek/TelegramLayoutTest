import 'package:flatter_layout_test/widgets/user_profile.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Sfpro'),
      debugShowCheckedModeBanner: false,
      home: const UserProfile(),
    );
  }
}

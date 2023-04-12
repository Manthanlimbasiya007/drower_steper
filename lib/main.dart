import 'package:drower_steper/screen/provider/home_provider.dart';
import 'package:drower_steper/screen/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => homescreen(),
        },
      ),
    ),
  );
}
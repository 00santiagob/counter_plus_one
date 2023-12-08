import 'package:flutter/material.dart';
import 'presentation/screens/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueGrey
      ),
      title: "Counter: +1",
      home: const HomePage(),
    );
  }
}

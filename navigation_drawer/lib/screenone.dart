import 'package:flutter/material.dart';
import 'package:navigation_drawer/screenTwo.dart';

class ScreenOne extends StatefulWidget {
  static const id = "screenone";
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Drawer2"),
        backgroundColor: const Color(0xff764abc),
      ),
// Drawer:
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.amber),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/me.png"),
                ),
                accountName: Text("Muhammad Sheraz"),
                accountEmail: Text("Sananjani104@gmail.com")),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScrrenTwo.id);
                },
                child: const Text("Screen 01")),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:navigation_drawer/screentwo.dart';

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
        title: const Text("Navigation Drawer 1"),
        backgroundColor: const Color(0xff764abc),
      ),
// Drawer:
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xff764abc)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/me.png"),
                ),
                accountName: Text("Muhammad Sheraz"),
                accountEmail: Text("Sananjani104@gmail.com")),
            ListTile(
              leading: const Icon(Icons.pages_outlined),
              title: const Text("Screen 2"),
              onTap: () {
                Navigator.pushNamed(context, ScrrenTwo.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.pages_outlined),
              title: const Text("Screen 1"),
              onTap: () {
                Navigator.pushNamed(context, ScreenOne.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout_rounded),
              title: const Text("Log Out"),
              onTap: () {
                Navigator.pushNamed(context, ScreenOne.id);
              },
            ),
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

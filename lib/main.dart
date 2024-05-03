import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("6-amaliy ishim"),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage("images/4.jpg"),
            ),
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                errorText: "Maydonni to'ldiring",
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Send",
              ),
            )
          ],
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(canvasColor: Colors.black54),
          child: BottomNavigationBar(
            backgroundColor: Colors.black54,
            fixedColor: Colors.yellow,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.wallet), label: "Wallet"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.pie_chart), label: "Pie chart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Person"),
            ],
          ),
        ),
      ),
    );
  }
}
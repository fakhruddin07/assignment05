import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Big Dream App"),
        backgroundColor: Colors.green,
        elevation: 10,
      ),
      body: const Pages(page: "Page 1", color: Colors.green),
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: Image.network("https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png"),
                  decoration: const BoxDecoration(color: Colors.green),
                  accountName: const Text("Fakhruddin Noman"),
                  accountEmail: const Text("noman@gmail.com"))),
          const ListTile(leading: Icon(Icons.pages), title: Text("Page 1"),),
          const ListTile(leading: Icon(Icons.pages), title: Text("Page 2"),),
          const ListTile(leading: Icon(Icons.pages), title: Text("Page 3"),),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.pages), label: "Page 1"),
        BottomNavigationBarItem(icon: Icon(Icons.pages), label: "Page 2"),
        BottomNavigationBarItem(icon: Icon(Icons.pages), label: "Page 3"),
      ]),
    );
  }

}

class Pages extends StatelessWidget{
  final String page;
  final Color color;
  const Pages({super.key, required this.page, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(page,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: color,
        child: const Icon(Icons.add),
      ),
    );
  }

}

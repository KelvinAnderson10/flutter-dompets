import 'package:dompets/view/new_record_page.dart';
import 'package:dompets/util/transition.dart';
import 'package:dompets/view/account_page.dart';
import 'package:dompets/view/dashboard_page.dart';
import 'package:dompets/view/home_page.dart';
import 'package:dompets/view/wishlist_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Halaman Utama'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  final pages = <Widget>[
    const HomePage(),
    const DashboardPage(),
    const WishlistPage(),
    const AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(createRoute(const NewRecordPage()));
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () => {
                  setState(() => {_index = 0})
                },
                color: _index == 0 ? Colors.pink : Colors.grey,
              )),
              Expanded(
                  child: IconButton(
                icon: const Icon(
                  Icons.summarize,
                ),
                onPressed: () => {
                  setState(() => {_index = 1})
                },
                color: _index == 1 ? Colors.pink : Colors.grey,
              )),
              const Expanded(child: SizedBox()),
              Expanded(
                  child: IconButton(
                icon: const Icon(
                  Icons.receipt_long,
                ),
                onPressed: () => {
                  setState(() => {_index = 2})
                },
                color: _index == 2 ? Colors.pink : Colors.grey,
              )),
              Expanded(
                  child: IconButton(
                icon: const Icon(
                  Icons.person,
                ),
                onPressed: () => {
                  setState(() => {_index = 3})
                },
                color: _index == 3 ? Colors.pink : Colors.grey,
              )),
            ],
          )),
    );
  }
}

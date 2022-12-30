import 'package:dompets/newItemForm.dart';
import 'package:dompets/utils/transition.dart';
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Selamat Datang di Dompets',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(createRoute(const NewItemForm()));
        },
        tooltip: 'Tambahkan catatan bar',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: IconButton(
                icon: const Icon(
                  Icons.home,
                ),
                onPressed: () {},
              )),
              Expanded(
                  child: IconButton(
                icon: const Icon(
                  Icons.summarize,
                ),
                onPressed: () {},
              )),
              const Expanded(
                  child: SizedBox()
              ),
              Expanded(
                  child: IconButton(
                icon: const Icon(
                  Icons.receipt_long,
                ),
                onPressed: () {},
              )),
              Expanded(
                  child: IconButton(
                icon: const Icon(
                  Icons.person,
                ),
                onPressed: () {},
              )),
            ],
          )),
    );
  }
}

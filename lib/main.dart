import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: false,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _sayac = 0;

  void _sayaciArttir() {

    setState(() {
      _sayac++;
    });
    debugPrint("Sayaç şu anki değeri: $_sayac");
  }

  void sayaciSifirla()
  {
    setState(() {
      _sayac=0;
    });
    debugPrint("Sayacınız sıfırlandı.");
  }

  void _sayaciAzalt() {
    setState(() {
      _sayac--;
    });
    debugPrint("Sayaç şu anki değeri: $_sayac");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayaç Uygulaması"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Butona basılma sayısı:"),
            Text(
              _sayac.toString(),
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
               color: _sayac < 0 ? Colors.red : (_sayac > 0 ? Colors.green : Colors.black),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _sayaciArttir,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: _sayaciAzalt,
            child: const Icon(Icons.remove),
          ),
          SizedBox(
            height: 5,
          ),
          FloatingActionButton(
            onPressed: sayaciSifirla,
            child: const Icon(Icons.clear),
          ),
        ],
      ),
    );
  }
}

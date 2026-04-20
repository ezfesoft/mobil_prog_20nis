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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //-------------------------------
  //-------------------------------
  //-------------------------------
  //--------------Değişkenler Bu Alana Yazılacak
  int sayi = 0;
  //-------------------------------
  //-------------------------------
  //-------------------------------
  //--------------Değişkenler Bu Alana Yazılacak
  //-------------------------------
  //-------------------------------
  //-------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("20 Nisan BGT"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            //------------------------------------
            //--------------------------------------
            //------------------------------------
            //--------------Widgetler Bu Alana Yazılacak
            //------------------------------------
            //------------------------------------
            //------------------------------------
            Text(
              'Butona $sayi kez tıklandı.',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      sayi++;
                    });
                  },
                  icon: Icon(Icons.add),
                  label: Text("Artır"),
                ),
                SizedBox(width: 10),
                OutlinedButton.icon(
                  onPressed: () {
                    setState(() {
                      sayi = 0;
                    });
                  },
                  icon: Icon(Icons.refresh),
                  label: Text("Sıfırla"),
                ),
              ],
            ),
            //------------------------------------
            //------------------------------------
            //------------------------------------
            //--------------Widgetler Bu Alana Yazılacak
            //------------------------------------
            //------------------------------------
            //------------------------------------
          ],
        ),
      ),
    );
  }
}

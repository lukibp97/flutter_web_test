import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Logo',
            style: TextStyle(
              color: Color(0xff53f60f),
            )),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Paket',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Kontak',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('|', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(
            width: 10,
          ),
          OutlinedButton(
              onPressed: () {},
              child: Text('Masuk'),
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topRight: Radius.circular(5)),
                  ),
                  side: BorderSide(color: Color(0xff53f60f)),
                  foregroundColor: Color(0xff53f60f))),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text('Daftar'),
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topRight: Radius.circular(5)),
                  ),
                  backgroundColor: Color(0xff53f60f),
                  foregroundColor: Colors.black)),
          SizedBox(
            width: 24,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 627,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 140,
                        child: Image.asset(
                          'assets/images/HeroImage.png',
                          width: 767,
                          height: 627,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // decoration: BoxDecoration(
                        //   image: DecorationImage(
                        //     image: AssetImage("assets/images/HeroImage.png"),
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                        margin: EdgeInsets.only(top: 100),
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('##1 Fitness Terlengkap di Yogyakarta',
                                style: TextStyle(color: Color(0xff53f60f))),
                            Text.rich(
                              TextSpan(style: TextStyle(height: 1), children: [
                                TextSpan(
                                  text: 'BUILD YOUR BODY AND THEN ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 72),
                                ),
                                TextSpan(
                                  text: 'FLEX IT',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 72,
                                      shadows: [
                                        Shadow(
                                            // bottomLeft
                                            offset: Offset(-1.5, -1.5),
                                            color: Colors.white),
                                        Shadow(
                                            // bottomRight
                                            offset: Offset(1.5, -1.5),
                                            color: Colors.white),
                                        Shadow(
                                            // topRight
                                            offset: Offset(1.5, 1.5),
                                            color: Colors.white),
                                        Shadow(
                                            // topLeft
                                            offset: Offset(-1.5, 1.5),
                                            color: Colors.white),
                                      ]),
                                ),
                              ]),
                            ),
                            SizedBox(height: 4),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.43,
                              child: Text(
                                  'Segera gabung bersama kami. Flex Gym and Cafe menggunakan alat import berkualitas dengan harga yang terjangkau serta memiliki tempat luas, sejuk, dan nyaman, Start your membership right now!',
                                  style: TextStyle(
                                      color: Color(0xff999999), fontSize: 18)),
                            ),
                            SizedBox(height: 24),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Daftar Sekarang'),
                                    style: OutlinedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 17, horizontal: 15),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(5),
                                              topRight: Radius.circular(5)),
                                        ),
                                        backgroundColor: Color(0xff53f60f),
                                        foregroundColor: Colors.black)),
                                SizedBox(width: 16),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Kontak Kami'),
                                    style: OutlinedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 17, horizontal: 29),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      side:
                                          BorderSide(color: Color(0xff53f60f)),
                                      backgroundColor: Colors.black,
                                      foregroundColor: Color(0xff53f60f),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

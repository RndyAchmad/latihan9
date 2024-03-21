import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peduli Lindungi',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 62, 56, 248),
        title: const Text('Entering a Public Space?'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(20),
              crossAxisCount: 3,
              children: [
                FeatureItem(
                  title: 'COVID-19 Vaksin',
                  image: 'vaksin.jpeg',
                ),
                FeatureItem(
                  title: 'COVID-19 Tes Result',
                  image: 'vaksin.jpeg',
                ),
                FeatureItem(
                  title: 'EHAC',
                  image: 'vaksin.jpeg',
                ),
                FeatureItem(
                  title: 'COVID-19 Vaksin',
                  image: 'vaksin.jpeg',
                ),
                FeatureItem(
                  title: 'COVID-19 Tes Result',
                  image: 'vaksin.jpeg',
                ),
                FeatureItem(
                  title: 'EHAC',
                  image: 'vaksin.jpeg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String title;
  final String image;

  const FeatureItem({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Aksi ketika item fitur ditekan
      },
      child: Card(
        elevation: 2.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

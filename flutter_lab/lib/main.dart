import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
      'Item 6',
      'Item 7',
      'Item 8',
      'Item 9',
      'Item 10',
    ];
    final List<IconData> icons = [
      Icons.home,
      Icons.star,
      Icons.settings,
      Icons.favorite,
      Icons.person,
      Icons.shopping_cart,
      Icons.phone,
      Icons.email,
      Icons.map,
      Icons.camera,
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Lab',
      theme: ThemeData(primarySwatch: Colors.blue),

      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Lab')),

        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1.2,
          ),
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container( 
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue, width: 1.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icons[index], size: 32, color: Colors.blue),
                  const SizedBox(height: 8),
                  Text(items[index]),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

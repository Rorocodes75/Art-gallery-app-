import 'package:art_gallery_app/data/about_art.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HandcraftPage extends StatefulWidget {
  const HandcraftPage({super.key});

  @override
  State<HandcraftPage> createState() => _HandcraftPageState();
}

class _HandcraftPageState extends State<HandcraftPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 241, 250),
        title: const Text('handcraft',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MasonryGridView.builder(
  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // Number of columns
  ),
  mainAxisSpacing: 8,
  crossAxisSpacing: 8,
  itemCount: handscrafts.length,
  itemBuilder: (context, index) => ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image.network(
      handscrafts[index]['handcraft_img'],
      fit: BoxFit.cover,
    ),
  ),
)
      ),
    );
  }
}
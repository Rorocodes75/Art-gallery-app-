import 'package:art_gallery_app/data/about_art.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PaintingsPage extends StatefulWidget {
  const PaintingsPage({super.key});

  @override
  State<PaintingsPage> createState() => _PaintingsPageState();
}

class _PaintingsPageState extends State<PaintingsPage> {
  // Sample list of photos
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 241, 250),
        title: const Text('paintings',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38)),
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
  itemCount: paintings.length,
  itemBuilder: (context, index) => ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image.network(
      paintings[index]['painting'],
      fit: BoxFit.cover,
    ),
  ),
)
      ),
    );
  }
}
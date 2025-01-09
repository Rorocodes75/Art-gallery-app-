import 'package:art_gallery_app/data/about_art.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SculpturesPage extends StatefulWidget {
  const SculpturesPage({super.key});

  @override
  State<SculpturesPage> createState() => _SculpturesPageState();
}

class _SculpturesPageState extends State<SculpturesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 241, 250),
        title: const Text('Sculptures',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38)),
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
  itemCount: Sculptures.length,
  itemBuilder: (context, index) => ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image.network(
      Sculptures[index]['Sculpture_img'],
      fit: BoxFit.cover,
    ),
  ),
)
      ),
    );
  }
}
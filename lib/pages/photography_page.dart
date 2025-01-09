import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:art_gallery_app/data/about_art.dart';

class PhotographyPage extends StatefulWidget {
  const PhotographyPage({super.key});

  @override
  State<PhotographyPage> createState() => _PhotographyPageState();
}

class _PhotographyPageState extends State<PhotographyPage> {
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
  itemCount: photography.length,
  itemBuilder: (context, index) => ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image.network(
      photography[index]['photots'],
      fit: BoxFit.cover,
    ),
  ),
)
      ),
    );
  }
}
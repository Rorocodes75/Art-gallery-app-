import 'package:art_gallery_app/constant/spacing.dart';
import 'package:flutter/material.dart';

class ArtDetails extends StatefulWidget {
  final details;
  const ArtDetails({super.key, this.details});

  @override
  State<ArtDetails> createState() => _ArtDetailsState();
}

class _ArtDetailsState extends State<ArtDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: Text(
          widget.details['title'],
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38),
        ),
      ),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              width: 300,
              height: 400,
              child: Image.network(
               widget.details['img'],
                height: 150,
                fit: BoxFit.fill,
              )),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text("Artist:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color:  const Color.fromARGB(255, 99, 90, 86)),),
                width12,
                 Text(widget.details['artist'],textAlign: TextAlign.center, style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: const Color.fromARGB(255, 99, 90, 86)
                 ),),
               ],
             ),
                 Text(widget.details['description'],textAlign: TextAlign.center,style: TextStyle( color: const Color.fromARGB(255, 123, 112, 107), fontSize: 18,fontWeight: FontWeight.bold,),),
               ],
             
  
      ),
    );
  }
}

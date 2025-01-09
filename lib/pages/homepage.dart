import 'package:art_gallery_app/constant/spacing.dart';
import 'package:art_gallery_app/extension/nav.dart';
import 'package:art_gallery_app/pages/Sculptures_page.dart';
import 'package:art_gallery_app/pages/art_details.dart';
import 'package:art_gallery_app/pages/handcraft_page.dart';
import 'package:art_gallery_app/pages/paintings_page.dart';
import 'package:art_gallery_app/pages/photography_page.dart';
import 'package:art_gallery_app/pages/sign.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:art_gallery_app/data/about_art.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  @override
  Widget build(BuildContext context) {
    print("home page called");
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Container(
      child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "search for art",
                      border: InputBorder.none,
                      fillColor: const Color.fromARGB(255, 238, 238, 238),
                      filled: true,
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.menu),
                  )
                ],
              ),
              height18,
              Center(
                  child: Text(
                "ART",
                style: TextStyle(
                    color: const Color.fromARGB(255, 32, 32, 35),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
              height18,
              Container(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        context.push(PaintingsPage());
                      },
                   
                   child:  Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            Icons.palette,
                            size: 40,
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                        height2,
                        Text(
                          "paintings",
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color.fromARGB(255, 98, 98, 100),
                          ),
                        )
                      ],
                    ), ),
                    width12,
                     InkWell(
                      onTap: () {
                        context.push(SculpturesPage());
                      },
                   
                   child: 
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(100)),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3qeOwiSEHyN6kfLq5yPCGHZD5a-N5Yc1Nhw&s"),
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                        height2,
                        Text(
                          "Sculptures",
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color.fromARGB(255, 98, 98, 100),
                          ),
                        )
                      ],
                    ),),
                    width12,
                     InkWell(
                      onTap: () {
                        context.push(HandcraftPage());
                      },
                   
                   child: 
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            Icons.waving_hand,
                            size: 40,
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                        height2,
                        Text(
                          "handscrafts",
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color.fromARGB(255, 98, 98, 100),
                          ),
                        )
                      ],
                    ),),
                    width12,
                     InkWell(
                      onTap: () {
                        context.push(PhotographyPage());
                      },
                   
                   child: 
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            Icons.camera,
                            size: 40,
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                        height2,
                        Text(
                          "photography",
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color.fromARGB(255, 98, 98, 100),
                          ),
                        )
                      ],
                    ),)
                  ],
                ),
              ),
              Text(
                "Top Art",
                style: TextStyle(
                    color: const Color.fromARGB(255, 32, 32, 35),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              GridView.builder(
                  itemCount: top_art.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 200),
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        context.push(ArtDetails(details:top_art[i]));
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                width: 300,
                                color: const Color.fromARGB(255, 192, 192, 192),
                                child: Image.network(
                                  top_art[i]['img'],
                                  height: 150,
                                  fit: BoxFit.fill,
                                )),
                            Text(
                              top_art[i]['title'],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          )),
    ));
  }
}

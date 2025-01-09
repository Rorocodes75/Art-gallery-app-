import 'package:art_gallery_app/pages/sign.dart';
import 'package:flutter/material.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image:NetworkImage("https://i.pinimg.com/736x/7b/ca/72/7bca720aa45d62d06dc9059eb66bdcb9.jpg") ,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 800),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 20), 
              child: SizedBox(
                width: 150, 
                height: 50, 
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ),
                    );
                  },
                  child: const Text(
                    "get started",
                    style: TextStyle(
                      fontSize: 16, 
                      color: Color.fromARGB(255, 169, 152, 82), 
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
}
}
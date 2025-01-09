import 'package:art_gallery_app/pages/homepage.dart';
import 'package:art_gallery_app/pages/sign.dart';
import 'package:art_gallery_app/pages/welcomepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:art_gallery_app/services/database.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
 WidgetsFlutterBinding.ensureInitialized();
await dotenv.load(fileName: '.env');

// Debug print
print('Supabase URL: ${dotenv.env['supabaseURL']}');
print('Supabase Key: ${dotenv.env['supabaseKey']}');

await Supabase.initialize(
  url: dotenv.env['supabaseURL']!,
  anonKey: dotenv.env['supabaseKey']!,
);
runApp(const MainApp());
    runApp(const MainApp());

}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Welcomepage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'koya_onboarding.dart'; // 👈 Import your KOYA screen

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://xhqltovjyvsmnpwdzdvo.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhocWx0b3ZqeXZzbW5wd2R6ZHZvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjE5ODI4NjIsImV4cCI6MjA3NzU1ODg2Mn0.8tH5uSJlS5r2WhQTJZ5CAFAXIpn48O3YeDPJQn6Rktw',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KOYA',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
      ),
      home: const KoyaOnboarding(), // 👈 Start from KOYA screen
    );
  }
}

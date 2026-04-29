import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'features/onboarding/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // 🔹 Inisialisasi Hive untuk offline storage
  await Hive.initFlutter();
  // Nanti: await Hive.openBox('regulations');
  
  runApp(const ReguSyncApp());
}

class ReguSyncApp extends StatelessWidget {
  const ReguSyncApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReguSync',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        fontFamily: 'GoogleFonts.inter', // Nanti tambah google_fonts
      ),
      home: const OnboardingScreen(), // 🔹 Mulai dari onboarding
    );
  }
}
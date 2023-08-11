import 'package:clippy/home/home_screen.dart';
import 'package:clippy/utils/prefs.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:media_kit/media_kit.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(MainApp(sharedPreferences));
}

class MainApp extends StatefulWidget {
  const MainApp(this.sharedPreferences, {super.key});

  final SharedPreferences sharedPreferences;
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(widget.sharedPreferences),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

import 'package:counter/views/counter/counterscreen/counter_screen.dart';
import 'package:counter/views/counter/provider/counter_provider.dart';
import 'package:counter/views/login/views/login_screen.dart';
import 'package:counter/views/signup/signup_screen.dart';
import 'package:counter/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: CounterProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: const TextTheme(
              labelMedium:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          appBarTheme: const AppBarTheme(centerTitle: true),
          colorSchemeSeed: Colors.orange,
        ),
        darkTheme: ThemeData(
          appBarTheme: const AppBarTheme(centerTitle: true),
          textTheme: const TextTheme(
            labelMedium:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          brightness: Brightness.dark,
        ),
        themeMode: ThemeMode.system,
        routes: {
          '/': (context) => const SplashScreen(),
          '/login': (context) => const LoginScreen(),
          '/signup': (context) => const SignupScreen(),
          '/counter': (context) => const CounterScreen(),
        },
      ),
    );
  }
}

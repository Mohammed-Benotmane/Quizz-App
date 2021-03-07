import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizzapp/providers/questions.dart';
import 'package:quizzapp/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Admob.initialize();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Questions(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
          accentColor: Colors.deepPurpleAccent,
        ),
        home: HomePage(),
      ),
    );
  }
}

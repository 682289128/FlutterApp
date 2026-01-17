import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
      ],
      child: MyApp(),
    ),
  );
}

// ----------------- PROVIDER -----------------
class CounterProvider extends ChangeNotifier {
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }
}

// ----------------- MAIN APP -----------------
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Package Demo',
      home: PackageDemoScreen(),
    );
  }
}

// ----------------- DEMO SCREEN -----------------
class PackageDemoScreen extends StatefulWidget {
  @override
  _PackageDemoScreenState createState() => _PackageDemoScreenState();
}

class _PackageDemoScreenState extends State<PackageDemoScreen> {
  String apiData = "Press Fetch";
  String savedValue = "";

  // ----------------- HTTP -----------------
  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          apiData = data['title'];
        });
      } else {
        setState(() {
          apiData = "Error: ${response.statusCode}";
        });
      }
    } catch (e) {
      setState(() {
        apiData = "Error: $e";
      });
    }
  }

  // ----------------- Shared Preferences -----------------
  Future<void> saveValue() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('myValue', 'Hello from Flutter!');
    setState(() {
      savedValue = 'Saved!';
    });
  }

  Future<void> loadValue() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      savedValue = prefs.getString('myValue') ?? 'Nothing saved';
    });
  }

  // ----------------- URL Launcher -----------------
  void openUrl() async {
    final url = Uri.parse("https://flutter.dev");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Cannot open URL")));
    }
  }

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Flutter Package Demo")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // ----------------- PROVIDER -----------------
            Text("Provider Counter: ${counterProvider.counter}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: counterProvider.increment,
              child: Text("Increment Counter"),
            ),
            Divider(height: 30),

            // ----------------- HTTP -----------------
            Text("HTTP Data: $apiData", style: TextStyle(fontSize: 16)),
            ElevatedButton(
              onPressed: fetchData,
              child: Text("Fetch Data from API"),
            ),
            Divider(height: 30),

            // ----------------- SHARED PREFERENCES -----------------
            Text("Shared Preferences: $savedValue", style: TextStyle(fontSize: 16)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: saveValue, child: Text("Save")),
                ElevatedButton(onPressed: loadValue, child: Text("Load")),
              ],
            ),
            Divider(height: 30),

            // ----------------- FLUTTER SVG -----------------
            Text("Flutter SVG Example", style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            SvgPicture.network(
              'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.svg',
              height: 100,
            ),
            Divider(height: 30),

            // ----------------- URL LAUNCHER -----------------
            ElevatedButton(
              onPressed: openUrl,
              child: Text("Open flutter.dev in browser"),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_fusion/flutter_fusion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NeumorphicContainer(
                onPressed: () {},
                width: 200,
                height: 56,
                child: const Center(child: Text('Data')),
              ),
              const SizedBox(height: 8),
              NeumorphicButton(
                onPressed: () {},
                width: 200,
                height: 56,
                title: 'Teste',
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NeumorphicRadioButton<int>(
                    value: 1,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    title: 'A',
                    width: 50,
                    height: 50,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 16),
                  NeumorphicRadioButton<int>(
                    value: 2,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    title: 'B',
                    width: 50,
                    height: 50,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const NeumorphicText(
                text: 'Neumorphic',
                depth: 5.0,
                textStyle: TextStyle(
                  fontSize: 64.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffe7ecef),
                ),
              ),
              const SizedBox(height: 8),
              const NeumorphicIcon(iconData: Icons.home, size: 64),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NeumorphicCheckbox<int>(
                    value: 1,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    size: 50,
                    isDarkMode: false,
                    duration: const Duration(milliseconds: 100),
                  ),
                  const SizedBox(width: 16),
                  NeumorphicCheckbox<int>(
                    value: 2,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    size: 50,
                    isDarkMode: false,
                    duration: const Duration(milliseconds: 100),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:theme_provider/theme_provider.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      defaultThemeId: "light",
      themes: [
        AppTheme(
          id: "light",
          data: ThemeData.light(useMaterial3: true)
              .copyWith(primaryColor: Colors.blue),
          description: "Light theme with default themeColor",
        ),
        AppTheme(
          id: "dark",
          data: ThemeData.dark(useMaterial3: true)
              .copyWith(primaryColor: Colors.teal),
          description: "Light theme with default themeColor",
        ),
        AppTheme(
          id: "red",
          data: ThemeData.light(useMaterial3: true)
              .copyWith(primaryColor: Colors.teal),
          description: "Light theme with default themeColor",
        ),
      ],
      child: ThemeConsumer(
        child: Builder(builder: (themeContext) {
          return MaterialApp(
            title: 'Amazon Clone',
            theme: ThemeProvider.themeOf(themeContext).data,
            // theme: ThemeData(
            //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            //   useMaterial3: true,
            // ),
            home: Scaffold(
              appBar: AppBar(
                title: const Text("Amazon Replica"),
              ),
              body: const Center(
                child: Text('Inception of the project'),
              ),
            ),
          );
        }),
      ),
    );
  }
}

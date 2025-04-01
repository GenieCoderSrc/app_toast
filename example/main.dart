import 'package:flutter/material.dart';
import 'package:app_toast/app_toast.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Toast Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App Toast Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                AppToast.showToast(
                  msg: "This is a toast message",
                  longTime: true,
                  gravity: ToastGravity.BOTTOM,
                  bgColor: Colors.black,
                  txtColor: Colors.white,
                  fontSize: 16.0,
                  isErrorMsg: false,
                );
              },
              child: const Text("Show Toast"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AppToast.showSnackBar(
                  context: context,
                  msg: "This is a snackbar message",
                  bgColor: Colors.blueGrey,
                );
              },
              child: const Text("Show SnackBar"),
            ),
          ],
        ),
      ),
    );
  }
}

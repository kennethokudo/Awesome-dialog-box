import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ecommerce_app/myButton.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AWESOME DIALOG"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(
              onPressed: () {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.warning,
                  animType: AnimType.leftSlide,
                  showCloseIcon: true,
                  title: "Warning",
                  desc: "this is the description of the awesome dialog box",
                  btnOkOnPress: () {},
                ).show();
              },
              text: "Warning dialog",
              color: Colors.amber,
            ),
            const SizedBox(height: 20),
            MyButton(
              onPressed: () {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.success,
                  animType: AnimType.leftSlide,
                  showCloseIcon: false,
                  title: "Success",
                  desc: "this is the description of the awesome dialog box",
                  btnOkOnPress: () {},
                ).show();
              },
              text: "Success",
              color: Colors.green,
            ),
            const SizedBox(height: 20),
            MyButton(
              onPressed: () {
                AwesomeDialog(
                  btnOkColor: Colors.red,
                  context: context,
                  dialogType: DialogType.error,
                  animType: AnimType.leftSlide,
                  showCloseIcon: false,
                  title: "Error",
                  desc: "this is the description of the awesome dialog box",
                  btnOkOnPress: () {},
                ).show();
              },
              text: "Error",
              color: Colors.red,
            ),
            const SizedBox(height: 20),
            MyButton(
              onPressed: () {
                AwesomeDialog(
                        context: context,
                        dialogType: DialogType.question,
                        animType: AnimType.leftSlide,
                        showCloseIcon: false,
                        title: "Question",
                        desc:
                            "this is the description of the awesome dialog box",
                        btnOkOnPress: () {},
                        btnCancelOnPress: () {})
                    .show();
              },
              text: "Question",
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

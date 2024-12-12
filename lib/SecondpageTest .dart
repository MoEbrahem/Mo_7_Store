import 'package:flutter/material.dart';
import 'package:mo_7_store/core/extensions/context_ext.dart';

class SecondTest extends StatelessWidget {
  const SecondTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Second",
        ),
        centerTitle: true,
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.redAccent,
        ),
        child: Center(
          child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
              onPressed: () {
                context.pushNamed('routeName');
              },
              child: const Text(
                "Go To first",
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
        ),
      ),
    );
  }
}
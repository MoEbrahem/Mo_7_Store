import 'package:flutter/material.dart';
import 'package:mo_7_store/core/extensions/context_ext.dart';
import 'package:mo_7_store/core/routes/AppRoutes.dart';

class FirstTest extends StatelessWidget {
  const FirstTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "First",
        ),
        centerTitle: true,
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blueGrey,
        ),
        child: Center(
          child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
              onPressed: () {
                context.pushNamed(AppRoutes.secondPage);
              },
              child:  Text(
                "Go To Second",
                style: TextStyle(
                  fontSize: 22,
                  color: context.color.mainColor,
                ),
              )),
        ),
      ),
    );
  }
}

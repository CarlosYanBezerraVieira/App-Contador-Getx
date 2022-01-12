import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/controller/controller.dart';

class SegundaTela extends StatelessWidget {
  final Controller ctrl = Get.find();
  SegundaTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.indigo)),
          child: SizedBox(
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Valor: ${ctrl.counter}",
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

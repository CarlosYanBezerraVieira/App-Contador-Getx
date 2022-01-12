import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/controller/controller.dart';
import 'package:getx_test/1_Metodo_GetBuilder/segundatela.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(Controller());
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.indigo)),
          child: SizedBox(
            width: 200,
            height: 200,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: GetBuilder<Controller>(
                      init: Controller(),
                      builder: (_) => Text(
                            "Valor: ${controller.counter}",
                            style: const TextStyle(fontSize: 20),
                          )),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(SegundaTela());
                  },
                  child: const Text("Próxima tela"),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          controller.increment();
        },
      ),
    );
  }
}

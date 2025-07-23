import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/provider/value_provider.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    final provider = context.read<ValueProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text("Screen C")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Enter new value:", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter new text",
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                provider.updateValue(controller.text);
                Navigator.pop(context);
              },
              child: const Text("Update and Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}

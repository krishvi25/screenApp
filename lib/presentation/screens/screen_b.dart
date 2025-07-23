import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/provider/value_provider.dart';
import 'screen_c.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    final value = context.watch<ValueProvider>().value;

    return Scaffold(
      appBar: AppBar(title: const Text("Screen B")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ScreenC()),
                );
              },
              child: const Text("Go to C"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Back to A"),
            )
          ],
        ),
      ),
    );
  }
}

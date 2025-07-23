import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/provider/value_provider.dart';
import 'screen_b.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    final value = context.watch<ValueProvider>().value;

    return PopScope(
      canPop: false, // Prevent default pop
      onPopInvoked: (didPop) async {
        if (didPop) return;

        final shouldExit = await showDialog<bool>(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Exit App"),
                content: const Text("Do you want to exit the app?"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text("No"),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: const Text("Yes"),
                  ),
                ],
              ),
            ) ??
            false;

        if (shouldExit && context.mounted) {
          Navigator.of(context).maybePop(); // Exit app
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text("Screen A")),
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
                    MaterialPageRoute(builder: (_) => const ScreenB()),
                  );
                },
                child: const Text("Go to B"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

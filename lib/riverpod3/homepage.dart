/*import 'package:deneme2/riverpod3/all_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sayacGoster = ref.read<SayacProvider>(sayacIslemi);
    final arttirici = ref.watch<SayacProvider>(sayacIslemi);
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(sayacGoster.value.toString(),
                style: const TextStyle(fontSize: 24)),
            Text(
              ref.read(message),
              style: const TextStyle(fontSize: 24),
            ),
            TextButton(
                onPressed: () {
                  arttirici.sayacArt();
                },
                child: const Text('Sayacı arttır')),
                TextButton(
                onPressed: () {
                  arttirici.sayacSifirla();
                },
                child: const Text('Sayacı Sıfırla'))
          ]),
        ),
      ),
    );
  }
}*/

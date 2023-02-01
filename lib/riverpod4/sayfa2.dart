import 'package:deneme2/riverpod4/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IkinciSayfa extends StatelessWidget {
  const IkinciSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('2. sayfa buildi çalıştı');
    return Scaffold(
      appBar: AppBar(title: const Text('Riverpod 4')),
      body: Center(
        child: Consumer(
            builder: (BuildContext context, WidgetRef reff, Widget? child) {
          final rv = reff.watch(state);
          return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sayaç: ${rv.sayac}',
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: (() {
                      rv.sayacArttir();
                    }),
                    child: const Text('Sayaç Arttır')),
                TextButton(
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          // return object of type Dialog
                          return AlertDialog(
                            title: const Text("Basılı tuttun"),
                            content: TextField(
                              onChanged: (value) {
                                rv.sehirDegistir(value);
                              },
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text("Kaapaat "),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    onPressed: (() {
                      rv.sayacSifirla();
                    }),
                    child: const Text('Sayaç Sifirla')),
                TextButton(
                    onPressed: (() {
                      rv.sayacAzalt();
                    }),
                    child: const Text('Sayaç Azalt'))
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text('2. sayfadasınnn'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Geri DÖnnn')),
            const SizedBox(
              height: 30,
            ),
            Text('Şehir:${rv.sehir}')
          ]);
        }),
      ),
    );
  }
}

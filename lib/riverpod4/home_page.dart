import 'package:deneme2/riverpod4/providers.dart';
import 'package:deneme2/riverpod4/sayfa2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Ana widget stateless kalsın ilgili yada sadece çalışmasını istediğin widgetleri consumer ile sarmala
//WidgetRef'ten sonra gelen ref'i her consumerda farklı yap

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('homepage rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod 4'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: Consumer(
                builder: (BuildContext context, WidgetRef solA, Widget? child) {
              final sla = solA.watch(state);
              return Container(
                  color: Colors.yellow,
                  child: Column(
                    children: [
                      const Text(
                        'Sol Widget',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Sehir: ${sla.sehir}',
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Sayaç: ${sla.sayac}',
                        style: const TextStyle(fontSize: 24),
                      )
                    ],
                  ));
            })),
            Expanded(
                child: Container(
              color: Colors.green,
              child: Column(children: [
                ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IkinciSayfa()));
                    }),
                    child: const Text('2. sayfaya git')),
                const Text(
                  'SagWidget A',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  height: 300,
                  width: 180,
                  color: Colors.purple,
                  child: Column(children: [
                    const Text(
                      'SagWidget B',
                      style: TextStyle(fontSize: 20),
                    ),
                    Consumer(builder:
                        (BuildContext context, WidgetRef sagB, Widget? child) {
                      print('sagB consumer çalıştı');
                      final sgb = sagB.read(state);
                      return ElevatedButton(
                          onPressed: (() {
                            sgb.sayacArttir();
                          }),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black),
                          child: const Text('Sayacı Arttır'));
                    }),
                    Container(
                      color: Colors.white,
                      height: 150,
                      width: 160,
                      child: Consumer(builder: (BuildContext context,
                          WidgetRef sagC, Widget? child) {
                        print('sagC consumer çalıştı');
                        final sgc = sagC.read(state);

                        return Column(children: [
                          const Text(
                            'SagWidget C',
                            style: TextStyle(fontSize: 20),
                          ),
                          Consumer(builder: (BuildContext context,
                              WidgetRef ref, Widget? child) {
                            final sgc2 = ref.watch(state);
                            return Text(
                              'Şehir: ${sgc2.sehir}',
                              style: const TextStyle(fontSize: 20),
                            );
                          }),
                          TextField(onChanged: ((value) {
                            sgc.sehirDegistir(value);
                          }))
                        ]);
                      }),
                    )
                  ]),
                )
              ]),
            ))
          ],
        ),
      ),
    );
  }
}

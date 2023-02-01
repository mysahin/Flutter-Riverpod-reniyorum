/*import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final merhaba = Provider((ref) => 'Merhaba Kainat');
final sayacProvider = ChangeNotifierProvider(((ref) => SayacArttir()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    debugPrint('MyApp Çalıştı');
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('Home page çalıştı');
    return Consumer(builder: (context, ref, child) {
      var say = ref.watch<SayacArttir>(sayacProvider);
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(ref.read<String>(merhaba),
                style: const TextStyle(fontSize: 24)),
            Text(say.value.toString(), style: const TextStyle(fontSize: 24))
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            say.incCount();
          },
          child: const Icon(Icons.add),
        ),
      );
    });
  }
}

class SayacArttir with ChangeNotifier {
  int _deger = 0;
  int get value => _deger;
  incCount() {
    _deger++;
    notifyListeners();
  }
}
*/
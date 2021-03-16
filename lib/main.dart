import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:starter/home/ui/home.dart';
import 'package:starter/utils/widgets/theme.dart';

void main() {
  runApp(
    // For widgets to be able to read providers, we need to wrap the entire
    // application in a "ProviderScope" widget.
    // This is where the state of our providers will be stored.
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campali',
      theme: appTheme(context),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

final counterProvider = StateProvider((ref) => 0);

// class Home extends HookWidget {
//   final String title;

//   const Home({Key key, this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(this.title)),
//       body: Center(
//         // Consumer is a widget that allows you reading providers.
//         // You could also use the hook "useProvider" if you uses flutter_hooks
//         child: Consumer(builder: (context, watch, _) {
//           final count = watch(counterProvider).state;
//           return Text('$count');
//         }),
//       ),
//       floatingActionButton: FloatingActionButton(
//         // The read method is an utility to read a provider without listening to it
//         onPressed: () => context.read(counterProvider).state++,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

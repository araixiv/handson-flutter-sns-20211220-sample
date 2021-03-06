// 依存パッケージ
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';

// 参照ファイル
import '/timeline/timeline_view.dart';
import '/postmodal/postmodal_view.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MarkingCloud SNS',
      home: const TimeLinePage(),
      routes: {
        '/post': (BuildContext context) => const PostModalPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

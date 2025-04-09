import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Home extends HookWidget {
  const Home({super.key});

  Stream<String> getTime() {
    return Stream.periodic(Duration(seconds: 1), (_) {
      return DateTime.now().toString().substring(0, 19);
    });
  }

  @override
  Widget build(BuildContext context) {
    final dateTime = useStream(getTime());
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: ElevatedButton(
        onPressed: () {},
        child: Text(dateTime.data ?? "null"),
      ),
    );
  }
}

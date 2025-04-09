import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Home extends HookWidget {
  const Home({super.key});

  // Stream<String> getTime() {
  //   return Stream.periodic(Duration(seconds: 1), (_) {
  //     return DateTime.now().toString().substring(0, 19);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final text = useState("");

    useEffect(() {
      controller.addListener(() {
        text.value = controller.text.length.toString();
      });
    }, [controller]);

    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Column(
          children: [
            TextField(controller: controller),
            Text("You Typed ${text.value}"),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider.dart';

import 'package:provider/provider.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<ContainerProvider>(context,listen: false);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Consumer<ContainerProvider>(
              builder: (context, value, child) => Container(
                width: value.resize ? 200 : 100,
                height: value.resize ? 200 : 100,
              ),
            ),
            ElevatedButton(onPressed: (){
              prov.resizeContainer();
            }, child: const Text("click"))
          ],
        ),
      ),
    );
  }
}
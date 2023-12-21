import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const id = "LoginScreen";

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(8),
            child: TextField(),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: TextField(),
          ),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    isDismissible: false,
                    builder: (context) {
                      return SizedBox(
                        height: 200,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text('Ingresar datos'),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Cerrar'))
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: const Text('Mostrar'))
        ],
      ),
    );
  }
}

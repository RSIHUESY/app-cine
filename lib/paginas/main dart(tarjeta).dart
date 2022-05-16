import 'package:app_cine/main.dart';
import 'package:flutter/material.dart';
import 'package:app_cine/paginas/payment_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apartado de Pago',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: PaymentScreen(),
    );
  }
}

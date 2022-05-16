import 'package:app_cine/paginas/payment_service.dart';
import 'package:flutter/material.dart';
import 'package:stripe_payment/stripe_payment.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({ Key? key }) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  PaymentMethod? paymentMethod;
  
  @override
  void initState(){
    super.initState();
    PaymentService.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pago de Pelicula'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'S/. 15',
            style: TextStyle(fontSize: 50),
          ),
          SizedBox(height: 25),
          Center(
            child: ElevatedButton(
              child: Text('Agregue un metodo de pago'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 40),
              ),
              onPressed: () async {
                paymentMethod = await PaymentService().createPaymentMethod();
                print(paymentMethod!.id);
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('Complete su pago ahora'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 40),
              ),
              onPressed: () {
                //payymentMethod = await PaymentService().createPaymentMethod();
                //print(paymentMethod!.id);
              },
            ),
          ),
        ],
      ),
    );
  }
}
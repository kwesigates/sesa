import 'package:flutter/material.dart';

class PaymentInfoPage extends StatefulWidget {
  const PaymentInfoPage({Key? key}) : super(key: key);

  @override
  _PaymentInfoPageState createState() => _PaymentInfoPageState();
}

class _PaymentInfoPageState extends State<PaymentInfoPage> {
  String _cardNumber = '';
  String _cardExpiration = '';
  String _cardSecurityCode = '';

  void _updateCardNumber(String value) {
    setState(() {
      _cardNumber = value;
    });
  }

  void _updateCardExpiration(String value) {
    setState(() {
      _cardExpiration = value;
    });
  }

  void _updateCardSecurityCode(String value) {
    setState(() {
      _cardSecurityCode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Information'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Card Number',
                hintText: 'XXXX-XXXX-XXXX-XXXX',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                _updateCardNumber(value);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Expiration Date',
                hintText: 'MM/YY',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                _updateCardExpiration(value);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Security Code',
                hintText: 'XXX',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                _updateCardSecurityCode(value);
              },
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              // Save payment information and navigate back
              Navigator.pop(context);
            },
            child: const Text('Save Changes'),
          ),
        ],
      ),
    );
  }
}

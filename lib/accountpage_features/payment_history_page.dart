import 'package:flutter/material.dart';

class PaymentHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment History'),
      ),
      body: ListView.builder(
        itemCount: 10, // replace with actual number of payments
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.payment),
            title: Text('Payment ${index + 1}'),
            subtitle: Text('Date: ${DateTime.now().subtract(Duration(days: index)).toString()}'),
            trailing: const Text('\$10.00'), // replace with actual payment amount
            onTap: () {
              // navigate to payment details page
            },
          );
        },
      ),
    );
  }
}

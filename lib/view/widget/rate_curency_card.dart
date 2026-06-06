import 'package:flutter/material.dart';

class RateCurencyCard extends StatelessWidget {
  final String? currency;
  final String? rate;

  const RateCurencyCard({
    super.key,
    required this.currency,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      color: Theme.of(context).colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(currency ?? 'N/A'),
            Text('$rate', style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

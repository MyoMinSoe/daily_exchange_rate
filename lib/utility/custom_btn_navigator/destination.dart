import 'package:flutter/material.dart';

class Destination {
  final String label;
  final IconData icon;
  const Destination({required this.label, required this.icon});
}

var destinations = [
  Destination(label: 'Popular', icon: Icons.trending_up),
  Destination(label: 'အခြားနိုင်ငံများ', icon: Icons.currency_exchange),
  Destination(label: 'ယခင်လဲနှုန်း', icon: Icons.history),
];

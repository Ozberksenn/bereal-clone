import 'package:flutter/material.dart';

Padding input(String hintName, Function(String) onChanged) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 211, 206, 206),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintName,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    ),
  );
}

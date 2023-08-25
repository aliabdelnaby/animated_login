import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key, required this.title, required this.isSecured});

  final String title;
  final bool isSecured;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.transparent, width: 0),
              color: const Color.fromARGB(255, 241, 241, 241),
            ),
            child: TextField(
              obscureText: isSecured,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: title,
                  hintStyle: const TextStyle(color: Colors.grey)),
            ),
          ),
          
        ],
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({super.key});
  @override
  State<MyDrawerHeader> createState() {
    return _MyDrawerHeaderState();
  }
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Container(
      color: Colors.indigo[700],
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image:
                    DecorationImage(image: AssetImage('assets/app/icon.png'))),
          ),
          const Text(
            "Otimização com Reinforcement Learning",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            user.email!,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}

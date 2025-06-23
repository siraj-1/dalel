import 'package:dalel/core/utils/app_assets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CustomProfileHeader extends StatelessWidget {
  const CustomProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final email =
        FirebaseAuth.instance.currentUser?.email ?? "Email not available";

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: 64,
              height: 64,
              child: Image.asset(Assets.profilePIC),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Siraj Houloubi",
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                Text(
                  email,
                  style: const TextStyle(color: Colors.black54, fontSize: 14),
                ),
              ],
            )
          ],
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/edit_profile_screen.dart';

class ProfileSummaryCard extends StatelessWidget {
  const ProfileSummaryCard({
    super.key,
    this.enableOnTap = true,
  });

  final bool enableOnTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        if (enableOnTap) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EditProfileScreen(),
            ),
          );
        }
      },
      leading: const CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: const Text(
        'Rabbil Hasan',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      ),
      subtitle: const Text(
        'rabbil@gmail.com',
        style: TextStyle(color: Colors.white),
      ),
      trailing: enableOnTap ? const Icon(Icons.arrow_forward) : null,
      tileColor: Colors.green,
    );
  }
}

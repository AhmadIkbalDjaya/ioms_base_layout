import 'package:flutter/material.dart';
import 'package:flutter_testing/navbar.dart';
import 'package:flutter_testing/sidebar.dart';

class BaseLayout extends StatelessWidget {
  final Widget? body;
  const BaseLayout({super.key, this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg_app.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const Navbar(),
          const SizedBox(height: 25),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  flex: 1,
                  child: SidebarCrewRecruitment(),
                ),
                const SizedBox(width: 15),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(80, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: body,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_testing/navbar.dart';
import 'package:flutter_testing/sidebar.dart';

class BaseLayout extends StatelessWidget {
  final Widget? body;
  const BaseLayout({super.key, this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg_app2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red.withOpacity(0.6),
              Colors.transparent,
            ],
            begin: Alignment.bottomCenter,
            end: const Alignment(0, -2),
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 1000,
                          sigmaY: 1000,
                        ),
                        child: Container(
                          height: double.maxFinite,
                          width: double.maxFinite,
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 15,
                          ),
                          decoration: BoxDecoration(
                            // color: const Color.fromARGB(80, 0, 0, 0),
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(150, 0, 0, 0),
                                Colors.transparent,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: body,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

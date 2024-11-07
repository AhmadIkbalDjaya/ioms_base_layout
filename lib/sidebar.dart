import 'dart:async';

import 'package:flutter/material.dart';

class SidebarCrewRecruitment extends StatelessWidget {
  const SidebarCrewRecruitment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: const [
              Text(
                "Crew Recruitment\nOperation System",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 15),
              Column(
                children: [
                  SidebarMenu(
                    text: "Crew Order Form",
                  ),
                  SidebarMenu(
                    text: "Crew List Stand By On Shore",
                  ),
                  SidebarMenu(
                    text: "Information Job Vacancy",
                  ),
                  SidebarMenu(
                    text: "Job Application Form",
                  ),
                  SidebarMenu(
                    text: "Crew Recruitment Check List",
                  ),
                  SidebarMenu(
                    text: "Inteview record & Report",
                  ),
                  SidebarMenu(
                    text: "Crew Approve by Principal",
                  ),
                  SidebarMenu(
                    text: "Medical Check Up",
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                "Database Crew Recruitment\nOperation System",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 15),
              Column(
                children: [
                  SidebarMenu(
                    text: "Database Crew Order",
                  ),
                  SidebarMenu(
                    text: "Database Crew List Stand By On Shore",
                  ),
                  SidebarMenu(
                    text: "Database Information Job Vacancy",
                  ),
                  SidebarMenu(
                    text: "Database Job Application Form",
                  ),
                  SidebarMenu(
                    text: "Database Crew Recruitment Check List",
                  ),
                  SidebarMenu(
                    text: "Database Inteview record & Report",
                  ),
                  SidebarMenu(
                    text: "Database Crew Approve by Principal",
                  ),
                  SidebarMenu(
                    text: "Database Medical Check Up",
                  ),
                ],
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const SidebarClock(),
      ],
    );
  }
}

class SidebarClock extends StatefulWidget {
  const SidebarClock({
    super.key,
  });

  @override
  State<SidebarClock> createState() => _SidebarClockState();
}

class _SidebarClockState extends State<SidebarClock> {
  String currentTime = "00:00:00";
  @override
  void initState() {
    super.initState();
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          currentTime =
              "${DateTime.now().hour.toString().padLeft(2, '0')}:${DateTime.now().minute.toString().padLeft(2, '0')}:${DateTime.now().second.toString().padLeft(2, '0')}";
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: const Color(0xFF01578a),
        border: Border.all(
          color: const Color(0xFF004a6d),
          width: 5,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        currentTime,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class SidebarMenu extends StatefulWidget {
  final String text;
  const SidebarMenu({
    super.key,
    this.text = "Sidebar Menu",
  });

  @override
  State<SidebarMenu> createState() => _SidebarMenuState();
}

class _SidebarMenuState extends State<SidebarMenu> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHover = false;
        });
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: isHover ? const Color(0xFFF06053) : null,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

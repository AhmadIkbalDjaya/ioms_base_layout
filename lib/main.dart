import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
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
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(80, 0, 0, 0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
        Container(
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
          child: const Text(
            "07:07:45",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
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

class Navbar extends StatelessWidget {
  const Navbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          flex: 1,
          child: NavbarProfile(),
        ),
        const SizedBox(width: 15),
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Row(
                  children: [
                    NavbarMenu(text: "Crew Recruitment"),
                    SizedBox(width: 25),
                    NavbarMenu(text: "Crew Placement"),
                    SizedBox(width: 25),
                    NavbarMenu(text: "Crew Monitoring"),
                    SizedBox(width: 25),
                    NavbarMenu(text: "Crew Development"),
                    SizedBox(width: 25),
                  ],
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/rpi.png",
                    height: 50,
                  ),
                  Container(
                    color: Colors.white,
                    height: 50,
                    width: 1,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                  ),
                  const Icon(
                    Icons.logout,
                    color: Colors.white,
                    size: 26,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NavbarMenu extends StatefulWidget {
  final String text;
  const NavbarMenu({
    super.key,
    this.text = "Crew Recruitment",
  });

  @override
  State<NavbarMenu> createState() => _NavbarMenuState();
}

class _NavbarMenuState extends State<NavbarMenu> {
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
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: isHover ? null : const Color(0xFF00588a),
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHover
              ? const [
                  BoxShadow(
                    color: Color.fromARGB(255, 65, 211, 255),
                  ),
                  BoxShadow(
                    color: Color(0xFF00588a),
                    spreadRadius: -5.0,
                    blurRadius: 10.0,
                  ),
                ]
              : null,
        ),
        child: Text(
          widget.text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class NavbarProfile extends StatelessWidget {
  const NavbarProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: Color(0xFFF06053),
          child: Icon(
            Icons.person,
            size: 30,
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fahmi Zaki",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                height: 1.2,
              ),
            ),
            Text(
              "President Director",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                height: 1.0,
              ),
            ),
            Text(
              "PT.Ruang Pelaut Indonesia",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                height: 1.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

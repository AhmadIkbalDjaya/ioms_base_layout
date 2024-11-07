import 'package:flutter/material.dart';

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

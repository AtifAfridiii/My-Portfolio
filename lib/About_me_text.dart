import 'package:flutter/material.dart';
import 'package:text_gradiate/text_gradiate.dart';

class AboutMeText extends StatefulWidget {
   final double ratio;
   AboutMeText({super.key, this.ratio=1.3});

  @override
  State<AboutMeText> createState() => _AboutMeTextState();
}

class _AboutMeTextState extends State<AboutMeText>with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

@override
  void initState() {
    super.initState();
    // Initialize the animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true); // Repeat animation in reverse

    // Initialize the animation to control opacity
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose controller when not in use
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeTransition(
                      opacity: _animation, // Apply the fade-in and fade-out effect
                      child: Row(
                        children: [
                           TextGradiate(
  text: Text(
    'Hello! ',
    style: TextStyle(fontSize: 51.0,fontWeight: FontWeight.bold,),
  ),
  colors: [
    Colors.blue, Colors.purpleAccent,Colors.pink ,
    ],
  gradientType: GradientType.linear,
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  tileMode: TileMode.clamp,
),
    TextGradiate(
  text: Text(
    'I M Atif Afridi ',
    style: TextStyle(fontSize: 31.0,fontWeight: FontWeight.bold,color: Colors.white,),
  ),
  colors: [Colors.white,Colors.white24,Colors.white54,Colors.white],
  gradientType: GradientType.linear,
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  tileMode: TileMode.clamp,
),
                                                ],
                      ),
                    ),
 
            const Text(
              'Flutter Developer with 1+ Year of Experience',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 15),
            const SelectableText(
              '''I am a passionate Flutter developer with over a year of hands-on experience building cross-platform mobile applications. With a strong focus on creating seamless and responsive user experiences, I specialize in end-to-end app development, from frontend design to backend integration. My work spans a diverse range of industries, including e-commerce, task management, chat applications, and utilities like QR code scanners.

Core Expertise:
- Cross-Platform Development: Proficient in building high-performance apps for both iOS and Android with a single codebase using Flutter.
- State Management: Expertise in managing complex application states using Provider for scalability and ease of maintenance.
- Firebase Integration: Experienced in integrating Firebase services such as Firestore, Realtime Database, and Authentication to implement real-time data synchronization and secure user management.
- Feature-Rich Applications: Developed apps with advanced features like task reminders, push notifications, QR code scanning, and image handling.
- Backend and API Integration: Strong in handling REST APIs and cloud-based services to ensure efficient communication between the frontend and backend.
- Custom UI/UX: Skilled in crafting intuitive and visually appealing user interfaces using Flutter’s flexible widget system, with a focus on responsiveness and performance optimization.

Project Highlights:
- Task Management App: Created a task management app that allows users to create, prioritize, and set reminders for tasks, featuring real-time data synchronization with Firebase and push notifications.
- E-Commerce App (Dukan): Developed an e-commerce platform with multi-role functionality for buyers and sellers, integrating Stripe for payments and Firebase for user authentication and store management.
- QR Code Scanner & Generator App: Built an app that scans and generates QR codes, maintains a history of scanned items, and allows users to scan codes from their gallery.

Approach:
I strive to deliver clean, maintainable code with a strong emphasis on performance and scalability. I am committed to continuous learning and staying up-to-date with the latest technologies and best practices to provide innovative solutions.

Educational Background: 
- Bachelor of Science (BS) in Computer Science (In Progress)
''',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}

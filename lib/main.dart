import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [ 
          // GIF Background
          SizedBox.expand(
            child: Image.asset(
              'assets/mobile-gif.gif', // replace with your GIF
              fit: BoxFit.cover,
            ),
          ),

          // Main content with AppBar and profile container
          SafeArea(
            child: Column(
              children: [
                // Gradient AppBar replacement
                Container(
                  height: kToolbarHeight + 5, // same as AppBar height + divider
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromARGB(255, 79, 79, 79), Color.fromARGB(255, 65, 107, 68)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: const Center(
                    child: Text(  
                      'MY PROFILE',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Divider(height: 2, thickness: 4, color: Colors.black),

                const SizedBox(height: 20),

                // Center container with profile info
                Expanded(
                  child: Center(
                    child: Container(
                      width: 350,
                      padding: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        // Gradient for container
                        gradient: const LinearGradient(
                          colors: [Color(0xFF8E24AA), Color(0xFF1B5E20)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black,
                          width: 3,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Profile Picture with Black Circle Border
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                                width: 3,
                              ),
                            ),
                            child: const CircleAvatar(
                              radius: 80,
                              backgroundImage: AssetImage('assets/Profile.jpg'),
                            ),
                          ),

                          const SizedBox(height: 25),

                          const Text(
                            'Arnie Lydzustre',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            'STUDENT DEVELOPER',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 3,
                              color: Colors.white70,
                            ),
                          ),

                          const SizedBox(height: 25),

                          const Divider(
                            thickness: 2,
                            color: Colors.black,
                          ),

                          const SizedBox(height: 20),

                          // Phone Card
                          SizedBox(
                            width: double.infinity,
                            child: Card(
                              elevation: 5,
                              child: const ListTile(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 8),
                                leading: Icon(
                                  Icons.phone,
                                  size: 28,
                                  color: Color(0xFF1B5E20),
                                ),
                                title: Text(
                                  '+63 927 366 7983',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 15),

                          // Email Card
                          SizedBox(
                            width: double.infinity,
                            child: Card(
                              elevation: 5,
                              child: const ListTile(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 8),
                                leading: Icon(
                                  Icons.email,
                                  size: 28,
                                  color: Color(0xFF1B5E20),
                                ),
                                title: Text(
                                  'asdasdasd%gmaiu;.copm',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
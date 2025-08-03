import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget {
  final List<Map<String, dynamic>> leaderboardData = [
    {
      'name': 'Swapnil Anand',
      'score': 1200,
      'image': 'assets/images/userimage.jpg',
    },
    {
      'name': 'Shreya Kumari',
      'score': 1150,
      'image': 'assets/images/user2.png',
    },
    {
      'name': 'Noah Thompson',
      'score': 1100,
      'image': 'assets/images/user3.png',
    },
    {
      'name': 'Sophia Sekhar',
      'score': 1050,
      'image': 'assets/images/user4.png',
    },
    {'name': 'Alex Hope', 'score': 1000, 'image': 'assets/images/user5.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141A1F),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Leaderboard",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24),

              Expanded(
                child: ListView.builder(
                  itemCount: leaderboardData.length,
                  itemBuilder: (context, index) {
                    final user = leaderboardData[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          // User Photo
                          CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(user['image']),
                          ),
                          SizedBox(width: 16),

                          // Name and Score
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${user['name']}",
                                  style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Donation Score: ${user['score']}",
                                  style: TextStyle(
                                    color: Color(0xff9EADBF),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

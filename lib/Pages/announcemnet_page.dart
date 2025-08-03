import 'package:flutter/material.dart';

class AnnouncementPage extends StatelessWidget {
  final List<Map<String, dynamic>> announcements = [
    {
      "title": "Project Proposal Deadline Extension",
      "date": "03/08/2025",
      "description":
          "The deadline for submitting your project proposals has been extended to August 15th. Use this time to refine your ideas and reach out to mentors if you need help.",
    },
    {
      "title": "Networking Event Announcement",
      "date": "02/08/2025",
      "description":
          "Join us on September 5th at the Innovation Hub to meet fellow interns, mentors, and professionals. RSVP by October 30th to confirm your attendance.",
    },
    {
      "title": "Upcoming Workshop: Effective Communication",
      "date": "01/08/2025",
      "description":
          "Enhance your communication skills on August 28th with topics like active listening, clear articulation, and effective feedback. Registration is open.",
    },
    {
      "title": "Welcome New Interns!",
      "date": "01/08/2025",
      "description":
          "Welcome aboard! We're excited to have you. Get ready to explore real projects, ask questions, and make an impact. Your journey starts now!",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141A1F),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Announcements",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24),

              // Announcements List
              Expanded(
                child: ListView.builder(
                  itemCount: announcements.length,
                  itemBuilder: (context, index) {
                    final item = announcements[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 16),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xFF222A30),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title
                          Text(
                            item['title'],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),

                          // Description
                          Text(
                            item['description'],
                            style: TextStyle(
                              color: Color(0xff9EADBF),
                              fontSize: 15,
                              height: 1.5,
                            ),
                          ),
                          SizedBox(height: 12),

                          // Date
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              item['date'],
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 13,
                              ),
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

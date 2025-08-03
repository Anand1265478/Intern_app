import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF141A1F),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.menu, color: Colors.white),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Dashboard",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 24),
                ],
              ),
              SizedBox(height: 24),

              // Profile Section
              Column(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundImage: AssetImage("assets/images/userimage.jpg"),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Swapnil Anand",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  Text(
                    "Intern",
                    style: TextStyle(color: Color(0xff9EADBF), fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 32),

              // Referral Code Box
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF222A30),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.share, color: Colors.white),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        "Referral Code: anand2025",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // Donation Box
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF222A30),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.attach_money, color: Colors.white),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        "Total Donations Raised: ₹5,000",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              // Rewards Title
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Rewards / Unlockables",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Grid of Rewards
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.1,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  rewardItem("bronze.png", "Bronze Badge"),
                  rewardItem("silver.png", "Silver Badge"),
                  rewardItem("gold.png", "Gold Badge"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget rewardItem(String imageName, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/$imageName", width: 163),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: Color(0xffffffff), fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

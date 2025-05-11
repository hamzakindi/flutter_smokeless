import 'package:flutter/material.dart';
import 'personalise_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LinearProgressIndicator(value: 1.0),
                SizedBox(height: 16),
                Text(
                  "Your Smoking Profile",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  items: [
                    DropdownMenuItem(value: "Less than a year", child: Text("Less than a year")),
                    DropdownMenuItem(value: "1-5 years", child: Text("1-5 years")),
                    DropdownMenuItem(value: "5-10 years", child: Text("5-10 years")),
                    DropdownMenuItem(value: "10+ years", child: Text("10+ years")),
                  ],
                  onChanged: (value) {},
                  decoration: InputDecoration(labelText: "How long have you been smoking?"),
                ),
                SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  items: [
                    DropdownMenuItem(value: "Daily", child: Text("Daily")),
                    DropdownMenuItem(value: "Occasionally", child: Text("Occasionally")),
                  ],
                  onChanged: (value) {},
                  decoration: InputDecoration(labelText: "How often do you smoke?"),
                ),
                SizedBox(height: 16),
                CheckboxListTile(
                  title: Text("Cigarettes"),
                  value: false,
                  onChanged: (value) {},
                ),
                CheckboxListTile(
                  title: Text("E-cigarettes"),
                  value: false,
                  onChanged: (value) {},
                ),
                SizedBox(height: 16),
                SwitchListTile(
                  title: Text("Have you tried to quit before?"),
                  value: false,
                  onChanged: (value) {},
                ),
                CheckboxListTile(
                  title: Text("Nicotine patches"),
                  value: false,
                  onChanged: (value) {},
                ),
                DropdownButtonFormField<String>(
                  items: [
                    DropdownMenuItem(value: "Less than a month", child: Text("Less than a month")),
                    DropdownMenuItem(value: "1-6 months", child: Text("1-6 months")),
                  ],
                  onChanged: (value) {},
                  decoration: InputDecoration(labelText: "How long did you quit for?"),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(labelText: "Why did you start smoking again?"),
                ),
                SizedBox(height: 16),
                CheckboxListTile(
                  title: Text("Stress"),
                  value: false,
                  onChanged: (value) {},
                ),
                CheckboxListTile(
                  title: Text("Social situations"),
                  value: false,
                  onChanged: (value) {},
                ),
                TextField(
                  decoration: InputDecoration(labelText: "What are your motivations for quitting?"),
                ),
                SizedBox(height: 16),
                Text("Fagerström Test questions go here"),
                DropdownButtonFormField<String>(
                  items: [
                    DropdownMenuItem(value: "Visual", child: Text("Visual")),
                    DropdownMenuItem(value: "Auditory", child: Text("Auditory")),
                    DropdownMenuItem(value: "Kinesthetic", child: Text("Kinesthetic")),
                  ],
                  onChanged: (value) {},
                  decoration: InputDecoration(labelText: "What is your preferred learning style?"),
                ),
                SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PersonalizedProfileScreen()),
                      );
                    },
                    child: Text("Your Smoking Profile"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
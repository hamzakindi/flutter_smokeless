import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart'; // For pie chart visualization
import 'experimentmanagement_screen.dart';

class PersonalizedProfileScreen extends StatelessWidget {
  const PersonalizedProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Smoking Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Summary of your smoking habits, triggers, and challenges",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text("Smoking Profile Visualization"),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: AspectRatio(
                      aspectRatio: MediaQuery.of(context).size.aspectRatio, // Dynamically adjust to fit screen dimensions
                      child: PieChart(
                        PieChartData(
                          sections: [
                            PieChartSectionData(
                              value: 20,
                              title: "Emotional Distress",
                              color: Colors.red.shade300, // Adjusted to lighter shade for black font
                              titleStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            PieChartSectionData(
                              value: 15,
                              title: "Psychological Cravings",
                              color: Colors.blue.shade300, // Adjusted to lighter shade for black font
                              titleStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            PieChartSectionData(
                              value: 10,
                              title: "Environmental Triggers",
                              color: Colors.green.shade300, // Adjusted to lighter shade for black font
                              titleStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            PieChartSectionData(
                              value: 20,
                              title: "Regulating Emotions",
                              color: Colors.orange.shade300, // Adjusted to lighter shade for black font
                              titleStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            PieChartSectionData(
                              value: 15,
                              title: "Ineffective Coping",
                              color: Colors.purple.shade300, // Adjusted to lighter shade for black font
                              titleStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            PieChartSectionData(
                              value: 10,
                              title: "Perceived Benefits",
                              color: Colors.yellow.shade600, // Adjusted to lighter shade for black font
                              titleStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            PieChartSectionData(
                              value: 10,
                              title: "Last Cigarette Urge",
                              color: Colors.brown.shade300, // Adjusted to lighter shade for black font
                              titleStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tutorial",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 16),
                        TutorialStep(
                          title: "Welcome to QuitSmart",
                          description: "Explanation of the 'tiny experiments' concept.",
                          visualAid: Icon(Icons.lightbulb, size: 100, color: Colors.deepPurple),
                          buttonText: "Next",
                          onPressed: () {},
                        ),
                        TutorialStep(
                          title: "Using QuitSmart",
                          description: "Demonstration of how to use the app's features (experiment library, tracking, etc.).",
                          visualAid: Icon(Icons.library_books, size: 100, color: Colors.deepPurple),
                          buttonText: "Next",
                          onPressed: () {},
                        ),
                        TutorialStep(
                          title: "Your Commitment",
                          description: "Emphasis on user engagement and honesty for the app to work.",
                          visualAid: Icon(Icons.mood, size: 100, color: Colors.deepPurple),
                          buttonText: "Finish Tutorial",
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExperimentManagementScreen()),
                    );
                  },
                  child: Text("Start Your First Tiny Experiment"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TutorialStep extends StatelessWidget {
  final String title;
  final String description;
  final Widget visualAid;
  final String buttonText;
  final VoidCallback onPressed;

  const TutorialStep({super.key, 
    required this.title,
    required this.description,
    required this.visualAid,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(description),
        SizedBox(height: 16),
        Center(child: visualAid),
        SizedBox(height: 16),
        Center(
          child: ElevatedButton(
            onPressed: onPressed,
            child: Text(buttonText),
          ),
        ),
        SizedBox(height: 32),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import './active_experiments_screen.dart'; // Added import

class ExperimentManagementScreen extends StatelessWidget {
  const ExperimentManagementScreen({super.key});

  static const TextStyle sectionHeadingStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My Experiments"),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2, // Gave PersonalizedInsightsWidget more flex
              child: const PersonalizedInsightsWidget(),
            ),
            Expanded(
              flex: 1, // Gave TabBarView less flex
              child: TabBarView(
                children: [
                  const ActiveExperimentsScreen(), // Changed to use the new screen
                  _buildCompletedExperiments(),
                  _buildFailedExperiments(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCompletedExperiments() {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        ListTile(
          title: const Text("Experiment 1"),
          subtitle: const Text("Result: Success"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.repeat),
                onPressed: () {},
                tooltip: "Repeat Experiment",
              ),
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {},
                tooltip: "Modify Experiment",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFailedExperiments() {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        ListTile(
          title: const Text("Experiment 1"),
          subtitle: const Text("Reason: Lack of time"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.repeat),
                onPressed: () {},
                tooltip: "Retry Experiment",
              ),
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {},
                tooltip: "Modify Experiment",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PersonalizedInsightsWidget extends StatelessWidget {
  const PersonalizedInsightsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0), // Reduced bottom padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Your Insights",
            style: ExperimentManagementScreen.sectionHeadingStyle,
          ),
          const SizedBox(height: 16),
          const Text("- Significant triggers: Stress, Social situations"),
          const Text("- Effective coping mechanisms: Deep breathing, Exercise"),
          const Text("- High-risk situations: Parties, Work deadlines"),
          const Text("- Individual patterns: Morning cravings, Evening relaxation"),
          const SizedBox(height: 32),
          const Text(
            "Recommended Experiments",
            style: ExperimentManagementScreen.sectionHeadingStyle,
          ),
          const SizedBox(height: 16),
          const ListTile(
            title: Text("Experiment 1: Deep Breathing"),
            subtitle: Text("Why this experiment? Helps manage stress effectively."),
          ),
          const ListTile(
            title: Text("Experiment 2: Social Support"),
            subtitle: Text("Why this experiment? Encourages accountability."),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Adjust Quit Plan"),
          ),
          // Restoring the previously commented out sections
          const SizedBox(height: 32),
          const Text(
            "Relapse Management",
            style: ExperimentManagementScreen.sectionHeadingStyle,
          ),
          const SizedBox(height: 16),
          const Text("Acknowledge the relapse"),
          const SizedBox(height: 8.0), // Added spacing
          const TextField(
            decoration: InputDecoration(labelText: "What triggered the relapse?"),
          ),
          const SizedBox(height: 8.0), // Added spacing
          const TextField(
            decoration: InputDecoration(labelText: "How can you prevent this in the future?"),
          ),
          const SizedBox(height: 32.0), // Changed spacing for consistency
          const Text( // Restored the heading
            "Tools to get back on track",
            style: ExperimentManagementScreen.sectionHeadingStyle,
          ),
          const SizedBox(height: 16), // Added spacing between heading and buttons
          SingleChildScrollView( // Restored SingleChildScrollView
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Meditation"),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Support Groups"),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Journaling"),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Mindful Walking"),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Body Scan"),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Mindful Eating"),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Gratitude List"),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Yoga Stretch"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Removed ToolsSection class as it is unused
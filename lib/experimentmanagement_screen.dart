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
            Flexible( // Ensures PersonalizedInsightsWidget doesn't demand infinite height from the Column
              fit: FlexFit.loose,
              child: const PersonalizedInsightsWidget(),
            ),
            Expanded(
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
      padding: const EdgeInsets.all(16.0),
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
          const TextField(
            decoration: InputDecoration(labelText: "What triggered the relapse?"),
          ),
          const TextField(
            decoration: InputDecoration(labelText: "How can you prevent this in the future?"),
          ),
          Column( // This is the "Tools to get back on track" section
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Tools to get back on track",
                style: ExperimentManagementScreen.sectionHeadingStyle,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Meditation"),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Support Groups"),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Journaling"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ToolsSection extends StatelessWidget {
  const ToolsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Tools to get back on track",
            style: ExperimentManagementScreen.sectionHeadingStyle,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Meditation"),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Support Groups"),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Journaling"),
          ),
        ],
      ),
    );
  }
}
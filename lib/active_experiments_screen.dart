import 'package:flutter/material.dart';
import './experimentmanagement_screen.dart'; // Import for sectionHeadingStyle

class ActiveExperimentsScreen extends StatelessWidget {
  const ActiveExperimentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // The title for this screen's AppBar might be redundant if it's already part of a TabBarView
          // For now, let's keep it to match the original structure.
          // Consider removing or adjusting if the parent screen provides sufficient context.
          title: const Text(
            "Active Experiments",
            style: ExperimentManagementScreen.sectionHeadingStyle, // Apply the style
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Ongoing"),
              Tab(text: "Paused"),
              Tab(text: "Upcoming"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              padding: const EdgeInsets.all(16.0),
              children: const [
                ListTile(
                  title: Text("Temperature Contrast Therapy"),
                  subtitle: Text("Hold an ice cube in your hand or splash cold water on your face when a craving hits."),
                ),
                ListTile(
                  title: Text("Tactile Substitution"),
                  subtitle: Text("Experiment with different textures, like running your fingers over sandpaper or squeezing a rubber band."),
                ),
                ListTile(
                  title: Text("Deep Listening to Breath"),
                  subtitle: Text("Focus on how your breath shifts when cravings arise. Play with different breathing patterns."),
                ),
                ListTile(
                  title: Text("Layering Aromatherapy"),
                  subtitle: Text("Test essential oils like peppermint or citrus layered with the soap experiment."),
                ),
              ],
            ),
            ListView(
              padding: const EdgeInsets.all(16.0),
              children: const [
                ListTile(
                  title: Text("Sensory Anchoring Through Food"),
                  subtitle: Text("Try intensely flavored foods like sour candy or ginger chews to redirect focus."),
                ),
                ListTile(
                  title: Text("Finger Gestures & Hand Movements"),
                  subtitle: Text("Mimic the hand-to-mouth motion of smoking using an empty straw or chewing on a toothpick."),
                ),
              ],
            ),
            ListView(
              padding: const EdgeInsets.all(16.0),
              children: const [
                ListTile(
                  title: Text("Craving Journaling with a Twist"),
                  subtitle: Text("Jot down a metaphor for how the craving feels to gain psychological insight."),
                ),
                ListTile(
                  title: Text("Music-Based Disruption"),
                  subtitle: Text("Play a song that energizes or relaxes you to counter the habitual cycle."),
                ),
                ListTile(
                  title: Text("Micro-Movement Redirection"),
                  subtitle: Text("Try deliberate small physical movements like tapping fingers or stretching arms."),
                ),
                ListTile(
                  title: Text("Immersive Visualization"),
                  subtitle: Text("Imagine yourself in a strong sensory environment like standing by the ocean."),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

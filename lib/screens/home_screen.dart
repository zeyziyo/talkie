import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../widgets/mode1_widget.dart';
import '../widgets/mode2_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TalkLand',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Debug log display
            Consumer<AppState>(
              builder: (context, appState, child) {
                if (appState.debugLogs.isEmpty) {
                  return const SizedBox.shrink();
                }
                return Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    appState.debugLogs.join('\n'),
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                    ),
                  ),
                );
              },
            ),
            
            const Divider(),
            
            // Mode Selector
            Consumer<AppState>(
              builder: (context, appState, child) {
                return SegmentedButton<String>(
                  segments: const [
                    ButtonSegment(
                      value: 'translate',
                      label: Text('MODE 1 · 의미 학습'),
                    ),
                    ButtonSegment(
                      value: 'practice',
                      label: Text('MODE 2 · 발음 훈련'),
                    ),
                  ],
                  selected: {appState.currentMode},
                  onSelectionChanged: (Set<String> newSelection) {
                    appState.setMode(newSelection.first);
                  },
                );
              },
            ),
            
            const Divider(),
            
            // Mode content
            Expanded(
              child: Consumer<AppState>(
                builder: (context, appState, child) {
                  if (appState.currentMode == 'translate') {
                    return const Mode1Widget();
                  } else {
                    return const Mode2Widget();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

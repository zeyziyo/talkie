import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../widgets/mode1_widget.dart';
import '../widgets/mode2_widget.dart';
import '../widgets/mode3_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '🌍 TalkLand',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF667eea),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Tab Selector
          Consumer<AppState>(
            builder: (context, appState, child) {
              return Container(
                margin: const EdgeInsets.all(16),
                child: SegmentedButton<int>(
                  segments: [
                    ButtonSegment<int>(
                      value: 0,
                      icon: const Icon(Icons.search),
                    ),
                    ButtonSegment<int>(
                      value: 1,
                      label: Text('복습 (${appState.studyRecords.length})'),
                      icon: const Icon(Icons.library_books),
                    ),
                    ButtonSegment<int>(
                      value: 2,
                      label: Text('학습 자료 (${appState.studyMaterials.length})'),
                    ),
                  ],
                  selected: {appState.currentMode},
                  onSelectionChanged: (Set<int> newSelection) {
                    appState.switchMode(newSelection.first);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return const Color(0xFF667eea);
                      }
                      return Colors.white;
                    }),
                    foregroundColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return Colors.white;
                      }
                      return const Color(0xFF667eea);
                    }),
                  ),
                ),
              );
            },
          ),
          
          // Mode Content
          Expanded(
            child: Consumer<AppState>(
              builder: (context, appState, child) {
                if (appState.currentMode == 0) {
                  return const Mode1Widget();
                } else if (appState.currentMode == 1) {
                  return const Mode2Widget();
                } else {
                  return const Mode3Widget();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

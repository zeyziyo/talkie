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
          // Status Message
          Consumer<AppState>(
            builder: (context, appState, child) {
              if (appState.statusMessage.isEmpty) {
                return const SizedBox(height: 4);
              }
              return Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                color: Colors.blue[50],
                child: Text(
                  appState.statusMessage,
                  style: const TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              );
            },
          ),
          
          // Tab Selector
          Consumer<AppState>(
            builder: (context, appState, child) {
              return Container(
                margin: const EdgeInsets.all(16),
                child: SegmentedButton<int>(
                  segments: [
                    ButtonSegment<int>(
                      value: 0,
                      label: Text('검색 (${appState.currentMode == 0 ? '●' : '○'})'),
                      icon: const Icon(Icons.search),
                    ),
                    ButtonSegment<int>(
                      value: 1,
                      label: Text('복습 (${appState.studyRecords.length})'),
                      icon: const Icon(Icons.library_books),
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
                } else {
                  return const Mode2Widget();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

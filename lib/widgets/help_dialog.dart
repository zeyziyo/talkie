import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../l10n/app_localizations.dart';

class HelpDialog extends StatefulWidget {
  final VoidCallback onStartTutorial;

  const HelpDialog({
    super.key,
    required this.onStartTutorial,
  });

  @override
  State<HelpDialog> createState() => _HelpDialogState();
}

class _HelpDialogState extends State<HelpDialog> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: double.maxFinite,
        height: 600,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.helpTitle, // "Usage Guide"
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const Divider(),
            
            // Tabs
            TabBar(
              controller: _tabController,
              labelColor: const Color(0xFF667eea),
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: l10n.helpTabModes), // "Modes"
                Tab(text: l10n.helpTabJson),  // "JSON Format"
                Tab(text: l10n.helpTabTour),  // "Interactive Tour"
              ],
            ),
            
            // Content
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildModesGuide(l10n),
                  _buildJsonGuide(l10n),
                  _buildTourGuide(l10n),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildModesGuide(AppLocalizations l10n) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildSectionTitle('🔍 ${l10n.search} (Mode 1)'),
        Text(l10n.helpMode1Desc), // "Recognize voice, translate, and listen."
        const SizedBox(height: 16),
        
        _buildSectionTitle('📖 ${l10n.tabReview} (Mode 2)'),
        Text(l10n.helpMode2Desc), // "Review saved sentences and track progress."
        const SizedBox(height: 16),
        
        _buildSectionTitle('📄 ${l10n.tabStudyMaterial} (Mode 3)'),
        Text(l10n.helpMode3Desc), // "Import study materials and study systematically."
        const SizedBox(height: 16),
        
        _buildSectionTitle('🎙️ ${l10n.tabSpeaking} (Mode 4)'),
        Text(l10n.helpMode4Desc), // "Practice speaking with immediate feedback."
      ],
    );
  }

  Widget _buildJsonGuide(AppLocalizations l10n) {
    const jsonExample = '''
{
  "subject": "Basic Greetings",
  "source": "Textbook Vol.1",
  "source_language": "ko",
  "target_language": "en",
  "entries": [
    {
      "source_text": "안녕하세요",
      "target_text": "Hello"
    },
    {
      "source_text": "감사합니다",
      "target_text": "Thank you"
    }
  ]
}''';

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          l10n.helpJsonDesc, // "To import study materials, use a JSON file with the following structure:"
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: Stack(
            children: [
              const SelectableText(
                jsonExample,
                style: TextStyle(fontFamily: 'monospace', fontSize: 13),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.copy, size: 18),
                  tooltip: 'Copy',
                  onPressed: () {
                    Clipboard.setData(const ClipboardData(text: jsonExample));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Copied to clipboard!')),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTourGuide(AppLocalizations l10n) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.touch_app, size: 64, color: Color(0xFF667eea)),
          const SizedBox(height: 24),
          Text(
            l10n.helpTourDesc, // "Start the interactive tutorial to learn the basics."
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context); // Close dialog
              widget.onStartTutorial(); // Start tutorial
            },
            icon: const Icon(Icons.play_arrow),
            label: Text(l10n.startTutorial),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              backgroundColor: const Color(0xFF667eea),
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFF667eea),
        ),
      ),
    );
  }
}

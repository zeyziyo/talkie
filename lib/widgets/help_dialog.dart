import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher

class HelpDialog extends StatefulWidget {
  final int initialModeIndex;
  final VoidCallback onStartTutorial;

  const HelpDialog({
    super.key,
    required this.onStartTutorial,
    this.initialModeIndex = 0,
  });

  @override
  State<HelpDialog> createState() => _HelpDialogState();
}

class _HelpDialogState extends State<HelpDialog> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    // Map home screen index (0,1,2) to page index (0,1,2)
    // Mode 1 (index 0) -> Page 0
    _currentPage = widget.initialModeIndex;
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
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
                  l10n.helpTitle,
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
                Tab(text: l10n.helpTabModes),
                Tab(text: l10n.helpTabJson),
                Tab(text: l10n.helpTabTour),
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
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              _buildModeCard(
                icon: Icons.search,
                title: '${l10n.search} (Mode 1)',
                desc: l10n.helpMode1Desc,
                details: l10n.helpMode1Details,
                color: Colors.blue[50]!,
              ),
              _buildModeCard(
                icon: Icons.auto_stories,
                title: '${l10n.mode2Title} (Mode 2)',
                desc: l10n.helpMode2Desc,
                details: l10n.helpMode2Details,
                color: Colors.green[50]!,
              ),
              _buildModeCard(
                icon: Icons.record_voice_over,
                title: '${l10n.tabSpeaking} (Mode 3)',
                desc: l10n.helpMode3Desc,
                details: l10n.helpMode3Details,
                color: Colors.purple[50]!,
              ),
              _buildModeCard(
                icon: Icons.chat_bubble,
                title: '${l10n.chatAiChat} (Chat)',
                desc: l10n.helpModeChatDesc,
                details: l10n.helpModeChatDetails,
                color: Colors.orange[50]!,
              ),
            ],
          ),
        ),
        
        // Page Indicator
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index
                      ? const Color(0xFF667eea)
                      : Colors.grey[300],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget _buildModeCard({
    required IconData icon,
    required String title,
    required String desc,
    required String details,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 64, color: const Color(0xFF667eea)),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              desc,
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            const Divider(height: 32),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                details,
                style: const TextStyle(
                    fontSize: 15,
                    height: 1.6,
                    color: Colors.black87
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildJsonGuide(AppLocalizations l10n) {
    const jsonExample = '''
{
  "source_language": "ko",
  "target_language": "en",
  "entries": [
    {
      "source_text": "사과",
      "target_text": "Apple",
      "note": "Fruit"
    }
  ],
  "dialogues": [
    {
      "title": "공항 체크인 연습",
      "persona": "공항 직원",
      "messages": [
        { 
          "speaker": "Me", 
          "source_text": "체크인 부탁드립니다.", 
          "target_text": "I'd like to check in." 
        }
      ]
    }
  ]
}''';

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          l10n.helpJsonDesc, 
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          l10n.helpDialogueImportDesc,
          style: TextStyle(fontSize: 14, color: Colors.blue[700]),
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
                  tooltip: l10n.copy,
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: jsonExample));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(l10n.copiedToClipboard)),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Text(
          l10n.importTotal(1), // Reuse as header if needed, but details better
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const Divider(),
        Text(
          l10n.helpDialogueImportDetails,
          style: const TextStyle(fontSize: 14, height: 1.6),
        ),
      ],
    );
  }

  Future<void> _launchUrl() async {
    final Uri url = Uri.parse('https://zeyziyo.github.io/talkie/guide.html');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
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

          /*
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: _launchUrl,
            icon: const Icon(Icons.open_in_browser),
            label: Text(
              l10n.viewOnlineGuide, 
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color(0xFF667eea),
              side: const BorderSide(color: Color(0xFF667eea), width: 1.5),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              elevation: 0,
            ),
          ),
          */
        ],
      ),
    );
  }
}


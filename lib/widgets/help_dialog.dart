import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../l10n/app_localizations.dart';

class HelpDialog extends StatefulWidget {
  final int initialModeIndex;
  final int initialTabIndex; // New: To select Quick Start by default
  final VoidCallback onStartTutorial;

  const HelpDialog({
    super.key,
    required this.onStartTutorial,
    this.initialModeIndex = 0,
    this.initialTabIndex = 0, // Default to Quick Start
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
    _tabController = TabController(
      length: 4, 
      vsync: this, 
      initialIndex: widget.initialTabIndex
    );
    // Map home screen index (0,1,2,3) to page index
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
                Tab(text: l10n.helpTabQuickStart), // New
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
                  _buildQuickStartGuide(l10n), // New
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
                icon: Icons.translate,
                title: l10n.homeTab,
                desc: l10n.helpMode1Desc,
                details: l10n.helpMode1Details,
                color: Colors.blue[50]!,
              ),
              _buildModeCard(
                icon: Icons.auto_stories,
                title: l10n.reviewModeTitle,
                desc: l10n.helpMode2Desc,
                details: l10n.helpMode2Details,
                color: Colors.green[50]!,
              ),
              _buildModeCard(
                icon: Icons.record_voice_over,
                title: l10n.practiceModeTitle,
                desc: l10n.helpMode3Desc,
                details: l10n.helpMode3Details,
                color: Colors.purple[50]!,
              ),
              _buildModeCard(
                icon: Icons.document_scanner,
                title: l10n.scanLabel,
                desc: l10n.scanInstructions,
                details: l10n.scanInstructions,
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

  // JSON Example selection state
  String _selectedJsonType = 'sentence';

  Future<String> _loadJsonExample(String type) async {
    final path = 'assets/help/${type}_example.json';
    try {
      return await rootBundle.loadString(path);
    } catch (e) {
      return 'Error loading example: $e';
    }
  }

  Widget _buildJsonGuide(AppLocalizations l10n) {
    String typeDesc = '';
    
    switch (_selectedJsonType) {
      case 'sentence':
        typeDesc = l10n.helpMode2Details; 
        break;
      case 'word':
        typeDesc = l10n.helpMode1Details; 
        break;
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          l10n.helpJsonDesc, 
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        
        // Type Selector
        SegmentedButton<String>(
          segments: [
            ButtonSegment(value: 'sentence', label: Text(l10n.helpJsonTypeSentence)),
            ButtonSegment(value: 'word', label: Text(l10n.helpJsonTypeWord)),
          ],
          selected: {_selectedJsonType},
          onSelectionChanged: (Set<String> newSelection) {
            setState(() {
              _selectedJsonType = newSelection.first;
            });
          },
        ),
        
        const SizedBox(height: 16),
          
        FutureBuilder<String>(
          future: _loadJsonExample(_selectedJsonType),
          builder: (context, snapshot) {
            final jsonExample = snapshot.data ?? 'Loading...';
            
            return Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Stack(
                children: [
                  SelectableText(
                    jsonExample,
                    style: const TextStyle(fontFamily: 'monospace', fontSize: 13),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(Icons.copy, size: 18),
                      tooltip: l10n.copy,
                      onPressed: snapshot.hasData ? () {
                        Clipboard.setData(ClipboardData(text: jsonExample));
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(l10n.copiedToClipboard)),
                        );
                      } : null,
                    ),
                  ),
                ],
              ),
            );
          }
        ),
        const SizedBox(height: 24),
        Text(
          l10n.materialInfo,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const Divider(),
        Text(
          typeDesc,
          style: const TextStyle(fontSize: 14, height: 1.6),
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
            l10n.helpTourDesc,
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

  Widget _buildQuickStartGuide(AppLocalizations l10n) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildStepItem(
          icon: Icons.language,
          color: Colors.blue,
          title: l10n.quickStartStep1Title,
          description: l10n.quickStartStep1Desc,
        ),
        _buildStepItem(
          icon: Icons.sync_alt,
          color: Colors.green,
          title: l10n.quickStartStep2Title,
          description: l10n.quickStartStep2Desc,
        ),
        _buildStepItem(
          icon: Icons.auto_awesome,
          color: Colors.orange,
          title: l10n.quickStartStep3Title,
          description: l10n.quickStartStep3Desc,
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blue[100]!),
          ),
          child: Row(
            children: [
              const Icon(Icons.lightbulb_outline, color: Colors.blue),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  l10n.helpTabTour, 
                  style: const TextStyle(fontSize: 13, color: Colors.blueGrey),
                ),
              ),
              TextButton(
                onPressed: () => _tabController.animateTo(3),
                child: Text(l10n.startTutorial),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStepItem({
    required IconData icon,
    required Color color,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 28),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


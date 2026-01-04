import 'package:flutter/material.dart';

class Mode2Widget extends StatefulWidget {
  const Mode2Widget({super.key});

  @override
  State<Mode2Widget> createState() => _Mode2WidgetState();
}

class _Mode2WidgetState extends State<Mode2Widget> {
  String _slotText = '';
  String _timerText = '';
  String _resultText = '';

  void _startPractice() {
    setState(() {
      _slotText = '🎰';
      _timerText = '발음 중...';
    });

    // Simulate STT result (placeholder implementation)
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _slotText = '안녕하세요';
          _resultText = '정확도: 80%';
          _timerText = '';
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '나는 오늘 커피를 마시고 싶다.',
            style: TextStyle(fontSize: 16),
          ),
          
          const SizedBox(height: 20),
          
          // Slot container
          Container(
            height: 80,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black54),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                _slotText,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          
          const SizedBox(height: 15),
          
          // Timer text
          Text(
            _timerText,
            style: const TextStyle(fontSize: 14),
          ),
          
          const SizedBox(height: 15),
          
          // Start/Stop buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _startPractice,
                child: const Text('START'),
              ),
              const SizedBox(width: 15),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _slotText = '';
                    _timerText = '';
                    _resultText = '';
                  });
                },
                child: const Text('STOP'),
              ),
            ],
          ),
          
          const SizedBox(height: 15),
          
          // Result text
          Text(
            _resultText,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

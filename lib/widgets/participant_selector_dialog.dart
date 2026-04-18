import 'package:flutter/material.dart';

// Phase: Purged. This widget and its model (ChatParticipant) are removed.
class ParticipantSelectorDialog extends StatelessWidget {
  final Function(List<dynamic>) onSelected;
  const ParticipantSelectorDialog({super.key, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}

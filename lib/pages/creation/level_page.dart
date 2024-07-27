import 'package:dnd_character_creator/providers/character_data_provider.dart';
import 'package:dnd_character_creator/providers/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LevelPage extends ConsumerStatefulWidget {
  const LevelPage({super.key});

  @override
  LevelPageState createState() => LevelPageState();
}

class LevelPageState extends ConsumerState<LevelPage> {
  int _level = 1;

  void incrementLevel() {
    setState(() {
      _level++;
    });
  }

  void decrementLevel() {
    setState(() {
      _level--;
    });
  }

  void saveAndNext() {
    ref
        .read(characterDataNotifierProvider.notifier)
        .updateCharacterData(level: _level);
    ref.read(pageProvider.notifier).goToNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Level: $_level'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: decrementLevel,
                  child: const Text('-'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: incrementLevel,
                  child: const Text('+'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: saveAndNext,
              child: const Text('Save and Next'),
            ),
          ],
        ),
      ),
    );
  }
}

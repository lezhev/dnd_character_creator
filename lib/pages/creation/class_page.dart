import 'package:dnd_character_creator/providers/character_data_provider.dart';
import 'package:dnd_character_creator/providers/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClassPage extends ConsumerStatefulWidget {
  const ClassPage({super.key});

  @override
  ClassPageState createState() => ClassPageState();
}

class ClassPageState extends ConsumerState<ClassPage> {
  String? _dropdownvalue = 'artificer';

  void dropdownCallback(String? value) {
    setState(() {
      _dropdownvalue = value;
    });
  }

  void saveAndNext() {
    ref
        .read(characterDataNotifierProvider.notifier)
        .updateCharacterData(characterClass: _dropdownvalue.toString());
    ref.read(pageProvider.notifier).goToNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            DropdownButton<String>(
              items: const [
                DropdownMenuItem<String>(
                    value: 'artificer', child: Text('artificer')),
                DropdownMenuItem<String>(
                    value: 'barbarian', child: Text('barbarian')),
                DropdownMenuItem<String>(value: 'bard', child: Text('bard')),
                DropdownMenuItem<String>(
                    value: 'cleric', child: Text('cleric')),
                DropdownMenuItem<String>(value: 'druid', child: Text('druid')),
                DropdownMenuItem<String>(
                    value: 'fighter', child: Text('fighter')),
                DropdownMenuItem<String>(value: 'monk', child: Text('monk')),
                DropdownMenuItem<String>(
                    value: 'paladin', child: Text('paladin')),
                DropdownMenuItem<String>(
                    value: 'ranger', child: Text('ranger')),
                DropdownMenuItem<String>(value: 'rogue', child: Text('rogue')),
                DropdownMenuItem<String>(
                    value: 'sorcerer', child: Text('sorcerer')),
                DropdownMenuItem<String>(
                    value: 'warlock', child: Text('warlock')),
                DropdownMenuItem<String>(
                    value: 'wizard', child: Text('wizard')),
              ],
              value: _dropdownvalue,
              onChanged: dropdownCallback,
            ),
            ElevatedButton(
              onPressed: () {
                saveAndNext();
              },
              child: const Text('Save and Next'),
            ),
          ],
        ),
      ),
    );
  }
}

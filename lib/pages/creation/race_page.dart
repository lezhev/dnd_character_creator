import 'package:dnd_character_creator/providers/character_data_provider.dart';
import 'package:dnd_character_creator/providers/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RacePage extends ConsumerStatefulWidget {
  const RacePage({super.key});

  @override
  RacePageState createState() => RacePageState();
}

class RacePageState extends ConsumerState<RacePage> {
  String? _dropdownvalue = 'dragonborn';

  void dropdownCallback(String? value) {
    setState(() {
      _dropdownvalue = value;
    });
  }

  void saveAndNext() {
    ref
        .read(characterDataNotifierProvider.notifier)
        .updateCharacterData(characterRace: _dropdownvalue.toString());
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
                    value: 'dragonborn', child: Text('dragonborn')),
                DropdownMenuItem<String>(value: 'dwarf', child: Text('dwarf')),
                DropdownMenuItem<String>(value: 'elf', child: Text('elf')),
                DropdownMenuItem<String>(value: 'gnome', child: Text('gnome')),
                DropdownMenuItem<String>(
                    value: 'half-elf', child: Text('half-elf')),
                DropdownMenuItem<String>(
                    value: 'halfling', child: Text('halfling')),
                DropdownMenuItem<String>(
                    value: 'half-orc', child: Text('half-orc')),
                DropdownMenuItem<String>(value: 'human', child: Text('human')),
                DropdownMenuItem<String>(
                    value: 'tiefling', child: Text('tiefling')),
              ],
              value: _dropdownvalue,
              onChanged: dropdownCallback,
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

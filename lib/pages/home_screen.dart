import 'package:dnd_character_creator/pages/character_list.dart';
import 'package:dnd_character_creator/pages/creation/class_page.dart';
import 'package:dnd_character_creator/pages/creation/level_page.dart';
import 'package:dnd_character_creator/pages/creation/page_navigator.dart';
import 'package:dnd_character_creator/pages/creation/personality_page.dart';
import 'package:dnd_character_creator/pages/creation/race_page.dart';
import 'package:dnd_character_creator/providers/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Получаем PageState и PageController из провайдера
    final pageState = ref.watch(pageProvider);
    final pageController = pageState.pageController;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Creation'),
      ),
      body: Column(
        children: [
          PageNavigator(pageController: pageController),
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (page) {
                ref.read(pageProvider.notifier).setPage(page);
              },
              children: const <Widget>[
                LevelPage(),
                ClassPage(),
                RacePage(),
                PersonalityPage(),
                CharacterList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

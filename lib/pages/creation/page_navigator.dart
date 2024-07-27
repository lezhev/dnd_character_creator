import 'package:dnd_character_creator/providers/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageNavigator extends ConsumerWidget {
  final PageController pageController;
  final ScrollController scrollController = ScrollController();

  PageNavigator({super.key, required this.pageController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageNotifier = ref.read(pageProvider.notifier);
    final currentPage = ref.watch(pageProvider).currentPage;

    final pages = ['Level', 'Class', 'Race', 'Personality', 'list'];

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          (currentPage * 100.0),
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller: scrollController,
        child: Row(
          children: List.generate(pages.length, (index) {
            return Row(
              children: [
                GestureDetector(
                  onTap: () {
                    pageController.jumpToPage(index);
                    pageNotifier.setPage(index);
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: currentPage == index ? Colors.blue : Colors.grey,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(),
                    ),
                    child: Text(
                      pages[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                if (index < pages.length - 1)
                  Container(
                    height: 1.25,
                    width: 20,
                    color: Colors.black,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                  ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

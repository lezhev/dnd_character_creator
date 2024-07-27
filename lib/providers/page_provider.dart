import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageState {
  final int currentPage;
  final PageController pageController;

  PageState({required this.currentPage, required this.pageController});
}

class PageNotifier extends StateNotifier<PageState> {
  PageNotifier()
      : super(PageState(currentPage: 0, pageController: PageController()));

  void setPage(int page) {
    if (page != state.currentPage) {
      state =
          PageState(currentPage: page, pageController: state.pageController);
    }
  }

  void goToNextPage() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        if (state.pageController.hasClients) {
          state.pageController.animateToPage(
            state.currentPage + 1,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
          setPage(state.currentPage + 1);
        }
      },
    );
  }

  void goToPage(int page) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        if (state.pageController.hasClients) {
          state.pageController.animateToPage(
            page,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
          setPage(page);
        }
      },
    );
  }
}

final pageProvider = StateNotifierProvider<PageNotifier, PageState>((ref) {
  return PageNotifier();
});

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:volleyball_scout/src/features/dashboard/presentation/controller/dashboard_controller.dart';

class BottomNavigationWidget extends ConsumerStatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  ConsumerState<BottomNavigationWidget> createState() =>
      _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState
    extends ConsumerState<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    final position = ref.watch(dashboardControllerProvider);

    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            BottomNavigationBar(
              backgroundColor: Theme.of(context).colorScheme.surface,
              selectedItemColor: Colors.amber,
              selectedFontSize: 14,
              unselectedFontSize: 14,
              currentIndex: position,
              onTap: (value) => _onTap(value),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.sports_volleyball),
                  label: 'Games',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: 'Teams',
                ),
              ],
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              left: (MediaQuery.of(context).size.width / 3) * position +
                  ((MediaQuery.of(context).size.width / 3 -
                          MediaQuery.of(context).size.width / 3) /
                      2),
              child: Container(
                height: 2,
                width: MediaQuery.of(context).size.width / 3,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTap(int index) {
    ref.read(dashboardControllerProvider.notifier).setPosition(index);

    switch (index) {
      case 0:
        context.go('/games');
        break;

      case 1:
        context.go('/');
        break;

      case 2:
        context.go('/teams');
        break;

      default:
    }
  }
}

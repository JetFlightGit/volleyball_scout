import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:volleyball_scout/src/features/dashboard/presentation/controller/bottom_navigation_bar.dart';
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

    return GestureDetector(
      onHorizontalDragEnd: (details) => _onSwipe(details, position),
      child: Theme(
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
                elevation: 100,
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
      ),
    );
  }

  void _onSwipe(DragEndDetails details, int position) {
    if (details.primaryVelocity == 0) return; // No swipe occurred

    if (details.primaryVelocity! > 0 && position > 0) {
      ref.read(dashboardControllerProvider.notifier).setPosition(position - 1);
    } else if (details.primaryVelocity! < 0 && position < 2) {
      ref.read(dashboardControllerProvider.notifier).setPosition(position + 1);
    }
    onTap(context, ref);
    return;
  }

  void _onTap(int index) {
    ref.read(dashboardControllerProvider.notifier).setPosition(index);
    onTap(context, ref);
  }
}

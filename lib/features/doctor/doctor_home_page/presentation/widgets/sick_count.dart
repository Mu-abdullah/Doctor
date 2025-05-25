import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../../core/language/lang_keys.dart';
import '../../../../../core/style/color/app_color.dart';
import 'home_count_card.dart';

class SickCount extends StatelessWidget {
  const SickCount({super.key});

  final List<Map<String, dynamic>> cardsData = const [
    {
      'title': LangKeys.entered,
      'count': "1",
      'icon': HugeIcons.strokeRoundedDoctor01,
      'isHighlighted': true,
      'color': AppColors.green,
      'textColor': AppColors.white,
    },
    {
      'title': LangKeys.waiting,
      'count': "10",
      'icon': HugeIcons.strokeRoundedClock01,
      'isHighlighted': true,
      'color': AppColors.yellow,
      'textColor': AppColors.black,
    },
    {
      'title': LangKeys.completed,
      'count': "3",
      'icon': HugeIcons.strokeRoundedCheckmarkCircle01,
      'isHighlighted': true,
      'color': AppColors.black,
      'textColor': AppColors.white,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          itemCount: cardsData.length,
          separatorBuilder: (_, __) => const SizedBox(width: 16),
          itemBuilder: (context, index) {
            final data = cardsData[index];
            return AnimatedCardWrapper(
              index: index,
              child: HomeCountCard(
                cardIcon: data['icon'],
                cardTitle: data['title'],
                cardCount: data['count'],
                isHighlighted: data['isHighlighted'],
                color: data['color'],
                textColor: data['textColor'],
                width: 150,
              ),
            );
          },
        ),
      ),
    );
  }
}

class AnimatedCardWrapper extends StatelessWidget {
  final int index;
  final Widget child;

  const AnimatedCardWrapper({
    super.key,
    required this.index,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: Duration(milliseconds: 300 + (index * 100)),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, (1 - value) * 20),
          child: Opacity(opacity: value, child: child),
        );
      },
      child: child,
    );
  }
}

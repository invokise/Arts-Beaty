import 'package:arts_beaty/app_resources/app_text_styles.dart';
import 'package:arts_beaty/generated/l10n.dart';
import 'package:arts_beaty/ui/screens/home/widgets/wave_animaton_widget/wave_animation_widget.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_add),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
        Text(
          S.of(context).artAndBeaty,
          style: AppTextStyles.appBarTextStyle,
        ),
        const Flexible(
          child: WaveAnimationWidget(),
        ),
      ],
    );
  }
}

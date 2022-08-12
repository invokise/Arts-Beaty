import 'package:arts_beaty/app_resources/app_colors.dart';
import 'package:arts_beaty/app_resources/app_text_styles.dart';
import 'package:arts_beaty/generated/l10n.dart';
import 'package:arts_beaty/ui/screens/auth/sign_in/sign_in_screen.dart';
import 'package:arts_beaty/ui/screens/home/widgets/wave_animaton_widget/wave_animation_widget.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
       
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ),
                    );
                  },
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
            const Flexible(child: WaveAnimationWidget()),
          
            const SizedBox(
              height: 15,
            ),
            Text(
              S.of(context).services,
              style: AppTextStyles.title,
            ),
            const SizedBox(
              height: 15,
            ),
          
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0) //
                                  ),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/originals/8c/7b/33/8c7b334233723fd8987d7308f668cfda.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Center(
                          child: Text("Макияж"),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
              ),
            ),

            const SizedBox(
              height: 15,
            ),
            Text(
              S.of(context).customerReviews,
              style: AppTextStyles.title,
            ),
            const SizedBox(
              height: 15,
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.zero,
                    color: AppColors.waveAnimationColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const ListTile(
                      leading: CircleAvatar(
                        radius: 32,
                        backgroundImage: NetworkImage(
                            "https://i.pinimg.com/originals/8c/7b/33/8c7b334233723fd8987d7308f668cfda.jpg"),
                      ),
                      title: Text(
                        'Alexey',
                      ),
                      subtitle: Text(
                        'Good Service',
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

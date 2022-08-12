import 'package:arts_beaty/app_resources/app_colors.dart';
import 'package:arts_beaty/generated/l10n.dart';
import 'package:arts_beaty/ui/screens/auth/sign_up/sign_up_screen.dart';
import 'package:arts_beaty/ui/screens/auth/widgets/custom_sign_button_widget.dart';
import 'package:arts_beaty/ui/screens/auth/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String? validator(String? text) {
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(S.of(context).signIn),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormFieldWidget(
              hintText: S.of(context).email,
              textEditingController: _emailController,
              validator: validator,
              obscureText: false,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormFieldWidget(
              hintText: S.of(context).password,
              textEditingController: _passwordController,
              validator: validator,
              obscureText: false,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: CustomSignButtonWidget(
                backgroundColor: AppColors.signButtonColor,
                childColor: Colors.white,
                childText: S.of(context).signIn,
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // CustomSignButtonWidget(
            //   backgroundColor: Colors.white,
            //   childColor: AppColors.signButtonColor,
            //   childText: S.of(context).signUp,
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const SignUpScreen(),
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

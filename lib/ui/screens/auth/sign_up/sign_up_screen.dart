import 'package:arts_beaty/app_resources/app_colors.dart';
import 'package:arts_beaty/generated/l10n.dart';
import 'package:arts_beaty/ui/screens/auth/widgets/custom_sign_button_widget.dart';
import 'package:arts_beaty/ui/screens/auth/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repeatPasswordController = TextEditingController();

  String? validator(String? text) {
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(S.of(context).signUp),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormFieldWidget(
                  hintText: S.of(context).name,
                  textEditingController: _nameController,
                  validator: validator,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 15,
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
                  height: 15,
                ),
                CustomTextFormFieldWidget(
                  hintText: S.of(context).repeatPassword,
                  textEditingController: _repeatPasswordController,
                  validator: validator,
                  obscureText: true,
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
                    childText: S.of(context).signUp,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

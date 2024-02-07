import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/common/theme/custom_theme_extension.dart';
import 'package:messenger/common/widgets/custom_icon_button.dart';
import 'package:messenger/features/auth/controller/auth_controller.dart';
import 'package:messenger/features/auth/widgets/custom_text_field.dart';

class VerificationPage extends ConsumerWidget {
  const VerificationPage({
    super.key,
    required this.verificationId,
    required this.phoneNumber,
  });

  final String verificationId;
  final String phoneNumber;

  void verifySmsCode(
    BuildContext context,
    WidgetRef ref,
    String smsCode,
  ) {
    ref.read(authControllerProvider).verifySmsCode(
          context: context,
          smsCodeId: verificationId,
          enteredSMSCode: smsCode,
          mounted: true,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          CustomIconButton(
            onPressed: () {},
            icon: Icons.more_vert,
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Verify your number',
              style: TextStyle(
                color: context.theme.authAppbarTextColor,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:
                    "Enter The 6-Digit Verification Code \nsent to the Phone Number:\n",
                style: TextStyle(
                  color: context.theme.primaryTextColor,
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                    text: "9041289328",
                    style: TextStyle(
                      color: context.theme.highlightedTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: SizedBox(
              width: 150,
              child: CustomTextField(
                // controller: codeController,
                hintText: "- - -  - - -",
                fontSize: 30,
                autoFocus: true,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  if (value.length == 6) {
                    return verifySmsCode(context, ref, value);
                  }
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Enter 6-digit code',
            style: TextStyle(color: context.theme.primaryTextColor),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 6),
            child: Column(
              children: [
                Divider(
                  color: context.theme.primaryTextColor!.withOpacity(.5),
                ),
                Row(
                  children: [
                    Icon(Icons.message, color: context.theme.primaryTextColor),
                    const SizedBox(width: 20),
                    Text(
                      'Use Another Phone Number',
                      style: TextStyle(
                        color: context.theme.primaryTextColor,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Divider(
                  color: context.theme.primaryTextColor!.withOpacity(.5),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.phone, color: context.theme.primaryTextColor),
                    const SizedBox(width: 20),
                    Text(
                      'Resend Code',
                      style: TextStyle(
                        color: context.theme.primaryTextColor,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: context.theme.primaryTextColor!.withOpacity(.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

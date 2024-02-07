import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/common/helper/show_alert_dialog.dart';
import 'package:messenger/common/routes/routes.dart';
import 'package:messenger/common/theme/custom_theme_extension.dart';
import 'package:messenger/common/utils/colors.dart';
import 'package:messenger/common/widgets/custom_elevated_button.dart';
import 'package:messenger/common/widgets/custom_icon_button.dart';
import 'package:messenger/features/auth/controller/auth_controller.dart';
import 'package:messenger/features/auth/widgets/custom_text_field.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  late TextEditingController countryNameController;
  late TextEditingController countryCodeController;
  late TextEditingController phoneNumberController;

  skipToCommunitiesPage(context) {
    Navigator.of(context).pushNamed(Routes.communitiesPage);
  }

  skipToVerificationPage(context) {
    Navigator.of(context).pushNamed(Routes.verification);
  }

  sendCodeToPhone(context) {
    final phoneNumber = phoneNumberController.text;
    final countryName = countryNameController.text;
    final countryCode = countryCodeController.text;

    if (phoneNumber.isEmpty) {
      return showAlertDialog(
        context: context,
        message: "Please enter your Phone Number",
      );
    } else if (phoneNumber.length < 9) {
      return showAlertDialog(
        context: context,
        message:
            'The Phone Number you entered is too short for the country: $countryName\n\nInclude your Area Code if you haven\'t',
      );
    } else if (phoneNumber.length > 10) {
      return showAlertDialog(
        context: context,
        message:
            "The Phone Number you entered is too long for the country: $countryName",
      );
    }

    // skipToVerificationPage(context);
    ref.read(authControllerProvider).sendSmsCode(
          context: context,
          phoneNumber: "+$countryCode$phoneNumber",
        );
  }

  showCountryPickerBottomSheet() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      favorite: ['IN', 'US'],
      countryListTheme: CountryListThemeData(
        bottomSheetHeight: 600,
        backgroundColor: Theme.of(context).backgroundColor,
        flagSize: 22,
        borderRadius: BorderRadius.circular(20),
        textStyle: TextStyle(color: context.theme.primaryTextColor),
        inputDecoration: InputDecoration(
          labelStyle: TextStyle(color: context.theme.primaryTextColor),
          prefixIcon: const Icon(
            Icons.language,
            color: MyColors.primaryWidget,
          ),
          hintText: 'Search country by code or name',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.theme.primaryTextColor!.withOpacity(.2),
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: MyColors.primaryWidget,
            ),
          ),
        ),
      ),
      onSelect: (country) {
        countryNameController.text = country.name;
        countryCodeController.text = country.phoneCode;
      },
    );
  }

  @override
  void initState() {
    countryNameController = TextEditingController(text: 'India');
    countryCodeController = TextEditingController(text: '91');
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    countryNameController.dispose();
    countryCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              'Enter your phone number',
              style: TextStyle(
                fontSize: 26,
                color: context.theme.authAppbarTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Verify your Phone Number To LogIn.\n',
                style: TextStyle(
                  color: context.theme.primaryTextColor,
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                    text: "Login Using Email-Id",
                    style: TextStyle(
                      color: context.theme.highlightedTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                const SizedBox(width: 60),
                SizedBox(
                  width: 200,
                  child: CustomTextField(
                    onTap: showCountryPickerBottomSheet,
                    controller: countryNameController,
                    readOnly: true,
                    suffixIcon: Icon(
                      Icons.arrow_drop_down,
                      color: context.theme.primaryWidgetBackgroundColor,
                      size: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  child: CustomTextField(
                    onTap: showCountryPickerBottomSheet,
                    controller: countryCodeController,
                    prefixText: '+',
                    readOnly: true,
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 200,
                  child: CustomTextField(
                    controller: phoneNumberController,
                    hintText: 'Enter Phone Number',
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Carrier charges may apply',
            style: TextStyle(
              color: context.theme.primaryTextColor,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: CustomElevatedButton(
          onPressed: () => sendCodeToPhone(context),
          // onPressed: () => skipToVerificationPage(context),
          text: 'NEXT',
        ),
      ),

      // /*************Remove This Part *********** */
      // bottomNavigationBar: BottomAppBar(
      //   color: context.theme.backgroundColor,
      //   child: CustomElevatedButton(
      //     onPressed: () => skipToCommunitiesPage(context),
      //     text: 'Skip To Communities Page',
      //     buttonWidth: 100,
      //   ),
      // ),
      // /*************Remove This Part *********** */
    );
  }
}

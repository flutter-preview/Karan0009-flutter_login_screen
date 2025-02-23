import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_screen_2/_mvvm_arch2/login_screen/view_models/login_screen.viewmodel.dart';
import 'package:provider/provider.dart';

import '../../shared/layouts/screen_layout.dart';
import '../../shared/services/app_localizations_service.dart';

class NewUserDetailsScreen extends StatefulWidget {
  final personlInfoFormKey = GlobalKey<FormState>();
  NewUserDetailsScreen({super.key});

  @override
  State<NewUserDetailsScreen> createState() => _NewUserDetailsScreenState();
}

class _NewUserDetailsScreenState extends State<NewUserDetailsScreen> {
  String firstName = "";
  String lastName = "";
  @override
  void initState() {
    super.initState();
    firstName = "";
    lastName = "";
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height * 0.95;
    final vm = Provider.of<LoginViewModel>(context, listen: true);
    return ScreenLayout(
      isLoading: vm.isLoading,
      screenHeight: screenHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: const Icon(
                        Icons.arrow_back_rounded,
                        color: Color.fromRGBO(152, 162, 179, 1),
                        size: 30,
                      ),
                      onTap: () {
                        vm.showChangePhoneNumberAlert(context);
                        // vm.changePhoneNumberHandler(context);
                      },
                    ),
                    const SizedBox(width: 20),
                    Text(
                      AppLocalizations.of(context)
                          .translate("completeYourProfile"),
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(fontSize: 24),
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(52, 64, 84, 1),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context).translate("personalInfo"),
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(fontSize: 16),
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(52, 64, 84, 1)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context).translate("firstName"),
                      style: const TextStyle(
                          color: Color.fromRGBO(102, 112, 133, 1),
                          fontSize: 10),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(249, 249, 250, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(242, 244, 247, 1),
                          width: 3,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextFormField(
                        maxLength: 10,
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Color.fromRGBO(102, 112, 133, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: AppLocalizations.of(context)
                              .translate("firstNamePlaceholder"),
                          counterText: "",
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(102, 112, 133, 0.5),
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        validator: (value) {
                          return null;
                          // if (value!.isEmpty ||
                          //     !RegExp(r'\d{10}').hasMatch(value)) {
                          //   return 'Please enter valid phone number';
                          // }
                          // return null;
                        },
                        onChanged: (value) {
                          // if (isPhoneInputValid(value)) {
                          setState(() {
                            firstName = value;
                            // phoneValue = value;
                          });
                          // }
                          // } else {
                          //   print("input is invalid");
                          // }
                          // if (widget.formKey.currentState!.validate()) {
                          //   print("form is valid");
                          // } else {
                          //   print("form is not valid");
                          // }
                          // if(formKey.is)
                          // print(value);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context).translate("lastName"),
                      style: const TextStyle(
                          color: Color.fromRGBO(102, 112, 133, 1),
                          fontSize: 10),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(249, 249, 250, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(242, 244, 247, 1),
                          width: 3,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextFormField(
                        maxLength: 10,
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Color.fromRGBO(102, 112, 133, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: AppLocalizations.of(context)
                              .translate("lastNamePlaceholder"),
                          counterText: "",
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(102, 112, 133, 0.5),
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        validator: (value) {
                          return null;
                          // if (value!.isEmpty ||
                          //     !RegExp(r'\d{10}').hasMatch(value)) {
                          //   return 'Please enter valid phone number';
                          // }
                          // return null;
                        },
                        onChanged: (value) {
                          // if (isPhoneInputValid(value)) {
                          setState(() {
                            lastName = value;
                            // phoneValue = value;
                          });
                          // }
                          // } else {
                          //   print("input is invalid");
                          // }
                          // if (widget.formKey.currentState!.validate()) {
                          //   print("form is valid");
                          // } else {
                          //   print("form is not valid");
                          // }
                          // if(formKey.is)
                          // print(value);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      vm.newUserDetailsNextClickHandler(
                        context,
                        firstName,
                        lastName: lastName,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      elevation: 0,
                      backgroundColor: const Color.fromRGBO(58, 100, 61, 1),
                      foregroundColor: const Color.fromRGBO(214, 248, 184, 1),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: Text(
                      AppLocalizations.of(context).translate("next"),
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(fontSize: 12),
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(214, 248, 184, 1)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ],
      ),
    );
  }
}

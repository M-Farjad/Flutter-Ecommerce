import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffixIcon.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Complete Profile",
              style: headingStyle,
            ),
            Text(
              'Complete your details or conitnue with\nsocial media',
              textAlign: TextAlign.center,
            ),
            CompleteProfileForm(),
          ],
        ),
      ),
    );
  }
}

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => firstName = newValue,
          onChanged: (value) {
            if (value.isNotEmpty && errors.contains(kEmailNullError)) {
              setState(() {
                errors.remove(kEmailNullError);
              });
            }
            // removeError(error: kEmailNullError);
            else if (isEmail(value)) {
              removeError(error: kInvalidEmailError);
            }
            return null;
          },
          validator: (value) {
            if (value!.isEmpty) {
              addError(error: kEmailNullError);
              return "";
            } else if (!isEmail(value)) {
              addError(error: kInvalidEmailError);
              return "";
            }
            return null;
          },
          decoration: const InputDecoration(
            label: Text("Email"),
            suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/mail.svg"),
            hintText: "Enter Your Email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        )
      ],
    ));
  }
}

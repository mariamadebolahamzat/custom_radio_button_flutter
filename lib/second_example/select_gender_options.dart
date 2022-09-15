import 'package:custom_radio_button/second_example/gender_options.dart';
import 'package:custom_radio_button/second_example/gender_type.dart';
import 'package:flutter/material.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({Key? key}) : super(key: key);

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  var genderType = GenderType.MALE;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gender Selection',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.blue,
            fontSize: 16,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Select your gender type',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  GenderOption(
                    optionIconAsset: Icons.male,
                    iconText: 'Male',
                    groupValue: genderType,
                    value: GenderType.MALE,
                    onChanged: (GenderType? gender) =>
                        setState(() => genderType = gender!),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GenderOption(
                    optionIconAsset: Icons.female,
                    iconText: 'Female',
                    groupValue: genderType,
                    value: GenderType.FEMALE,
                    onChanged: (GenderType? gender) =>
                        setState(() => genderType = gender!),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GenderOption(
                    optionIconAsset: Icons.bedroom_baby,
                    iconText: 'Other',
                    groupValue: genderType,
                    value: GenderType.OTHER,
                    onChanged: (GenderType? gender) =>
                        setState(() => genderType = gender!),
                  ),
                ],
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}

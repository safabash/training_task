import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:training_task/screen/constants.dart';
import 'package:training_task/screen/widgets/home_buttons.dart';

import '../../controller/form_controller.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formController = Get.put(FormController());
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: formController.formKey,
            child: Column(
              children: [
                Constants.ksizedbox20,
                TextFormField(
                  validator: (value) => formController.nameValidator(
                      value, 'Please enter your fullname'),
                  controller: formController.nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    fillColor: Color.fromARGB(255, 223, 220, 220),
                    filled: true,
                    label: Text('Full name'),
                  ),
                ),
                Constants.ksizedbox20,
                TextFormField(
                  validator: (value) => formController.pincodeValidator(
                      value, 'Please enter correct pincode'),
                  controller: formController.pincodeController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    fillColor: Color.fromARGB(255, 223, 220, 220),
                    filled: true,
                    label: Text('Pincode'),
                  ),
                ),
                Constants.ksizedbox20,
                TextFormField(
                  validator: (value) => formController.addressValidator(
                      value, 'Please enter your address'),
                  controller: formController.addressController,
                  maxLines: 5,
                  minLines: 2,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    fillColor: Color.fromARGB(255, 223, 220, 220),
                    filled: true,
                    label: Text('Address'),
                  ),
                ),
                Constants.ksizedbox20,
                Row(
                  children: [
                    SizedBox(
                      width: 374,
                      child: TextFormField(
                        validator: (value) => formController.cityValidator(
                            value, 'Please enter your city'),
                        controller: formController.cityController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          fillColor: Color.fromARGB(255, 223, 220, 220),
                          filled: true,
                          label: Text('City'),
                        ),
                      ),
                    ),
                  ],
                ),
                Constants.ksizedbox20,
                TextFormField(
                  validator: (value) => formController.phoneValidator(
                      value, 'Please enter valid phone number'),
                  controller: formController.phoneController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    fillColor: Color.fromARGB(255, 223, 220, 220),
                    filled: true,
                    label: Text('Mobile'),
                  ),
                ),
                const SizedBox(height: 140),
                HomeButtons(
                    function: () {
                      formController.saveAddress(
                          context, formController.formKey);
                    },
                    text: 'Save')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

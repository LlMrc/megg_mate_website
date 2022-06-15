
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:megg_mate_website/model/modal.dart';
import 'package:megg_mate_website/page/application.dart';
import 'package:megg_mate_website/page/clients_page.dart';
import 'package:megg_mate_website/page/desktop_body.dart';
import 'package:megg_mate_website/page/request_page.dart';

import '../constant/color.dart';
import '../constant/string.dart';
import '../main.dart';
import '../model/animation_fade.dart';
import '../model/box_transaction.dart';
import '../model/clients_box.dart';
import '../widget/custom_text.dart';

class Apply extends StatefulWidget {
  const Apply({Key? key, this.height, this.width,}) : super(key: key);
  final double? height;
  final double? width;

  @override
  State<Apply> createState() => _ApplyState();
}

class _ApplyState extends State<Apply> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  TextEditingController companyName = TextEditingController();
  TextEditingController webColorController = TextEditingController();
  TextEditingController commentController = TextEditingController();

  int index = 0;
  Widget sizedBox = const SizedBox(height: 16);

  double horizontal = 12.0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: formSelected(
              child: form1(),
            ),
          ),
        ),
      ),
    );
  }

  Widget form1() {
    return Column(
      children: [
        AnimationTransition(
          delay: 1000,
          child: Container(
            height: 130,
            width: 500,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(
                      'assets/banner.jpg',
                    ),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
        Container(
          width: widget.width ?? 500,
          margin: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomText(
                  text: preferences,
                  style: GoogleFonts.coda(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  )),
              sizedBox,
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                    label: Text('Full Name'), border: OutlineInputBorder()),
              ),
              sizedBox,
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                    label: Text('Email'), border: OutlineInputBorder()),
              ),
              sizedBox,
              Container(
                margin: EdgeInsets.symmetric(horizontal: horizontal),
                padding: EdgeInsets.symmetric(horizontal: horizontal),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey)),
                width: 100,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: selectedItem,
                    items: items
                        .map((e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(e,
                                style: const TextStyle(color: Colors.black))))
                        .toList(),
                    onChanged: (value) =>
                        setState(() => selectedItem = value.toString()),
                    iconSize: 40,
                    iconEnabledColor: Colors.blue,
                  ),
                ),
              ),
              sizedBox
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: horizontal),
          width: widget.width ?? 500,
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            ElevatedButton(
                style: ButtonStyle(
                    minimumSize:
                        MaterialStateProperty.all<Size>(const Size(100, 55))),
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: const CustomText(text: 'Next'))
          ]),
        )
      ],
    );
  }

  Widget form2() {
    return Column(
      children: [
        Container(
          width: widget.width ?? 500,
          margin: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: 12),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                sizedBox,
                TextFormField(
                  controller: companyName,
                  decoration: const InputDecoration(
                      label: Text('Company Name'),
                      border: OutlineInputBorder()),
                ),
                sizedBox,
                const Text('Website Primary Color'),
                TextFormField(
                  controller: webColorController,
                  decoration: const InputDecoration(
                      hintText: 'ex: Blue', border: OutlineInputBorder()),
                ),
                sizedBox,
                TextFormField(
                  controller: commentController,
                  maxLines: 5,
                  decoration: const InputDecoration(
                      label: Text('Comment'), border: OutlineInputBorder()),
                ),
                sizedBox,
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: horizontal),
          width: widget.width ?? 500,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    minimumSize:
                        MaterialStateProperty.all<Size>(const Size(100, 55))),
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: const CustomText(text: 'Back')),
            ElevatedButton(
                style: ButtonStyle(
                    minimumSize:
                        MaterialStateProperty.all<Size>(const Size(100, 55))),
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: const CustomText(text: 'Next'))
          ]),
        )
      ],
    );
  }

  Widget formSelected({required Widget child}) {
    switch (index) {
      case 0:
        child = form1();

        break;
      case 1:
        child = form2();
        break;
      case 2:
        child = form3();
        break;
      default:
        print(index);
    }
    return child;
  }

  Widget form3() => Column(
        children: [
          Container(
            height: widget.height ?? 400,
            width: widget.width ?? 400,
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontal,
              ),
              child: Column(
                children: [
                  const CustomText(text: 'Category'),
                  buildRadio(),
                ],
              ),
            ),
          ),
          sizedBox,
          Container(
            padding: EdgeInsets.symmetric(horizontal: horizontal),
            width: widget.width ?? 500,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(100, 55))),
                      onPressed: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: const CustomText(text: 'Back')),
                  ElevatedButton(
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(100, 55))),
                      onPressed: () async {
                        await Future.delayed(const Duration(milliseconds: 800));

                        const text =
                            '''                    your request has been registered, 
                            we will send you a requisition very soon in which you will provide more details
                           to personalize your request if you accept the proformat which will also be sent to you.''';
                        final snackbar = SnackBar(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 14),
                            backgroundColor:
                                const Color.fromARGB(255, 49, 55, 93),
                            duration: const Duration(seconds: 5),
                            content: SizedBox(
                              height: 80,
                              child: Center(
                                child: Text(text,
                                    style: GoogleFonts.aclonica(fontSize: 20)),
                              ),
                            ));

                        // ignore: use_build_context_synchronously
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>
                                const ClientPage()));
                        if (nameController.text.isEmpty) {
                          return;
                        }

                       await addClients(selectedValues, commentController.text, companyName.text, emailController.text, nameController.text,webColorController.text, selectedItem);
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      },
                      child: const CustomText(text: 'Submit'))
                ]),
          )
        ],
      );

  Future addClients(
    String category,
    String comment,
    String company,
    String mail,
    String name,
    String webColor,
    String technologie,
  ) async {
    final transaction = ClientBox()
      ..category = category
      ..name = name
      ..company = company
      ..mail = mail
      ..technologie = technologie //selectedItem
      ..comment = comment
      ..webColor = webColor;
    final box = Boxes.getTransaction();
    box.add(transaction);
  }

//        ///////////////      RADIO BOUTTON           //////////////

  Widget buildRadio() => Theme(
        data: Theme.of(context).copyWith(
          unselectedWidgetColor: unSelectedColor,
        ),
        child: Column(
          children: values.map((value) {
            final selected = selectedValues == value;
            final color = selected ? selectedColor : unSelectedColor;
            return RadioListTile(
                value: value,
                groupValue: selectedValues,
                title:
                    Text(value.toUpperCase(), style: TextStyle(color: color)),
                activeColor: selectedColor,
                onChanged: (value) {
                  setState(() => selectedValues = value.toString());
                });
          }).toList(),
        ),
      );

  final selectedColor = Colors.blue;
  final unSelectedColor = Colors.grey;
  static const values = <String>[
    'Vitrine',
    'Shopping',
    'Organisation',
    'Gouvermental',
    'Meetting',
    'Social Media',
    'Small Buseness'
  ];
  String selectedValues = values.first;

  static const items = <String>['Website', 'Mobile Apps', 'Desktop Apps'];
  String selectedItem = items.first;
}

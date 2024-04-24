// ignore_for_file: file_names, must_be_immutable

import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/onboarding/prodct_1.dart';
import 'package:flutter_application_1/shared/widget/navigation.dart';


import '../../shared/widget/colors.dart';
 
class ItemsIcon extends StatelessWidget {
  String items;
  String itemsdialog;

  ItemsIcon({
    super.key,
    required this.items,
    required this.itemsdialog,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(12),
      child: InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/$items'),
          radius: 20,
        ),
        onTap: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                decoration: BoxDecoration(border: Border.all(), color: blue),
                height: 300,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        child: Text('Buy It'),
                        onPressed: () {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.info,
                            borderSide: const BorderSide(
                              color: Colors.green,
                              width: 5,
                            ),
                            width: 500,
                            buttonsBorderRadius: const BorderRadius.all(
                              Radius.circular(6),
                            ),
                            dismissOnTouchOutside: true,
                            dismissOnBackKeyPress: false,
                            onDismissCallback: (type) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Dismissed by $type'),
                                ),
                              );
                            },
                            headerAnimationLoop: false,
                            animType: AnimType.bottomSlide,
                            desc: 'This Dialog can be ...........',
                            showCloseIcon: true,
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {
                              goTo(context: context, screen: prodct_1());
                            },
                          ).show();
                        },
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gritstone_test/core/constant/colors.dart';
import 'package:gritstone_test/core/constant/sizes.dart';
import 'package:gritstone_test/domain/utils/text/text_utils.dart';
import 'package:gritstone_test/presentation/widgets/appbar/appbar.dart';
import 'package:gritstone_test/presentation/widgets/text_fields/text_field_widget.dart';

class ScreenHome extends ConsumerWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const AppbarWidget(
        logo: true,
        title: 'Title',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              //* ==--==--==--==-- Notes --==--==--==--==
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: kBlack10,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'Hello there..',
                        textAlign: TextAlign.end,
                        style: TextUtils.theme(context).bodyMedium?.copyWith(
                              color: kBlack,
                            ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return kHeight10;
                  },
                  itemCount: 20,
                ),
              ),
              kHeight15,

              //* ==--==--==--==-- Type/Voice Fields --==--==--==--==
              Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: TextFeildWidget(
                          hintText: 'Type a message',
                        ),
                      ),
                      kWidth10,
                      InkWell(
                        onLongPress: () {},
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundColor: kBlack45,
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.0),
                            child: Icon(Icons.send, size: 16, color: kWhite),
                          ),
                        ),
                      ),
                    ],
                  ),
                  kHeight20,
                  InkWell(
                    onLongPress: () {},
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundColor: kTeal,
                      child: Icon(Icons.mic, size: 22),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

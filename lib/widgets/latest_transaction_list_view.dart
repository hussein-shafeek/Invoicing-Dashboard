import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/models/user_info_model.dart';
import 'package:invoicing_dashboard/utils/app_images.dart';
import 'package:invoicing_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatefulWidget {
  const LatestTransactionListView({super.key});

  @override
  State<LatestTransactionListView> createState() =>
      _LatestTransactionListViewState();
}

class _LatestTransactionListViewState extends State<LatestTransactionListView> {
  late ScrollController _scrollController;

  static const List<UserInfoModel> items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Hussein Shafeek',
      subtitle: 'hussainshafeek10@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'John Doe',
      subtitle: 'johndoe@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Jane Smith',
      subtitle: 'janesmith@gmail.com',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerSignal: (pointerSignal) {
        if (pointerSignal is PointerScrollEvent) {
          final newOffset =
              _scrollController.offset +
              pointerSignal.scrollDelta.dy +
              pointerSignal.scrollDelta.dx;
          _scrollController.jumpTo(
            newOffset.clamp(0.0, _scrollController.position.maxScrollExtent),
          );
        }
      },
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
        ),
        child: SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items
                .map(
                  (e) => IntrinsicWidth(child: UserListTile(userInfoModel: e)),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

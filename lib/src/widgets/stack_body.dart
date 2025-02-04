import 'package:flutter/material.dart';

import '../features/on_board/on_board.dart';
import '../utils/color.dart';

class AppStackBody extends StatefulWidget {
  final List<Widget> children;
  final List<Widget>? buttons;
  final bool isBack;
  final bool isButtons;

  const AppStackBody({
    super.key,
    required this.children,
    this.isBack = true,
    this.isButtons = false,
    this.buttons,
  });

  @override
  State<AppStackBody> createState() => _AppStackBodyState();
}

class _AppStackBodyState extends State<AppStackBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: AppBar(
            surfaceTintColor: Colors.transparent,
            leadingWidth: 85,
            backgroundColor: Colors.transparent,
            leading: widget.isBack
                ? IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    style: IconButton.styleFrom(
                        backgroundColor: Color(0xffFFFFFF).withOpacity(0.8),
                        minimumSize: Size(52, 52)),
                  )
                : SizedBox(),
          ),
        ),
      ),
      // backgroundColor: Color(0xffFFFFFF).withOpacity(0.05),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        padding: EdgeInsets.fromLTRB(
            12, MediaQuery.of(context).padding.top + 64, 12, 54),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffB5E857),
              AppColors.white.withOpacity(0.05),
            ],
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            whiteContainer(
              margin: EdgeInsets.symmetric(horizontal: 80),
              opacity: 0.6,
            ),
            whiteContainer(
              margin: EdgeInsets.fromLTRB(48, 10, 48, 0),
              opacity: 0.8,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(16, 20, 16, 0),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 40,
                    spreadRadius: 0,
                    offset: Offset(0, 34),
                  ),
                ],
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ...widget.children,
                  Positioned(
                    bottom: -175,
                    right: -155,
                    child: ClipRRect(
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(32),
                      child: Image.asset(
                        'assets/images/fox.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///Buttton

            widget.isButtons
                ? Positioned.fill(
                    bottom: -35,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [...widget.buttons!],
                      ),
                    ),
                  )
                : SizedBox()

            ///Buttton
          ],
        ),
      ),
    );
  }
}

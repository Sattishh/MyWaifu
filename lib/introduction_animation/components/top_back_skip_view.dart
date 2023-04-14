import 'package:flutter/material.dart';

class TopBackSkipView extends StatelessWidget {
  final AnimationController animationController;
  final VoidCallback onBackClick;
  final VoidCallback onSkipClick;

  const TopBackSkipView({
    Key? key,
    required this.onBackClick,
    required this.onSkipClick,
    required this.animationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _animation =
        Tween<Offset>(begin: Offset(0, -1), end: Offset(0.0, 0.0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));

    // final _backAnimation =
    //     Tween<Offset>(begin: Offset(0, 0), end: Offset(-2, 0))
    //         .animate(CurvedAnimation(
    //   parent: animationController,
    //   curve: Interval(
    //     0.6,
    //     0.8,
    //     curve: Curves.fastOutSlowIn,
    //   ),
    // ));
    final _skipAnimation = Tween<Offset>(begin: Offset(0, 0), end: Offset(2, 0))
        .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.6,
        0.8,
        curve: Curves.fastOutSlowIn,
      ),
    ));

    return SlideTransition(
      position: _animation,
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 16, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SlideTransition(
                //   position: _backAnimation,
                //   child:
                IconButton(
                  onPressed: onBackClick,
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Color(0xFFffffff), // set the color of the icon
                  ),
                ),

                SlideTransition(
                  position: _skipAnimation,
                  child: IconButton(
                    onPressed: onSkipClick,
                    icon: Container(
                      child: Text('Skip',
                          style: TextStyle(
                              color: Color.fromARGB(218, 255, 255, 255),
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter')),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

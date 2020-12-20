import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key key,
    this.numOfItem = 0,
    @required this.press,
    @required this.svgSrc,
  }) : super(key: key);
  final int numOfItem;
  final GestureTapCallback press;
  final String svgSrc;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(overflow: Overflow.visible, children: [
        Container(
          padding: EdgeInsets.all(12),
          height: getProportionateScreenWidth(46),
          width: getProportionateScreenHeight(46),
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(svgSrc),
        ),
        if (numOfItem != 0)
          Positioned(
            right: 0,
            top: -3,
            child: Container(
              height: getProportionateScreenHeight(16),
              width: getProportionateScreenWidth(16),
              decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white)),
              child: Center(
                child: Text(
                  "$numOfItem",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 1,
                      fontSize: getProportionateScreenWidth(10)),
                ),
              ),
            ),
          ),
      ]),
    );
  }
}

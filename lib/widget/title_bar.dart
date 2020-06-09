import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
///@author tylorvan.fzm
///@since 2019-10-02
///
class TitleBar extends StatelessWidget {
  final String title;

  final Color bgColor;

  final Color textColor;
  final Color iconColor;

  const TitleBar(this.title,
      {this.bgColor = const Color(0xff1c2029),
      this.textColor = const Color(0xffffffff),
      this.iconColor = const Color(0xffffffff)});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      height: 44,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              height: 24,
              padding: EdgeInsets.only(left: 12, right: 12),
              child: GestureDetector(
                onTap: () {
                  _back(context);
                },
                child: Image.asset(
                  "asset/image/commmon/toolbar_back.png",
                  width: 24,
                  height: 24,
                  color: iconColor,
                ),
              )),
          Expanded(
            child: Container(
                margin: EdgeInsets.only(right: 48),
                child: Center(
                    child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18, color: textColor),
                ))),
          )
        ],
      ),
    );
  }

  void _back(BuildContext context) {
    var result = Navigator.canPop(context);
    if (result == true) {
      Navigator.pop(context, true);
    } else {
      SystemNavigator.pop();
    }
  }
}

void main() {
  runApp(MaterialApp(
    title: '测试',
    home: SafeArea(child: Center(child: Material(child: TitleBar("优酷")))),
  ));
}

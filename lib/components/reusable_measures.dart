import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableMeasures extends StatefulWidget {
  ReusableMeasures({this.measureText, this.defaultMeasure});
  final String measureText;
  final int defaultMeasure;

  @override
  _ReusableMeasures createState() => _ReusableMeasures(
      measureText: measureText, defaultMeasure: defaultMeasure);
}

class _ReusableMeasures extends State<ReusableMeasures> {
  _ReusableMeasures({this.measureText, this.defaultMeasure});
  String measureText;
  int defaultMeasure;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(measureText),
        Text(
          defaultMeasure.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: () {
                setState(() {
                  defaultMeasure--;
                });
              },
            ),
            SizedBox(
              width: 15.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: () {
                setState(() {
                  defaultMeasure++;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}

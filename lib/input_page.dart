import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icob_content.dart';

const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    cardChild: ReusableCardChild(
                      icon: FontAwesomeIcons.mars,
                      lable: 'Male',
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                        color: activeCardColor,
                        cardChild: ReusableCardChild(
                          icon: FontAwesomeIcons.venus,
                          lable: 'Female',
                        )))
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            color: activeCardColor,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            decoration: BoxDecoration(
              color: bottomContainerColor,
            ),
          )
        ],
      ),
    );
  }
}

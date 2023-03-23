import 'package:flutter/material.dart';

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
                  child: ReusableCard(Colors.blue, card),
                ),
                Expanded(child: ReusableCard(Colors.blue))
              ],
            ),
          ),
          Expanded(child: ReusableCard(Colors.blue)),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    Colors.blue,
                  ),
                ),
                Expanded(
                  child: ReusableCard(Colors.blue),
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

class ReusableCard extends StatelessWidget {
  ReusableCard(@required this.color, this.cardChild);
  final Color color;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ));
  }
}

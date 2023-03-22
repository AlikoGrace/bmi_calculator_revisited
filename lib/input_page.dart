import 'package:flutter/material.dart';

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
                  child: ReusableCard(Colors.blue),
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
                child: ReusableCard(Colors.blue),
              ),
              Expanded(
                child: ReusableCard(Colors.blue),
              )
            ],
          ))
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(@required this.color);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ));
  }
}

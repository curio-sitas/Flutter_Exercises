import 'package:exo1_inventory/utils/Contants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomeMenu(),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              TestWidget(),
              TestWidget(),
              TestWidget(),
              TestWidget(),
              TestWidget(),
              TestWidget()
            ],
          ))
        ],
      ),
    );
  }
}

class HomeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.inventory_2,
          color: secondaryColor,
        ),
        Container(
            margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text("Inventories")),
        Spacer(),
        Icon(Icons.add)
      ],
    );
  }
}

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Container(
          color: cardColors,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Row(
            textBaseline: TextBaseline.ideographic,
            children: [
              Icon(Icons.electrical_services),
              Spacer(),
              Text("Example"),
              Spacer(),
              Icon(Icons.close)
            ],
          )),
    );
  }
}

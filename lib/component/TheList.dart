import 'package:flutter/material.dart';
import '../pages/MyHomePageDetail.dart';

class TheList extends StatefulWidget {
  const TheList({super.key});

  @override
  _TheListState createState() => _TheListState();
}

class _TheListState extends State<TheList> {
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: theItems.length,
          itemBuilder: (BuildContext context, int index) {
            final item = theItems[index];
            return _buildRow(item);
          }),
    );
  }

  Widget _buildRow(String pair) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => MyHomePageDetail(
                  title: "Landing Page",
                  listData: pair,
                  key: const Key("List"),
                )));
      },
      title: Text(
        pair,
        style: _biggerFont,
      ),
    );
  }

  final theItems = ["Accounts", "Production", "Sales", "Service","Careers"];
}

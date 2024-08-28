import 'package:flutter/material.dart';
import '/pages/MyHomePageDetail.dart';

class ASimpleList extends StatefulWidget {
  const ASimpleList({super.key});

  @override
  _ASimpleListState createState() => _ASimpleListState();
}

class _ASimpleListState extends State<ASimpleList> {
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            final item = items[index];
            return _buildRow(item);
          }),
    );
  }

  Widget _buildRow(String pair) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => MyHomePageDetail(
                  title: "Detail Page",
                  listData: pair,
                  key: const Key("Detail"),
                )));
      },
      title: Text(
        pair,
        style: _biggerFont,
      ),
    );
  }

  final items =
      List<String>.generate(20, (int index) => 'List Item $index');
}

import 'package:flutter/material.dart';


class MarketViewPage extends StatefulWidget {
  const MarketViewPage({Key? key}) : super(key: key);

  @override
  State<MarketViewPage> createState() => _MarketViewPageState();
}

class _MarketViewPageState extends State<MarketViewPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("MarketViewPage")
    );
  }
}

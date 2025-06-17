import 'package:flutter/material.dart';
import 'package:widget_practice/theme/styles.dart';

class CommunicationWidgetsPage extends StatefulWidget {
  const CommunicationWidgetsPage({super.key});

  @override
  State<CommunicationWidgetsPage> createState() =>
      _CommunicationWidgetsPageState();
}

class _CommunicationWidgetsPageState extends State<CommunicationWidgetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Communication', style: AppStyles.categoryTitle),
      ),
      body: Column(
        children: <Widget>[
          AppStyles.categoryContentContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('1.Badge', style: AppStyles.subcategoryTitle),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},

                        icon: Badge(
                          label: Text('Caution'),
                          backgroundColor: Colors.yellow[800],
                          child: Icon(Icons.warning),
                        ),
                      ),
                      SizedBox(width: 50.00),
                      IconButton(
                        onPressed: () {},

                        icon: Badge.count(
                          count: 99,
                          child: Icon(Icons.account_balance_wallet_rounded),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

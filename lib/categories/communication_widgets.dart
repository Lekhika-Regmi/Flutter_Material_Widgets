import 'package:flutter/material.dart';
import 'package:widget_practice/theme/styles.dart';

class CommunicationWidgetsPage extends StatefulWidget {
  const CommunicationWidgetsPage({super.key});

  @override
  State<CommunicationWidgetsPage> createState() =>
      _CommunicationWidgetsPageState();
}

class _CommunicationWidgetsPageState extends State<CommunicationWidgetsPage> {
  double progress = 0;

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
                      SizedBox(width: 25.00),
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
          AppStyles.categoryContentContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '2.Linear Progress Indicator',
                  style: AppStyles.subcategoryTitle,
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LinearProgressIndicator(
                        value: progress / 100, // Convert 0–100 to 0.0–1.0
                        backgroundColor: Colors.teal.shade100,
                        color: Colors.teal,
                        minHeight: 8,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '${progress.toInt()}%',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (progress < 100) progress += 10;
                              });
                            },
                            child: const Text('Add 10%'),
                          ),
                          SizedBox(width: 10.00),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                progress = 0;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                            ),
                            child: Text(
                              'Reset',
                              style: TextStyle(color: Colors.teal[50]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          AppStyles.categoryContentContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('3.SnackBar', style: AppStyles.subcategoryTitle),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('This is a SnackBar'),
                          action: SnackBarAction(
                            label: 'Again?',
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text('This is a SnackBar'),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                    child: Text('Click Here to see SnackBar'),
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

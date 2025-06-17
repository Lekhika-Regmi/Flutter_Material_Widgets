import 'package:flutter/material.dart';
import 'package:widget_practice/theme/styles.dart';

enum Temperature { celsius, fahrenheit, kelvin }

class ActionWidgetsPage extends StatefulWidget {
  const ActionWidgetsPage({super.key});

  @override
  State<ActionWidgetsPage> createState() => _ActionWidgetsState();
}

class _ActionWidgetsState extends State<ActionWidgetsPage> {
  Temperature temp = Temperature.celsius;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Action Widgets', style: AppStyles.categoryTitle),
      ),
      body: Column(
        children: [
          AppStyles.categoryContentContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '1. Floating Action Button',
                  style: AppStyles.subcategoryTitle,
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: FloatingActionButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Floating action button pressed'),
                        ),
                      );
                    },
                    child: const Icon(Icons.add),
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
                  '2. Floating Action Button Extended',
                  style: AppStyles.subcategoryTitle,
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Floating action button extended pressed',
                          ),
                        ),
                      );
                    },
                    label: Text('Add item'),
                    icon: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
          AppStyles.categoryContentContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('3. Common Button', style: AppStyles.subcategoryTitle),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: FilledButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Common button pressed')),
                      );
                    },
                    child: const Text('Common Button'),
                  ),
                ),
              ],
            ),
          ),
          AppStyles.categoryContentContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('4. Icon Button', style: AppStyles.subcategoryTitle),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Volume Button Pressed')),
                      );
                    },
                    icon: Icon(Icons.volume_up, color: Colors.teal[800]),
                  ),
                ),
              ],
            ),
          ),
          AppStyles.categoryContentContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('5. Segmented Button', style: AppStyles.subcategoryTitle),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: IntrinsicWidth(
                      child: SegmentedButton(
                        segments: const <ButtonSegment<Temperature>>[
                          ButtonSegment<Temperature>(
                            value: Temperature.celsius,
                            label: Text(
                              'Celsius',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),

                          ButtonSegment<Temperature>(
                            value: Temperature.fahrenheit,
                            label: Text(
                              'Fahrenheit',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),

                          ButtonSegment<Temperature>(
                            value: Temperature.kelvin,
                            label: Text(
                              'Kelvin',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],

                        selected: <Temperature>{temp},
                        onSelectionChanged: (Set<Temperature> newTemp) {
                          setState(() {
                            temp = newTemp.first;
                          });
                        },
                      ),
                    ),
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

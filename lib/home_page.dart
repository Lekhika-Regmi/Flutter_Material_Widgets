import 'package:flutter/material.dart';

import 'categories/action_widgets.dart';
import 'categories/communication_widgets.dart';
import 'categories/containment_widgets.dart';
import 'categories/navigation_widgets.dart';
import 'categories/selection_widgets.dart';
import 'categories/text_input_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Map<String, Widget> categoryPages = {
    'Action': const ActionWidgetsPage(),
    'Communication': const CommunicationWidgetsPage(),
    'Containment': const ContainmentWidgetsPage(),
    'Navigation': const NavigationWidgetsPage(),
    'Selection': const SelectionWidgetsPage(),
    'Text Input': const TextInputWidgetsPage(),
  };

  String selectedCategory = 'Introduction';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget Catalog')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              padding: EdgeInsets.fromLTRB(5, 45, 0, 0),
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.teal),
              child: Text(
                'Categories',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            ...categoryPages.keys.map(
              (category) => ListTile(
                title: Text(category),
                onTap: () {
                  setState(() {
                    selectedCategory = category;
                  });

                  Navigator.pop(context); // close the drawer

                  if (categoryPages.containsKey(category)) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => categoryPages[category]!,
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: RichText(
            selectionColor: Colors.teal,
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyLarge,
              children: [
                TextSpan(
                  text:
                      '''This app is used to explore material widgets of Flutter Widget Catalog.\nIt is a beginner friendly app that helps us explore how basic widgets are used.\nTo start you can tap the icon''',
                ),
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Icon(Icons.menu),
                  ),
                ),
                TextSpan(
                  text:
                      ''' on top left\nCurrently you have selected $selectedCategory
            ''',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

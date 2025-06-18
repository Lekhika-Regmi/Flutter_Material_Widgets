import 'package:flutter/material.dart';

import '../theme/styles.dart';

class NavigationWidgetsPage extends StatefulWidget {
  const NavigationWidgetsPage({super.key});

  @override
  State<NavigationWidgetsPage> createState() => _NavigationWidgetsPageState();
}

class _NavigationWidgetsPageState extends State<NavigationWidgetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigation', style: AppStyles.categoryTitle)),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:widget_practice/theme/styles.dart';

class ContainmentWidgetsPage extends StatefulWidget {
  const ContainmentWidgetsPage({super.key});

  @override
  State<ContainmentWidgetsPage> createState() => _ContainmentWidgetsPageState();
}

class _ContainmentWidgetsPageState extends State<ContainmentWidgetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1.Containment', style: AppStyles.categoryTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppStyles.categoryContentContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Alert Dialog', style: AppStyles.subcategoryTitle),
                ],
              ),
            ),

            AppStyles.categoryContentContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('2.Card', style: AppStyles.subcategoryTitle)],
              ),
            ),

            AppStyles.categoryContentContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('3.Divider', style: AppStyles.subcategoryTitle),
                ],
              ),
            ),

            AppStyles.categoryContentContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('4.List Tile', style: AppStyles.subcategoryTitle),
                ],
              ),
            ),

            AppStyles.categoryContentContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('5.Bottom Sheet', style: AppStyles.subcategoryTitle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

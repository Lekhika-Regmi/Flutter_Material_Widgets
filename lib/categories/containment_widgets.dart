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
        title: Text('Containment', style: AppStyles.categoryTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Alert Dialog
            AppStyles.categoryContentContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1. Alert Dialog', style: AppStyles.subcategoryTitle),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Alert'),
                              content: const Text(
                                'This is an Alert Dialog Widget',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: const Text(
                        'Click here to see Alert Dialog',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 2. Card - Playlist Style
            AppStyles.categoryContentContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('2. Card', style: AppStyles.subcategoryTitle),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Stack(
                        children: [
                          // Background album image

                          // Dark overlay
                          ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              Colors.black.withValues(alpha: 0.5),
                              BlendMode.darken,
                            ),
                            child: Image.network(
                              'https://i.ytimg.com/vi/6ZPzqZoRrtk/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAcQlYrm2fn9YT_E-5OzdT88qoWNA',
                              height: 180,
                              width: 300,
                              fit: BoxFit.cover,
                            ),
                          ),

                          // Playlist info and button
                          Positioned(
                            bottom: 16,
                            left: 12,
                            right: 16,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Bruno Mars:\nUNORTHODOX',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '12 Tracks • 45 mins',
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ],
                                ),
                                ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.tealAccent[700],
                                    fixedSize: Size(120, 40),
                                  ),
                                  icon: const Icon(Icons.play_arrow),
                                  label: const Text('Play All'),
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Playing all tracks!'),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 3. Divider
            AppStyles.categoryContentContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('3. Divider', style: AppStyles.subcategoryTitle),
                  const SizedBox(height: 12),
                  const Text('Below is a Divider separating two text widgets:'),
                  const SizedBox(height: 20),

                  Align(
                    alignment: Alignment.centerRight,
                    child: const Text('Above Divider '),
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.teal,
                    height: 20, // Space between the widgets
                    indent: 10, // Left spacing
                    endIndent: 10, // Right spacing
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: const Text('Below Divider '),
                  ),
                ],
              ),
            ),

            // 4. List Tile
            AppStyles.categoryContentContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('4. List Tile', style: AppStyles.subcategoryTitle),
                  ListTile(
                    leading: Icon(Icons.music_note),
                    title: Text('Now Playing : Bruno Mars'),
                  ),
                ],
              ),
            ),

            // 5. Bottom Sheet
            AppStyles.categoryContentContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('5. Bottom Sheet', style: AppStyles.subcategoryTitle),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(14),
                            ),
                          ),
                          backgroundColor: Colors.teal.shade50,
                          builder: (BuildContext context) {
                            return SizedBox(
                              width: double.infinity,
                              height: 200,
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'This is a Bottom Sheet',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    const Text(
                                      'Widgets can be placed here',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    const SizedBox(height: 15),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Close'),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: const Text('Show Bottom Sheet'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

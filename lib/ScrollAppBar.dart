import 'package:flutter/material.dart';

void main() => runApp(const ScrollAppBar());

class ScrollAppBar extends StatelessWidget {
  const ScrollAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Floating App Bar';

    return MaterialApp(
        title: title,
        home: Scaffold(
            body: CustomScrollView(
              slivers: [
                const SliverAppBar(
                  title: Text(title),
                  floating: true,
                  flexibleSpace: Placeholder(),
                  expandedHeight: 100,
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (context, index) =>
                        ListTile(title: Text('Item #$index')),
                    childCount: 500,
                  ),
                )
              ],
            )
        )
    );
  }
}
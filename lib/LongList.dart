import 'package:flutter/material.dart';

void main() => runApp(longListSection(listItems: List<String>.generate(10000, (i) => 'Item $i')));

/*
  与标准的 ListView 构造函数需要一次性创建所有列表项不同的是:
  ListView.builder 构造函数只在列表项从屏幕外滑入屏幕时才去创建列表项
 */

class longListSection extends StatelessWidget {
  final List<String> listItems;

  const longListSection({super.key, required this.listItems});

  @override
  Widget build(BuildContext context){
    const title = 'longList';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: listItems.length,
          prototypeItem: ListTile(
            title: Text(listItems.first),
          ),
          itemBuilder: (context, index){
            return ListTile(
              title:Text(listItems[index]),
            );
          },
        ),
      ),
    );
  }
}
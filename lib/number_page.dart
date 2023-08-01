import 'package:flutter/material.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListWidget();
  }
}

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  final List<int> _itemCounts = List.generate(100, (_) => 0);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _itemCounts.length,
      itemBuilder: (context, index) => ListItemWidget(
        count: _itemCounts[index],
        onCountIncremented: () => _incrementCount(index),
      ),
    );
  }

  void _incrementCount(int index) {
    setState(() {
      _itemCounts[index]++;
    });
  }
}

class ListItemWidget extends StatefulWidget {
  final int count;
  final VoidCallback onCountIncremented;

  const ListItemWidget(
      {Key? key, required this.count, required this.onCountIncremented})
      : super(key: key);

  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          Text(widget.count.toString()),
          MaterialButton(
            onPressed: () {
              setState(() {
                widget.onCountIncremented();
              });
            },
            child: const Text("+"),
          ),
        ],
      ),
    );
  }
}

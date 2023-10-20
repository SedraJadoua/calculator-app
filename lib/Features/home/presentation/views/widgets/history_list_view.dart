import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HistoryListView extends StatelessWidget {
  const HistoryListView({super.key, required this.snapshot});
  final AsyncSnapshot<List<List<String>>> snapshot;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      dragStartBehavior: DragStartBehavior.down,
      shrinkWrap: true,
      itemCount: snapshot.data![0].length,
      itemBuilder: (context, index) => ListTile(
        subtitle: Text(
          (snapshot.data![1][index].isNotEmpty) ? snapshot.data![1][index] : '',
          style: const TextStyle(fontSize: 18),
        ),
        title: Text(
          (snapshot.data![0][index].isNotEmpty)
              ? ' = ${snapshot.data![0][index]}'
              : '',
          style: const TextStyle(color: Colors.green, fontSize: 20),
        ),
      ),
    );
  }
}

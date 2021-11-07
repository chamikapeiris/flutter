import 'package:flutter/material.dart';
import 'package:general/models/model_task.dart';

class CardTask extends StatelessWidget {
  const CardTask({
    Key? key,
    required this.task,
  }) : super(key: key);

  final ModelTask task;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(task.title),
            ElevatedButton(
              onPressed: () {},
              child: Text('Click'),
            ),
          ],
        ),
      ),
    );
  }
}

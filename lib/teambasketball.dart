import 'package:flutter/material.dart';

class Teambasketball extends StatefulWidget {
  final String teamname;
  final int score;
  final Function(int) onScoreChanged;

  const Teambasketball({
    super.key,
    required this.teamname,
    required this.score,
    required this.onScoreChanged,
  });

  @override
  State<Teambasketball> createState() => _TeambasketballState();
}

class _TeambasketballState extends State<Teambasketball> {
  late int counter;

  @override
  void initState() {
    super.initState();
    counter = widget.score;
  }

  @override
  void didUpdateWidget(covariant Teambasketball oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.score != oldWidget.score) {
      counter = widget.score;
    }
  }

  void onAddPoints(int add) {
    setState(() {
      counter += add;
    });
    widget.onScoreChanged(counter);  
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.teamname, style: const TextStyle(fontSize: 30)),
        Text(
          "$counter",
          style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold ,color: Colors.orange),
        ),
        ElevatedButton(
          onPressed: () => onAddPoints(1),
          child: const Text("Add 1 Point"),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => onAddPoints(2),
          child: const Text("Add 2 Points"),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => onAddPoints(3),
          child: const Text("Add 3 Points"),
        ),
      ],
    );
  }
}

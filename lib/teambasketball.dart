import 'package:flutter/material.dart';

class Teambasketball extends StatefulWidget {
  final String teamname;

  const Teambasketball({super.key, required this.teamname});

  @override
  State<Teambasketball> createState() => TeambasketballState();
}

class TeambasketballState extends State<Teambasketball> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
  }
  /*
  @override
  void didUpdateWidget(covariant Teambasketball oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.score != oldWidget.score) {
      counter = widget.score;
    }
  }*/

  void onAddPoints(int add) {
    setState(() {
      counter += add;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
      print(counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    print(counter);

    return Column(
      children: [
        Text(widget.teamname, style: const TextStyle(fontSize: 30)),
        Text(
          "$counter",
          style: const TextStyle(
            fontSize: 80,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
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

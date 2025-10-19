import 'package:flutter/material.dart';
import 'package:basketbaktwo/teambasketball.dart';

class Basketbalhome extends StatefulWidget {
  Basketbalhome({super.key});

  @override
  State<Basketbalhome> createState() => _BasketbalhomeState();
}

class _BasketbalhomeState extends State<Basketbalhome> {
  final GlobalKey<TeambasketballState> TeambasketKey =
      GlobalKey<TeambasketballState>();
  final GlobalKey<TeambasketballState> TeambasketKey2 =
      GlobalKey<TeambasketballState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Basket Ball"),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // 🔹 توسيط الفرق

              children: [
                Expanded(flex: 4, child: Teambasketball( key:TeambasketKey,teamname: "Team A")),
                Container(
                  height: size.height * 0.5,
                  width: 2,
                  color: Colors.grey,
                ),
                Expanded(flex: 4, child: Teambasketball(key:TeambasketKey2,teamname: "Team B")),
              ],
            ),
            const SizedBox(height: 30),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: () {
                setState(() {
                  TeambasketKey.currentState?.reset();
                  TeambasketKey2.currentState?.reset();
                });
              },
              child: const Text(
                "Reset Both",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

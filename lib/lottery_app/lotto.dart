import 'package:flutter/material.dart';
import 'dart:math';
//import 'package:flutter_svg/flutter_svg.dart';
import 'lotto_ball.dart';

class Lotto extends StatefulWidget {
  const Lotto({super.key});

  @override
  State<Lotto> createState() => _LottoState();
}

class _LottoState extends State<Lotto> {
  List<List<int>> listLottery = [];
  void _createNumber() {
    setState(() {
      List<int> lottery = [];

      while (true) {
        var rnd = Random().nextInt(45) + 1;
        if (!lottery.contains(rnd)) {
          lottery.add(rnd);
        }
        if (lottery.length == 6) {
          break;
        }
      }
      lottery.sort();
      listLottery.add(lottery);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 83, 125, 198),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 208, 150, 3),
        title: const Text('Lottery App'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: listLottery.length,
          itemBuilder: (BuildContext context, int index) {
            var path_1 = 'svg/${listLottery[index][0]}.svg';
            var path_2 = 'svg/${listLottery[index][1]}.svg';
            var path_3 = 'svg/${listLottery[index][2]}.svg';
            var path_4 = 'svg/${listLottery[index][3]}.svg';
            var path_5 = 'svg/${listLottery[index][4]}.svg';
            var path_6 = 'svg/${listLottery[index][5]}.svg';
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LottoBall(path: path_1),
                  const SizedBox(
                    width: 2,
                  ),
                  LottoBall(path: path_2),
                  const SizedBox(
                    width: 2,
                  ),
                  LottoBall(path: path_3),
                  const SizedBox(
                    width: 2,
                  ),
                  LottoBall(path: path_4),
                  const SizedBox(
                    width: 2,
                  ),
                  LottoBall(path: path_5),
                  const SizedBox(
                    width: 2,
                  ),
                  LottoBall(path: path_6),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _createNumber();
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

var latinalfabesi = [
  'a',
  'e',
  'i',
  'o',
  'u',
  'n',
  'sa',
  'se',
  'shi',
  'su',
  'so',
  'ka',
  'ki',
  'ko',
  'ku',
  'ke',
  'ta',
  'chi',
  'tsu',
  'te',
  'to',
  'na',
  'ni',
  'nu',
  'ne',
  'no',
  'ha',
  'hi',
  'hu',
  'he',
  'ho',
  'ma',
  'mi',
  'mu',
  'me',
  'mo',
  'ya',
  'yu',
  'yo',
  'ra',
  'ri',
  'ru',
  're',
  'ro',
  'wa',
  'wo'
];
var hiragana = [
  'あ',
  'え',
  'い',
  'お',
  'う',
  'ん',
  'さ',
  'せ',
  'し',
  'す',
  'そ',
  'か',
  'き',
  'こ',
  'く',
  'け',
  'た',
  'ち',
  'つ',
  'て',
  'と',
  'な',
  'に',
  'ぬ',
  'ね',
  'の',
  'は',
  'ひ',
  'ふ',
  'へ',
  'ほ',
  'ま',
  'み',
  'む',
  'め',
  'も',
  'や',
  'ゆ',
  'よ',
  'ら',
  'り',
  'る',
  'れ',
  'ろ',
  'わ',
  'を'
];
var katakana = [
  'ア',
  'エ',
  'イ',
  'オ',
  'ウ',
  'ン',
  'サ',
  'セ',
  'シ',
  'ス',
  'ソ',
  'カ',
  'キ',
  'コ',
  'ク',
  'ケ',
  'タ',
  'チ',
  'ツ',
  'テ',
  'ト',
  'ナ',
  'ニ',
  'ヌ',
  'ネ',
  'ノ',
  'ハ',
  'ヒ',
  'フ',
  'へ',
  'ホ',
  'マ',
  'ミ',
  'ム',
  'メ',
  'モ',
  'ヤ',
  'ユ',
  'ヨ',
  'ラ',
  'リ',
  'ル',
  'レ',
  'ロ',
  'ワ',
  'ヲ'
];

var textkontrol = TextEditingController();

final _random = new Random();
int puanim = 0;
var rastgelesayi = _random.nextInt(katakana.length);

class ogrenme_ekrani extends StatefulWidget {
  @override
  _ogrenme_ekraniState createState() => _ogrenme_ekraniState();
}

class _ogrenme_ekraniState extends State<ogrenme_ekrani> {
  int hangiekran = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar0(),
      body: buildColumngovde(context),
      bottomNavigationBar: buildBottomNavigationBarforselect(),
    );
  }

  Column buildColumngovde(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: soruyubelirle(context),
        ),
        Expanded(
          flex: 2,
          child: TextField(
            onChanged: degisti,
            controller: textkontrol,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "type a character"),
          ),
        )
      ],
    );
  }

  Text soruyubelirle(BuildContext context) {
    return Text(
      latinalfabesi[rastgelesayi],
      style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.red),
    );
  }

  void degisti(text) {
    if ((hangiekran == 0 && text == katakana[rastgelesayi]) ||
        (hangiekran == 1 && text == hiragana[rastgelesayi])) {
      setState(() {
        puanim++;
        rastgelesayi = _random.nextInt(katakana.length);
        textkontrol.clear();
      });
    }
  }

  void alfabedegisti(index) {
    setState(() {
      hangiekran = index;
    });
  }

  BottomNavigationBar buildBottomNavigationBarforselect() {
    return BottomNavigationBar(
      currentIndex: hangiekran,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.keyboard_rounded),
            label: "katakana",
            backgroundColor: Colors.red),
        BottomNavigationBarItem(
            icon: Icon(Icons.keyboard_rounded),
            label: "hiragana",
            backgroundColor: Colors.blue)
      ],
      onTap: alfabedegisti,
    );
  }

  AppBar appbar0() {
    return new AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("latin to japan"),
          Text("Point: "),
          Text(puanim.toString())
        ],
      ),
    );
  }
}

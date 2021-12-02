import 'dart:async';
import 'dart:convert';
import 'package:cryptobas/pages/coinCard.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../pages/coinModel.dart';
import 'package:cryptobas/screens/conversao.dart';
import 'package:cryptobas/screens/noticias.dart';



class CriptoMoeda extends StatefulWidget {
  @override
  _CriptoMoedaState createState() => _CriptoMoedaState();
}

class _CriptoMoedaState extends State<CriptoMoeda> {

  int _selectedIndex = 0;
  Widget _bodyWidget = CriptoBody();

  final screens = [
    Conversao(),
    Noticias(),
  ];

  Future<List<Coin>> fetchCoin() async {
    coinList = [];
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false'));

    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = json.decode(response.body);
      if (values.length > 0) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            coinList.add(Coin.fromJson(map));
          }
        }
        setState(() {
          coinList;
        });
      }
      return coinList;
    } else {
      throw Exception('Falha ao carregar as moedas');
    }
  }

  @override
  void initState() {
    fetchCoin();
    Timer.periodic(Duration(seconds: 20), (timer) => fetchCoin());
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: Text(
            'CRIPTOMOEDAS',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'conversao',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'noticias',
            ),
          ],
          onTap: (index){
            setState(() {
              _selectedIndex = index;
              switch (index){
                case 0:
                  _bodyWidget = CriptoBody();
                  break;
                case 1:
                  _bodyWidget = Conversao();
                  break;
                case 2:
                  _bodyWidget = Noticias();
                  break;
              }
            });
          },
        ),
        body: _bodyWidget
    );
  }
}

class CriptoBody extends StatelessWidget {
  const CriptoBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: coinList.length,

      itemBuilder: (context, index) {
        return CoinCard(
          name: coinList[index].name,
          symbol: coinList[index].symbol,
          imageUrl: coinList[index].imageUrl,
          price: coinList[index].price.toDouble(),
          change: coinList[index].change.toDouble(),
          changePercentage: coinList[index].changePercentage.toDouble(),
        );
      },);
  }
}
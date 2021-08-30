import 'package:http/http.dart' as https;
import 'dart:convert';
import 'package:flutter/material.dart';

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  List<String> currenciesList = [
    'AUD',
    'BRL',
    'CAD',
    'CNY',
    'EUR',
    'GBP',
    'HKD',
    'IDR',
    'ILS',
    'INR',
    'JPY',
    'MXN',
    'NOK',
    'NZD',
    'PLN',
    'RON',
    'RUB',
    'SEK',
    'SGD',
    'USD',
    'ZAR'
  ];
}


class networkhelper
{
  networkhelper(this.urls);

  final String urls;
  Future getdata() async
  {

    var url = Uri.parse(urls);
    var response = await https.post(url);
    String datas = response.body;
    return jsonDecode(datas);


  }

}

class alpha {
  Future getCoinData(String selectedCurrency) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {

      networkhelper Netwirker = networkhelper(
          'https://rest.coinapi.io/v1/exchangerate/BTC/SEK?apikey=1CF3CAFE-EE67-454F-8693-F64A80DBF94E');
      var weaterdata = await Netwirker.getdata();
      double price = weaterdata['rate'];
      print(price);
      cryptoPrices[crypto] = price.toStringAsFixed(0);
    }
    return cryptoPrices;
  }
}

// const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
// const apiKey = 'YOUR-API-KEY-HERE';
//
// class CoinData {

//       String requestURL =
//           '$coinAPIURL/$crypto/$selectedCurrency?apikey=$apiKey';
//       http.Response response = await http.get(requestURL);
//
//     }
//     return
//   }
// }

// if (response.statusCode == 200) {
//         var decodedData = jsonDecode(response.body);
//
//         cryptoPrices[crypto] = price.toStringAsFixed(0);
//       } else {
//         print(response.statusCode);
//         throw 'Problem with the get request';
//       }
import 'coin_data.dart';

class Fetch
{
  void geolocat() async
  {
    networkhelper Netwirker = networkhelper('https://rest.coinapi.io/v1/exchangerate/ETH/INR?apikey=9B22DD49-762E-4DE9-91C7-FD8509DA606D');
    var weaterdata = await Netwirker.getdata();
    return weaterdata;
  }
}
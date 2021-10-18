import 'dart:io';

//store
void GooglePlay(int appId) {}
void AppleAppStore(int appId) {}

//maps
void GoogleMaps(double lat, double lon) {}
void AppleMaps(double lat, double lon) {}

//pay
void GooglePay(String cardNumber, String pin) {}
void ApplePay(String cardNumber, String pin) {}

void main ()
{
  Function Store = () {};
  Function Maps = () {};
  Function Pay = () {};
  print ('Select the platform (Android/IOS)');
  var OS = stdin.readLineSync();
  if (OS == 'Android')
    {
      Store = GooglePlay;
      Maps = GoogleMaps;
      Pay = GooglePay;
    }
  if (OS == 'IOS')
    {
      Store = AppleAppStore;
      Maps = AppleMaps;
      Pay = ApplePay;
    }
  print(OS);
}
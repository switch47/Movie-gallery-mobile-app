import 'package:movie_gallery/game/soru.dart';

class SoruHavuzu{
  int _soruIndex=0;

  List<Soru> _soruBankasi=[
    Soru(soruText: 'Captain America can lift Thor hammer.', soruCevap: true),
    Soru(
        soruText: 'Harry Potter has 8 parts.',
        soruCevap: true),
    Soru(
        soruText: 'Xmen is already now in MCU.',
        soruCevap: false),
    Soru(
        soruText: 'Stranger things is the most funny series',
        soruCevap: false),
    Soru(
        soruText: 'Tony Stark is a billionaire',
        soruCevap: true),
    Soru(
        soruText: '1900 is the year that IRON MAN appeared in the movie for the first time',
        soruCevap: false),
  ];
  String soruTextGetir(){
    return _soruBankasi[_soruIndex].soruText;
  }
  bool soruCevapGetir(){
    return _soruBankasi[_soruIndex].soruCevap;
  }
  void sonrakiSoruGetir(){
    if(_soruIndex<_soruBankasi.length-1){
      _soruIndex++;
    }
  }
  bool sorularBittiMi(){
    if(_soruIndex>=_soruBankasi.length-1){
      return true;
    }
    else{
      return false;
    }
  }
  void reset(){
    _soruIndex=0;
  }

}
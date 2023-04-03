import 'package:bayrakquizapp/Bayraklar.dart';
import 'package:bayrakquizapp/VeritabaniYardimcisi.dart';

class BayraklarDao{
  Future<List<Bayraklar>> rastgeleGetir() async{
    var db=await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String,dynamic>> maps=await db.rawQuery("SELECT * FROM bayraklar ORDER BY RANDOM() LIMIT 5");
    return List.generate(maps.length, (index){
      var satir=maps[index];
      return Bayraklar(satir["bayrak_id"],satir["bayrak_ad"],satir["bayrak_resim"]);
    });
  }
  Future<List<Bayraklar>> rastgele3YanlisGetir(int bayrak_id) async{
    var db=await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String,dynamic>> maps=await db.rawQuery("SELECT * FROM bayraklar WHERE bayrak_id!=$bayrak_id ORDER BY RANDOM() LIMIT 3");
    return List.generate(maps.length, (index){
      var satir=maps[index];
      return Bayraklar(satir["bayrak_id"],satir["bayrak_ad"],satir["bayrak_resim"]);
    });
  }
}
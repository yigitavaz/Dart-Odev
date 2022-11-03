import 'package:dart_odev/dart_odev.dart' as dart_odev;
import 'dart:io';

//dart:io'yu kullanıcıdan veri almak için import ettim.

void main(List<String> arguments) {
  var urun = new Product();
  urun.BarCode = "VSC24";
  urun.Category = "Elektronik";
  urun.Name = "ViewSonic Monitor";
  urun.Price = "9499";
  urun.Piece = "10000000";

//burada yazdırmak istediğim şeyleri listeledim.
  print(urun.ekle());
  print(urun.update("VSC24"));
  print(urun.gerekli());
  print(urun.sil("VSC24"));

//kullanıcıdan veri almak. String? barkod = stdin.readLineSync();
  print("Barkod Giriniz: ");
  String? barkod = stdin.readLineSync();
}

// Product adında class oluşturdum.
class Product {
  var BarCode;
  var Category;
  var Name;
  var Price;
  var Piece;

//String ekle diyerek bool ile beraber ürünün eklendiğini sorgulattım.
  String ekle([bool eklendiMi = true]) {
    return eklendiMi ? "Ürün eklendi" : "Ürün eklenmedi";
  }

//String update diyerek ürünün güncellendiğini sorgulattım.
  String update(String updateBarkod) {
    return "$updateBarkod Ürün Güncellendi";
  }

//String sil diyerek ürünün silindiğini sorgulattım.
  String sil(String silBarkod) {
    return "$silBarkod Ürün Silindi";
  }

  // Yukarıda listelenmesini istediğim şeyleri burada listeledim.
  List gerekli(
      {var BarCode = "VSC24",
      var Category = "Elektronik",
      var Name = "ViewSonic Monitor",
      var Price = "8599",
      var Piece = "10000000"}) {
    return [
      "Ürünün Barkodu: ",
      BarCode,
      'Ürünün Kategorisi: ',
      Category,
      'Ürünün Adı: ',
      Name,
      'Ürünün Fiyatı: ',
      Price,
      'Ürünün Adedi: ',
      Piece
    ];
  }
}

import 'package:flutter/foundation.dart';

class matHang{
  String tenMH;
  int gia;

  matHang({
    required this.tenMH,
    required this.gia,
  });
}

class Catalog extends ChangeNotifier{
  List<matHang> _matHangs = [
    matHang(tenMH: "Sandwich", gia: 25000),
    matHang(tenMH: "Hamburger", gia: 30000),
    matHang(tenMH: "Banh Mi", gia: 20000),
    matHang(tenMH: "Banh Tet", gia: 50000),
    matHang(tenMH: "Banh Gio", gia: 30000),
    matHang(tenMH: "Banh Dap", gia: 30000),
    matHang(tenMH: "Ga ran", gia: 25000),
    matHang(tenMH: "Khoai Chien", gia: 50000),
    matHang(tenMH: "Steak", gia: 60000),
    matHang(tenMH: "Salad", gia: 20000),
    matHang(tenMH: "Ga luoc", gia: 150000),
  ];
  List<int> _gioHang = [];
  List<matHang> get matHangs => _matHangs;
  List<int> get gioHang => _gioHang;
  int get sLMH_GioHang => _gioHang.length;
  //int get tongTien => _gioHang.fold(0, (previousValue, matHang) => )
  int get tongTien => _gioHang.fold(0, (previousValue, element) => previousValue + _matHangs[element].gia);

  void themVaoGioHang(int index){
    _gioHang.add(index);
    notifyListeners();
  }
  
  bool ktMatHangTrongGio(int id){
    for(int i=0; i<_gioHang.length;i++){
      if(id== _gioHang[i])
        return true;
    }
    return false;
  }
  void xoaMH_KhoiGio(int index){
    _gioHang.removeAt(index);
    notifyListeners();
  }
}
import 'dart:io';

void main() {
  // biodata
  String nama = "Luthfiah Shahfa";
  int absen = 15;
  String kelas = "XI RPL";
  int umur = 16;
  String alamat = "Purbalingga";
  double nilai = 95.5;
  bool kehadiran = true;
  print("===biodata===");
  print("nama : $nama");
  print("absen : $absen");
  print("kelas : $kelas");
  print("umur : $umur");
  print("alamat : $alamat");
  print("nilai : $nilai");
  print("kehadiran : $kehadiran");
  if (umur >17) {
    print("Punya KTP");
  }else{
    print("Belum Punya KTP");
  }
}

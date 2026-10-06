import 'dart:io';

int penjumlahan(int a, int b) {
  //proses penjumlahan
  if (a < 0 || b < 0) {
    print("Peringatan: Angka Penjumlahan Negatif");
  }
  int hasil = a + b;
  return hasil;
}

int pengurangan(int c, int d) {
  //proses pengurangan
  if (c < d) {
    print("Peringatan: Hasil pengurangan akan bernilai negatif");
  }
  int hasil = c - d;
  return hasil;
}

int perkalian(int e, int f) {
  //proses perkalian
  if (e == 0 || f == 0) {
    print("Peringatan: Hasil perkalian nol jika angka dikali dengan nol");
  }
  int hasil = e * f;
  return hasil;
}

int pembagian(int g, int h) {
  //proses pembagian
  if (h == 0) {
    print("Erorr: Tidak bisa membagi dengan nol!");
  }
  int hasil = g ~/ h;
  return hasil;
}

void main() {
  while (true) {
    // input angka pertama
    print("Tolong masukan angka Pertama");
    String? input1 = stdin.readLineSync();
    int angka1 = int.parse(input1 ?? '0');
    // input operator
    print("Tolong masukan operator (+,-,*,/):");
    String? operasi = stdin.readLineSync();
    //input angka kedua
    print("Tolong masukan angka kedua");
    String? input2 = stdin.readLineSync();
    int angka2 = int.parse(input2 ?? '0');
    //variabel untuk menampung hasil
    int hasil = 0;
    //memanggil fungsi kalkulator
    if (operasi == "+") {
      hasil = penjumlahan(angka1, angka2);
    } else if (operasi == "-") {
      hasil = pengurangan(angka1, angka2);
    } else if (operasi == "*") {
      hasil = perkalian(angka1, angka2);
    } else if (operasi == "~/") {
      hasil = pembagian(angka1, angka2);
    } else {
      print("Operator tidak valid");
    }
    //menampilkan hasil
    print("hasil dari $angka1 $operasi $angka2 adalah: $hasil");
    // pengecekan jika hasil negatif, maka putar balik
    if (hasil < 0) {
      print(
        "Peringatan: hasil bernilai negatif ($hasil) Program akan mengulang otomatis!",
      );
      continue; //melompat kembali ke awal perulangan while
    } else {
      print("Hasil bernilai positif atau nol. Program selesai");
      break; //keluar dari perulangan jika hasil tidak negatif
    }
  }
}

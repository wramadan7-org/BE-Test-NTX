# Beberapa point untuk test yang akan diberikan

0. Sebelum mengerjakan semua soal dengan sendiri, tanya kan setiap masalah masalah ini ke chatgpt, jadi nanti ada jawaban versi chatgpt dan ada jawaban versi diri mu

1. Refactore function yang bernama refactoreMe1 dan refactoreMe2 (wajib memakai query native) menjadi jauh lebih mudah di baca, datasset nya sudah di sediakan di folder files

2. Buat endpoint berbasis websocket untuk memfecth data dari api https://livethreatmap.radware.com/api/map/attacks?limit=10 yang mana dia akan memfetch 3 menit sekali (tulis code mu di callmeWebSocket function)

3. Store data data yang ada di https://livethreatmap.radware.com/api/map/attacks?limit=10 ke dalam database postgres, lalu buatkan 1 endpoint sederhana untuk mendaptkan berapa jumlah "destinationCountry" yang di serang beberapa type dan "sourcecountry" yang menyerang dengan beberapa type
   dan wajib mempunyai response dengan bentuk seperti ini :
   (tulis code mu di getData function, pake query native)

```
{
  success:true,
  statusCode:200,
  data:{
    label:["val","val","val"]
    total:[200,200,200]
  }
}
```

4. Terapkan redis caching pada saat memfetch endpoint yang kamu buat di point nomor 3

5. Buatkan aku middleware authentikasi jwt untuk memprotect api, serta buatkan juga middleware untuk membatasi endpoint lain berdasarkan role user, contoh :
   walaupun si user mempunyai token yang valid, tapi tidak mempunyai role yang valid, dia tidak akan bisa membuka beberapa endpoint.

6. Buatkan unit test untuk mentest si endpoint berjalan dengan baik.

7. Push hasil test ini di github mu

## Note
Berikut beberapa note dari masing-masing point

1. Saya membuat 2 cara, yaitu menggunakan then-catch dan try-catch

2. Saya membuat server websocket di file server.js, kemudian untuk klien di controller (callmeWebSocket function)

4. Saya membuat kokensi sederhana, dan harus install package redis (npm i redis). Membuat function untuk menghubungkan redis dengan server, kemudian jalankan redis di file server.js untuk pengecekan apakah sudah berhasil terhubung atau tidak. Pada controller get data, get data dari redis dengan key "attackers". Dan untuk setiap 3 menit sekali, saya hapus key "attackers" di redis, saya implement di function callmeWebSocket.

5. Saya membuat 2 fungsi di folder helper, yaitu fungsi untuk signin dan verify JWT. Saya juga membuat role type dengan penamaan file role.js di folder config. Untuk metode Authorization, harap memakai Bearer Token dengan hasil token kita generate manual di website jwt.io, ubah data di bagian payload data dan verify signature.
Untuk payload data, harap isikan key role, dengan value role adalah admin/user/public, Contoh:
```
{
  "name": "Wahyu Ramadan",
  "role": "admin"
}
```
Untuk verify signatur, harap isikan sesuai file auth.js di folder config.
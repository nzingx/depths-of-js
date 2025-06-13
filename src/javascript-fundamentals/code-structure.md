#  Memahami Struktur Kode JavaScript dengan Gaya Sederhana

Belajar JavaScript bisa jadi menyenangkan kalau kita tahu cara menyampaikannya dengan bahasa yang lebih manusiawi. Yuk, kita pelajari bersama dari dasar!

---

##  Apa Itu Statement (Pernyataan)?

Bayangkan kamu ngobrol sama komputer dan bilang:

> "Tolong tampilkan pesan: Halo, bagaimana kabarmu hari ini?"

Nah, dalam JavaScript kamu bisa menyampaikan itu dengan:

```js
alert("halo bagaimana kabarmu hari ini?");
```

Kita menyebut ini sebagai **statement** atau pernyataanyaitu instruksi tunggal yang memberitahu komputer untuk melakukan sesuatu.

### Contoh Statement:

```js
alert("hello");
alert("user");
```

> \[!NOTE]
> Di JavaScript, setiap pernyataan sebaiknya diakhiri dengan titik koma `;` agar lebih rapi dan menghindari error.

---

##  Mengenal Titik Koma `;` di JavaScript

Titik koma digunakan untuk **mengakhiri sebuah statement**. Meskipun JavaScript bisa "menebak" jika kamu lupa menuliskannya, sebaiknya tetap ditulis.

### Contoh:

```js
alert("Hello");
alert("World");
```

Tapi, tunggu dulu...

---

##  Apa Itu Automatic Semicolon Insertion (ASI)?

JavaScript punya fitur bernama **ASI** yang otomatis menambahkan titik koma jika kamu lupa menuliskannya.

```js
alert("Hello")
alert("World")
```

Kode di atas tetap berjalan karena JavaScript menambahkan `;` secara otomatis di belakang layar.

### Tapi hati-hati:

Kadang fitur ini bisa **menjebak kita** dan menyebabkan error yang sulit ditemukan.

### Contoh Berbahaya:

```js
let a = 5(function () {
  console.log("Halo dari fungsi!");
})();
```

Tanpa titik koma setelah `let a = 5`, JavaScript mengira kamu ingin memanggil angka 5 sebagai fungsiyang tentu saja salah dan bikin error!

---

##  Komentar: Catatan untuk Diri Sendiri

Komentar adalah bagian kode yang **tidak akan dijalankan oleh komputer**. Fungsinya adalah untuk memberi penjelasan atau catatan agar kode lebih mudah dipahami.

| Tipe Komentar | Bentuk        | Keterangan                             |
| ------------- | ------------- | -------------------------------------- |
| Satu Baris    | `//`          | Untuk catatan singkat                  |
| Banyak Baris  | `/* ... */`   | Untuk catatan panjang                  |
| Tidak Boleh   | `/* /* */ */` | Komentar di dalam komentar bikin error |

---

##  Komentar Satu Baris (`//`)

Komentar ini cocok untuk catatan pendek.

```js
// Ini komentar, komputer akan abaikan ini
alert('Hello');

// Tampilkan pesan, lalu komentar ini diabaikan juga
alert('World'); // Komentar di sebelah kanan baris
```

> \[!NOTE]
> Jika menulis komentar dalam satu baris dengan kode, pastikan **ditaruh setelah kode**, bukan di depannya.

###  Contoh Benar:

```js
let x = 10; // Menyimpan angka 10
// Ini komentar di atas kode
console.log(x); // Menampilkan nilai x
```

###  Contoh Salah:

```js
// Menyimpan angka 10 let x = 10;
```

Komentar seperti ini membuat komputer **mengabaikan kode penting** yang seharusnya dijalankan.

---

##  Komentar Banyak Baris (`/* ... */`)

Komentar jenis ini cocok untuk penjelasan panjang.

```js
/*
Ini komentar banyak baris.
Bisa dipakai untuk dokumentasi lebih lengkap.
*/
alert('Halo dunia!');
```

> \[!NOTE]
> Komentar banyak baris **tidak bisa ditumpuk**. Jangan membuat komentar di dalam komentar.

###  Contoh Benar:

```js
/*
Baris ini akan diabaikan
Baris ini juga diabaikan
*/
let nama = 'Ani';
console.log(nama);
```

###  Contoh Salah:

```js
/* Komentar awal
   /* Ini komentar di dalam komentar */
   Ini menyebabkan error!
*/
```

---

##  Penutup

Belajar JavaScript itu bukan cuma soal menghafal sintaks, tapi juga **memahami bagaimana cara berpikir seperti komputer**. Dengan memahami struktur kode dan komentar, kamu sedang membangun fondasi yang kuat sebagai programmer.

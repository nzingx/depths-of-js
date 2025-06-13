#  Apa Itu Variabel?

Oke bestie, jadi **variabel** itu ibarat kayak **kotak penyimpanan data** di dalam otak-nya komputer. Bayangin lo punya kotak, terus lo kasih labelmisalnya pesandan lo masukin isi kayak teks atau angka ke dalam kotak itu.

> Analogi simpel:  
> Lo beli box di IKEA, terus lo tulis label baju musim panas dan masukin baju lo ke situ. Nah si komputer juga gitu, cuma yang disimpen bukan baju, tapi data digital.

Contoh:

```js
let pesan = 'hello world';
````

Artinya:

> Yo komputer, bikinin gue satu kotak, kasih label `pesan`, terus isiin teks 'hello world' ke dalemnya ya.

---

##  Kenapa Kita Butuh Variabel?

Pas kita ngoding, sering banget kita butuh **nyimpen info** buat dipakai nantikayak nyatet duluan baru dipake pas dibutuhin. Jadi, variabel itu kayak memo pribadi lo buat komputer.

Contoh real life:

* Nama user: `let nama = 'Andi';`
* Harga barang: `let harga = 15000;`
* Stok barang: `let stok = 10;`

---

##  Cara Membuat Variabel

Lo bisa pake keyword `let` buat bikin variabel. Strukturnya kayak gini:

```js
let namaVariabel = nilai;
```

Contoh lengkap:

```js
let x = 4;
let y = 5;
let z = x + y;
console.log(z); // Output: 9
```

> Analogi: Lo bilang ke komputer, Gue mau simpen angka 4 di kotak x, angka 5 di kotak y, terus jumlahin dua-duanya dan simpen di kotak z.

---

##  Kesimpulan Sementara

Variabel itu **kotak penyimpanan data** yang bisa lo kasih nama, dan lo isi nilai/data apa pun sesuai kebutuhan. Bisa teks, angka, bahkan data kompleks kayak objek atau array.

---

##  Tiga Jenis Variabel: `var`, `let`, dan `const`

JavaScript punya tiga cara buat deklarasi variabel. Tapi ga semuanya "gaul" di zaman now .

| Keyword | Bisa Diubah? | Bisa Dideklarasi Ulang? | Disarankan?            |
| ------- | ------------ | ----------------------- | ---------------------- |
| `let`   |  Bisa       |  Nggak bisa            |  Yes, modern          |
| `var`   |  Bisa       |  Bisa                  |  Old style            |
| `const` |  Nggak bisa |  Nggak bisa            |  Yes, buat data tetap |

### Contoh `let` vs `const`

```js
// Pakai let
let nama = "Ali";
nama = "Budi"; //  Boleh, karena pakai let

// Pakai const
const tanggalLahir = "01-01-2000";
tanggalLahir = "02-02-2000"; //  ERROR, gak bisa diubah
```

---

##  Cara Menamai Variabel yang Baik

###  Nama Valid:

```js
let userName;
let shoppingCart;
let $value;
let _private;
```

> [!TIP]
> Biasain pake **camelCase** buat nama variabel. Itu gaya penulisan yang kayak `namaUser`, `hargaBarang`, bukan `nama_user`.

###  Nama Invalid:

```js
let 1a;       //  Error: gak boleh diawali angka
let my-name;  //  Error: tanda minus gak boleh
```

---

##  Kapan Pakai Huruf Kapital di `const`?

Pakai huruf **kapital semua (UPPERCASE)** cuma buat nilai yang **udah fix dari awal**, alias hardcoded alias gak pernah berubah.

```js
const COLOR_ORANGE = "#FF7F00";
const PI = 3.14;
```

Kalau nilai `const` itu dihitung saat program jalan, tetap pakai huruf **kecil** aja:

```js
const birthday = '18.04.1982'; // Oke
const age = someCode(birthday); // Oke, jangan kapital
```

>  Rule-nya:
>
> * Nilai tetap, jelas dari awal?  pakai huruf besar.
> * Nilai hasil hitung/kalkulasi?  pakai huruf biasa.

---

##  Tips Nge-Nama-in Variabel

Nama variabel tuh penting banget. Jangan asal kayak `a`, `data`, `temp`, kecuali lo emang tahu banget konteksnya.

*  Gunakan nama yang **jelas dan bermakna**

  ```js
  let currentUser;
  let totalHarga;
  let isLoggedIn;
  ```
*  Hindari nama yang **generik dan gak jelas**

  ```js
  let data;
  let value;
  let x;
  ```

> [!TIP]
> Variabel yang bagus bikin tim lo gampang baca, debugging gampang, dan lo gak pusing pas liat kode 2 minggu kemudian .

---

##  Reuse atau Bikin Baru?

Kadang ada yang males bikin variabel baru dan reuse variabel lama terus-menerus. Jangan gitu, bro.

> Misalnya lo pake satu box terus ganti-ganti isinya dari baju ke makanan ke buku. Lama-lama lo sendiri lupa isinya apa.

 **Gunakan variabel baru kalau datanya beda makna**. Lebih aman, lebih clean, dan lebih gampang debug.

---

##  Summary

* Variabel = tempat buat nyimpen data.
* Gunakan `let` untuk nilai yang bisa berubah.
* Gunakan `const` untuk nilai tetap.
* Hindari `var`, itu jadul banget.
* Pakai nama yang deskriptif & konsisten.
* Huruf kapital hanya untuk nilai tetap yang hardcoded.
* Jangan males bikin variabel baru ya! 

---

##  Mini Challenge

### 1. Working with Variables

```js
let name = "John";
let admin = name;
alert(admin); // Output: John
```

### 2. Giving the Right Name

```js
let ourPlanetName = "Earth";
let currentVisitorName = "Alice";
```

### 3. Uppercase Const?

```js
const BIRTHDAY = '18.04.1982'; // Oke, hardcoded

const age = someCode(BIRTHDAY); // kecil, karena dihitung pas runtime
```

oke segitni dulu pra lanjut lagi ya 

#  Panduan Lengkap `"use strict"` di JavaScript

---

###  **Apa Itu `"use strict"`?**  
`"use strict"` itu instruksi khusus untuk ngaktifin **mode ketat** (strict mode) di JavaScript. Mode ini ngebuat kode kalian lebih aman dan disiplin.

```javascript
"use strict";
```

** Analogi:**

> "Hei komputer, tolong jalankan kode berikut dengan aturan super ketat. Jangan biarkan aku melakukan kesalahan bodoh!"

---

###  **kenapa Strict Mode Penting?**

Sebelum tahun 2009 (sebelum ES5), JavaScript terlalu **toleran terhadap kesalahan**.

```javascript
x = 5; //  ngak dideklarasi tapi tetap jalan
```

Dengan strict mode, hal seperti ini langsung jadi **error**, jadi lebih aman dan mudah dilacak.

---

###  **Cara pakek yang Benar**

>  Harus di **baris pertama** script atau fungsi.
>  ngak berlaku jika ditulis setelah kode lain.

####  Contoh Benar:

```javascript
"use strict";
let y = 10; //  Aman
```

####  Contoh Salah:

```javascript
alert("Halo");
"use strict"; //  Terlambat, ngak berlaku
```

>[!NOTE]
>  cuman **komentar** yang boleh ada di atas `"use strict"`.

---

###  **Kesalahan yang Dicegah oleh Strict Mode**

| Kasus                         | Tanpa Strict Mode      | Dengan Strict Mode |
| ----------------------------- | ---------------------- | ------------------ |
| Variabel ngak dideklarasi     | `x = 10;`              |  Error             |
| Menghapus variabel            | `delete x;`            |  Error             |
| Parameter duplikat di fungsi  | `function(a, a, b) {}` |  Error             |
| pakek kata terlarang (`eval`) | `let eval = 1;`        |  Error             |

---

###  **Strict Mode di Console Browser**

>  Console browser (Chrome, Firefox, dll) **ngak pakek strict mode secara default**.

####  Contoh yang tetap jalan di console:

```javascript
x = 100; //  Jalan, tapi berbahaya!
```

####  Cara ngaktifin Strict Mode di Console:

**1. Multiline Input (Shift + Enter):**

```javascript
"use strict";
let z = 50;
console.log(z);
```

**2. Bungkus Dalam Fungsi:**

```javascript
(function() {
  "use strict";
  // Kode kalian di sini
})();
```

>[!TIP]
>  Cara ini **selalu berhasil**, bahkan di browser lama.

---

###  **Peringatan Penting**

> [!WARNING]
> "Strict mode ibarat pelatih keras:
> Dia marahi kesalahanmu sekarang,
> Untuk selamatkanmu dari bencana nanti."

---

###  **Ringkasan Strict Mode**

| Fitur                        | Penjelasan                                                          |
| ---------------------------- | ------------------------------------------------------------------- |
| **Aktivasi**                 | `"use strict";` di baris pertama                                    |
| **ngak Bisa Dibatalkan**    | ngak ada `"no use strict"`                                         |
| **Variabel Wajib Deklarasi** | Harus pakek `let`, `const`, atau `var`                              |
| **Duplikat Parameter**       | ngak diizinkan                                                     |
| **Kata Kunci Khusus**        | ngak bisa dipakek sebagai nama variabel (`eval`, `arguments`, dll) |
| **Kompatibilitas**           | ES5+ (didukung semua browser modern)                                |

---

###  **Fakta Menarik**


*  JavaScript **modules** dan **classes** otomatis pakek strict mode
*  Strict mode memudahkan optimasi performa oleh engine JavaScript
*  Pesan error jadi lebih jelas dan berguna

---

###  **Kapan Harus Menggunakan Strict Mode?**

| Kondisi        | Rekomendasi           |
| -------------- | --------------------- |
| Proyek Baru    |  Wajib dari awal     |
| Kode Lama      |  Tambahkan bertahap |
| Library Publik |  Sangat disarankan   |

---

###  **Pro Tip** untuk Developer Serius**

Gunakan **ESLint** untuk mengotomatisasi pengecekan strict mode:

```json
"rules": {
  "strict": ["error", "global"]
}
```

---

###  Kesimpulan

`"use strict"` itu cara sederhana tapi ampuh untuk ngebuat JavaScript:

* Lebih aman
* Lebih disiplin
* Lebih mudah dipelihara
* Siap untuk masa depan

> [!NOTE]
>  Biasakan menulis `"use strict"`  biar komputer ikut jaga kualitas kode kita!

# Apa itu `Type Data` Di javascript?

oke kalau kita mau membuat sebuah variabel kan struktur nya gini

```js
{variabelType} {variabelName} = {velue}
```

`variabelType` = type variabel ada 3 `var`,`let`, dan `const`
`variabelName` = nama variabel yang mau kita buat contoh nya `foo`
`velue` = nilai variabel nya bisa angka, huruf dan lain lain

> type data = jenis data yang bisa disimpan di dalam variabel.

contoh:

```js
let nama = "Budi"; // tipe: string
let umur = 20; // tipe: number
let isOnline = true; // tipe: boolean
```

nah sekarang kita akan bahas di `velue` karna data type ini merujuk pada nilai suatu variabel.

---

## Type data di bagi menjadi 2

### 1. Tipe Primitif (tipe sederhana)

tipe data dasar yang menyimpan nilai tunggal dan tidak memiliki properti atau metode. Mereka adalah tipe data yang paling mendasar yang digunakan dalam pemrograman

nah type data primitif ini ada `7 type data` apa aja itu?

| Nama        | Contoh                  | Penjelasan Singkat       |
| ----------- | ----------------------- | ------------------------ |
| `string`    | `"Halo"`, `'abc'`       | Teks, pakai tanda kutip  |
| `number`    | `42`, `3.14`, `-5`      | Angka (bulat / desimal)  |
| `boolean`   | `true`, `false`         | Benar atau salah         |
| `undefined` |                         | Belum ada isinya         |
| `null`      | `null`                  | Kosong, kamu kosongin    |
| `symbol`    | `Symbol("id")`          | ID unik (jarang dipakai) |
| `bigint`    | `12345678901234567890n` | Angka super besar        |

### 2. Tipe Non-Primitif(komplesk)

Tipe data non-primitif dapat menyimpan lebih dari satu nilai dalam satu struktur dan seringkali dibangun menggunakan tipe data primitif. Contohnya termasuk `objek`, `array`, dan `fungsi`.

contoh:

| Nama                               | Contoh                        | Penjelasan                  |
| ---------------------------------- | ----------------------------- | --------------------------- |
| `object`                           | `{ nama: "Budi", umur: 20 }`  | Kumpulan pasangan key-value |
| `array`                            | `[1, 2, 3]`                   | Kumpulan data dalam urutan  |
| `function`                         | `function() {}` atau `()=>{}` | Kode yang bisa dipanggil    |
| `date`, `map`, `set`, `regex`, dll | Objek built-in lainnya        | Nanti belajar lanjut        |

## JavaScript Itu Dinamis & Weakly Typed

Dinamis: variabel bisa ganti-ganti tipe

Weakly Typed: otomatis konversi kalau campur tipe (kadang bahaya!)

contoh :

```js
let foo = "bar";
foo = "baz";
console.log(foo) // baz
```

## Cara check type data
kalian bisa chek type data dengan `typeoff`

contoh

```js
typeof 123         // "number"
typeof "Halo"      // "string"
typeof true        // "boolean"
typeof undefined   // "undefined"
typeof null        // ❗ "object" → ini bug lama
typeof {}          // "object"
typeof []          // "object"
typeof function(){}// "function"
```

## Contoh lengkap semua type data dan penggunaan nya

```js
/**
 * @fileoverview JavaScript Data Types and Type Coercion Experiment
 * @description
 *  This file demonstrates various unique behaviours of JavaScript
 *  related to arithmetic operations, comparisons, booleans, arrays, objects,
 *  null/undefined, NaN/Infinity, and BigInt — all through
 *  exploration of type coercion and implicit casting.
 *
 * Suitable for:
 *    - Learning JavaScript basics and advanced concepts
 *    - Debugging unusual JavaScript behaviour
 *    - Interview preparation and exploring edge cases
 *
 * @author nzing
 * @license MIT
 * @see {@link https://gist.github.com/nzingx/45b533f52142510ce97621fc925d5caa Original Gist}
 * @run curl -sL https://gist.githubusercontent.com/nzingx/45b533f52142510ce97621fc925d5caa/raw/type-coercion.js \| node
 * @run (Windows PowerShell): iwr https://gist.githubusercontent.com/nzingx/45b533f52142510ce97621fc925d5caa/raw/type-coercion.js \| %{ $_.Content } \| node
 */

// Operasi Aritmetika Campuran
console.log(`"5" + 3 + 1:           ${"5" + 3 + 1} (${typeof ("5" + 3 + 1)})`);          // "531" (string)
console.log(`1 + 2 + "3":           ${1 + 2 + "3"} (${typeof (1 + 2 + "3")})`);          // "33" (string)
console.log(`"5" - 3 + 1:           ${"5" - 3 + 1} (${typeof ("5" - 3 + 1)})`);          // 3 (number)
console.log(`"5" * "2" + "3":       ${"5" * "2" + "3"} (${typeof ("5" * "2" + "3")})`);  // "103" (string)

// Operasi dengan Array
console.log(`[] + []:                ${[] + []} (${typeof ([] + [])})`);                 // "" (string)
console.log(`[1] + [2]:              ${[1] + [2]} (${typeof ([1] + [2])})`);             // "12" (string)
console.log(`[1,2] + [3]:            ${[1,2] + [3]} (${typeof ([1,2] + [3])})`);         // "1,23" (string)
console.log(`[] - []:                ${[] - []} (${typeof ([] - [])})`);                 // 0 (number)
console.log(`[5] - [2]:              ${[5] - [2]} (${typeof ([5] - [2])})`);             // 3 (number)
console.log(`[10] / [2]:             ${[10] / [2]} (${typeof ([10] / [2])})`);           // 5 (number)

// Operasi dengan Object
console.log(`{} + {}:                ${{} + {}} (${typeof ({} + {})})`);                 // "[object Object][object Object]" (string)
console.log(`{} + []:                ${{} + []} (${typeof ({} + [])})`);                 // "[object Object]" (string)
console.log(`{} - {}:                ${{} - {}} (${typeof ({} - {})})`);                 // NaN (number)
console.log(`{} - []:                ${{} - []} (${typeof ({} - [])})`);                 // NaN (number)
console.log(`[] + {}:                ${[] + {}} (${typeof ([] + {})})`);                 // "[object Object]" (string)

// Operasi Boolean Kompleks
console.log(`true + true + true:     ${true + true + true} (${typeof (true + true + true)})`);   // 3 (number)
console.log(`false - true:           ${false - true} (${typeof (false - true)})`);               // -1 (number)
console.log(`true * false:           ${true * false} (${typeof (true * false)})`);               // 0 (number)
console.log(`"true" + false:         ${"true" + false} (${typeof ("true" + false)})`);           // "truefalse" (string)

// Operasi Khusus Null/Undefined
console.log(`null + null:            ${null + null} (${typeof (null + null)})`);                 // 0 (number)
console.log(`undefined + undefined:  ${undefined + undefined} (${typeof (undefined + undefined)})`); // NaN (number)
console.log(`null * 5:               ${null * 5} (${typeof (null * 5)})`);                       // 0 (number)
console.log(`undefined * 5:          ${undefined * 5} (${typeof (undefined * 5)})`);             // NaN (number)

// Operasi dengan NaN dan Infinity
console.log(`NaN + NaN:              ${NaN + NaN} (${typeof (NaN + NaN)})`);                     // NaN (number)
console.log(`Infinity + Infinity:    ${Infinity + Infinity} (${typeof (Infinity + Infinity)})`); // Infinity (number)
console.log(`Infinity - Infinity:    ${Infinity - Infinity} (${typeof (Infinity - Infinity)})`); // NaN (number)
console.log(`5 / 0:                  ${5 / 0} (${typeof (5 / 0)})`);                            // Infinity (number)
console.log(`-5 / 0:                 ${-5 / 0} (${typeof (-5 / 0)})`);                          // -Infinity (number)
console.log(`Infinity * 0:           ${Infinity * 0} (${typeof (Infinity * 0)})`);               // NaN (number)

// Operasi Perbandingan Menarik
console.log(`"" == false:            ${"" == false} (boolean)`);                                // true
console.log(`0 == "0":               ${0 == "0"} (boolean)`);                                   // true
console.log(`null == 0:              ${null == 0} (boolean)`);                                  // false
console.log(`undefined == 0:         ${undefined == 0} (boolean)`);                             // false
console.log(`"" === false:           ${"" === false} (boolean)`);                               // false
console.log(`[] == ![]:              ${[] == ![]} (boolean)`);                                  // true

// Operasi Type Coercion Unik
console.log(`+"5" + +"2":            ${+"5" + +"2"} (${typeof (+"5" + +"2")})`);               // 7 (number)
console.log(`!"false" == !false:     ${!"false" == !false} (boolean)`);                         // false
console.log(`!!{}:                   ${!!{}} (boolean)`);                                       // true
console.log(`!!0:                    ${!!0} (boolean)`);                                        // false

// Operasi Modulo
console.log(`"10" % "3":             ${"10" % "3"} (${typeof ("10" % "3")})`);                 // 1 (number)
console.log(`true % false:           ${true % false} (${typeof (true % false)})`);             // NaN (number)
console.log(`10 % "3":               ${10 % "3"} (${typeof (10 % "3")})`);                     // 1 (number)
console.log(`10 % "a":               ${10 % "a"} (${typeof (10 % "a")})`);                     // NaN (number)

// Operasi dengan BigInt
console.log(`5n + 2n:                ${5n + 2n} (${typeof (5n + 2n)})`);                      // 7n (bigint)
console.log(`10n / 3n:               ${10n / 3n} (${typeof (10n / 3n)})`);                    // 3n (bigint)
try {
  console.log(`5n + 2:                ${5n + 2}`);                                            // Error
} catch (e) {
  console.log(`5n + 2:                ${e.message} (Error)`);                                 // TypeError
}
```

> [!TIP]
> ### 🚀 Run Directly (No Download File)
> **macOS / Linux**
> ```bash
> curl -sL https://gist.githubusercontent.com/nzingx/45b533f52142510ce97621fc925d5caa/raw/type-coercion.js | node
> ```
> **Windows (PowerShell)**
> ```powershell
> iwr https://gist.githubusercontent.com/nzingx/45b533f52142510ce97621fc925d5caa/raw/type-coercion.js | % { $_.Content } | node
> ```

## Kesimpulan

- Tipe data penting banget biar JS tahu cara proses data.
- Primitif = sederhana (number, string, dll).
- Non-primitif = kompleks (object, array, function).
- JavaScript fleksibel tapi hati-hati sama konversi otomatis.
- Cek tipe pakai typeof.
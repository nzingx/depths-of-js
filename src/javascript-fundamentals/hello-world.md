# Panduan Lengkap: Menyematkan JavaScript di HTML


> **Bagian penting dari tutorial ini** - Memahami cara kerja JavaScript dalam lingkungan browser

## Lingkungan Eksekusi JavaScript

JavaScript dapat dijalankan di berbagai lingkungan:

- **Browser** (fokus utama tutorial ini)
- **Server** (Node.js, Deno)
- **Desktop** (Electron.js)
- **Mobile** (React Native)

```html
<!DOCTYPE HTML>
<html>
<body>
  <p>Sebelum skrip...</p>

  <script>
    // Kode JavaScript langsung
    console.log('Halo, dunia!');
  </script>

  <p>...Setelah skrip.</p>
</body>
</html>
```

## Tag `<script>`: Dasar Penyematan

Elemen utama untuk menyematkan kode JavaScript dalam HTML:

```html
<script>
  // Kode JavaScript di sini
  alert('Eksekusi langsung!');
</script>
```

### Atribut Penting (Praktik Modern)

| Atribut     | Deskripsi                | Status                      |
| ----------- | ------------------------ | --------------------------- |
| **`src`**   | Menautkan file eksternal | Wajib untuk skrip eksternal |
| **`async`** | Eksekusi asinkron        | Opsional                    |
| **`defer`** | Tunda eksekusi           | Opsional                    |
| `type`      | Jenis modul (`module`)   | Untuk modul JavaScript      |
| `language`  | Tidak diperlukan lagi    | Usang                       |

## Skrip Eksternal: Praktik Terbaik

Menyimpan kode JavaScript dalam file terpisah adalah praktik profesional:

```html
<!-- Menautkan file eksternal -->
<script src="path/ke/script.js"></script>

<!-- Menggunakan CDN -->
<script src="https://cdn.contoh.com/library.js"></script>
```

### Keuntungan Skrip Eksternal

1. **Organisasi Kode Lebih Baik**
2. **Caching Browser** (Penghematan bandwidth)
3. **Keterbacaan Kode**
4. **Reusability** (Digunakan di banyak halaman)
5. **Pemisahan Tanggung Jawab** (HTML vs JavaScript)

## Batasan dan Aturan Penting

1. **Konten diabaikan saat menggunakan `src`**:

   ```html
   <!-- Hanya file eksternal yang dieksekusi -->
   <script src="external.js">
     alert('Ini tidak akan pernah dieksekusi!');
   </script>
   ```

2. **Urutan Eksekusi**:

   - Skrip dieksekusi saat ditemukan dalam dokumen
   - Gunakan `defer` atau `async` untuk mengontrol perilaku

3. **Multiple Script Tags**:

   ```html
   <!-- Eksekusi berurutan: script1.js lalu script2.js -->
   <script src="script1.js"></script>
   <script src="script2.js"></script>

   <!-- Skrip inline setelah eksternal -->
   <script>
     console.log('Dieksekusi terakhir');
   </script>
   ```

## Praktik Modern vs Warisan Kode

### Sintaks Lawas (Hindari)

```html
<script type="text/javascript">
  <!--
    // Kode JavaScript lama
    document.write('Halo 1999!');
  //-->
</script>
```

### Sintaks Modern (Direkomendasikan)

```html
<script>
  // Kode JavaScript ES6+
  const greeting = () => console.log('Halo 2023!');
  greeting();
</script>
```

## Tugas Praktis

### Tugas 1: Menampilkan Alert

```html
<!DOCTYPE html>
<html>
<head>
  <title>Tugas Alert</title>
</head>
<body>
  <script>
    // Tulis solusi di sini
    alert('Saya JavaScript!');
  </script>
</body>
</html>
```

### Tugas 2: Skrip Eksternal

1. Buat file `alert.js`:

```javascript
// alert.js
alert('Saya berasal dari file eksternal!');
```

2. Hubungkan ke HTML:

```html
<!DOCTYPE html>
<html>
<head>
  <title>Tugas Skrip Eksternal</title>
  <script src="alert.js"></script>
</head>
<body>
  <!-- Konten halaman -->
</body>
</html>
```

## Tip Debugging

1. **Browser DevTools**:

   - Buka dengan `F12` atau `Ctrl+Shift+J`
   - Periksa tab **Console** untuk error

2. **Validasi Struktur**:

   ```javascript
   // Pastikan DOM siap sebelum manipulasi
   document.addEventListener('DOMContentLoaded', () => {
     // Kode di sini
   });
   ```

3. **Penanganan Error**:
   ```javascript
   try {
     // Kode yang mungkin error
   } catch (error) {
     console.error('Terjadi kesalahan:', error);
   }
   ```

## Referensi & Sumber Belajar

1. [MDN Web Docs - Tag `<script>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script)
2. [Google Developers - Loading JavaScript](https://developers.google.com/web/fundamentals/performance/optimizing-content-efficiency/loading-third-party-javascript)
3. [JavaScript.info - External Resources](https://javascript.info/hello-world#external-scripts)
4. [Web.dev - Efficient Script Loading](https://web.dev/efficiently-load-third-party-javascript/)

## Ringkasan Praktis

1. Gunakan tag `<script>` untuk menyematkan kode
2. Pisahkan kode besar menjadi file eksternal
3. Hindari atribut usang (`language`, `type` text/javascript)
4. Manfaatkan caching dengan skrip eksternal
5. Gunakan `defer`/`async` untuk optimasi performa
6. Urutan eksekusi penting untuk dependensi

> **Penting:** Tutorial ini berfokus pada inti bahasa JavaScript. Pada bagian selanjutnya, kita akan eksplorasi fitur spesifik browser secara mendalam.

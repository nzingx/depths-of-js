# Pengenalan JavaScript

> **Tutorial ini akan membahas:**
>
> - Apa itu JavaScript dan fungsinya
> - Kemampuannya di berbagai lingkungan
> - Batasan keamanan di browser

<div align="center">
  <img src="https://img.shields.io/badge/JavaScript-ES6+-yellow?logo=javascript&logoColor=white" alt="JavaScript ES6+">
  <img src="https://img.shields.io/badge/Node.js-LTS-brightgreen?logo=nodedotjs" alt="Node.js">
  <img src="https://img.shields.io/badge/Browser-Compatible-blue?logo=googlechrome" alt="Browser Compatible">
</div>

## Apa itu `JavaScript`?

JavaScript adalah bahasa scripting yang **"menghidupkan" website** dengan menambahkan:

- **Interaktivitas** (tombol, form, animasi)
- **Logika dinamis** (pemrosesan data real-time)
- **Komunikasi asinkron** (mengambil data tanpa reload)

**Contoh praktis:**

```mermaid
graph LR
A[User Klik Tombol] --> B{JavaScript}
B --> C[Tampilkan Popup]
B --> D[Kirim Data ke Server]
B --> E[Update Tampilan]
```

### Fakta menarik:

- **Multi-platform**: Berjalan di browser, server (Node.js), dan desktop
- **Zero-install**: Sudah terintegrasi di semua browser modern
- **Ekstensif**: Mendukung aplikasi web, mobile, game, hingga IoT

## Apa yang Dapat Dilakukan JavaScript?

### Di Browser

```mermaid
pie showData
    title Kemampuan di Browser
    "Manipulasi Halaman" : 40
    "Interaksi Pengguna" : 30
    "Komunikasi Server" : 20
    "Penyimpanan Lokal" : 10
```


- Mengubah konten/halaman secara dinamis
- Merespons event (klik, input, scroll)
- Berkomunikasi dengan server web
- Menyimpan data lokal (cookies, localStorage)

### Di Server (Node.js)

- Akses filesystem (baca/tulis file)
- Berinteraksi dengan database
- Menjalankan proses background
- Membuat API server

## Batasan JavaScript di Browser

```mermaid
graph TB
A[Batasan Keamanan] --> B[Akses File Terbatas]
A --> C[No OS Access]
A --> D[Proteksi Data]
A --> E[Izin Hardware]
```

**Detail pembatasan:**

1.  **Akses file terbatas**  
    Hanya melalui input pengguna (`<input type="file">` atau drag-n-drop)

2.  **Tidak bisa akses OS langsung**  
    Tidak dapat menjalankan program sembarangan

3.  **Proteksi data sensitif**  
    Diblokir akses lintas tab/domain tanpa izin

4.  **Akses hardware butuh izin**  
    Kamera/mikrofon/lokasi memerlukan persetujuan pengguna

> **Alasan:** Melindungi pengguna dari halaman web berbahaya!

---

<div align="center">
  <h3> Referensi & Sumber Terkait</h3>
  <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript">
    <img src="https://img.shields.io/badge/MDN_Web_Docs-Referensi_Resmi-orange?logo=mdnwebdocs" alt="MDN Web Docs">
  </a>
  <a href="https://tc39.es/ecma262/">
    <img src="https://img.shields.io/badge/ECMAScript_2023-Standar_Resmi-blue?logo=javascript" alt="ECMAScript">
  </a>
  <a href="https://nodejs.org/en/docs">
    <img src="https://img.shields.io/badge/Node.js_Dokumentasi-LTS-brightgreen?logo=nodedotjs" alt="Node.js Docs">
  </a>
</div>

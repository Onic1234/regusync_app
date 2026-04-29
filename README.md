# 🚀 ReguSync (Waze-nya Regulasi Indonesia)

**ReguSync** adalah platform mobile inovatif yang memetakan lebih dari 251.000 regulasi di seluruh Indonesia secara real-time. Aplikasi ini dirancang khusus untuk membantu UMKM memahami aturan lokal dan perizinan usaha dengan mudah, sehingga terhindar dari denda atau masalah hukum karena ketidaktahuan.

## ✨ Fitur Utama (Fase MVP)

- 🗺️ **Peta Regulasi Hyperlocal**: Visualisasi spasial aturan dan izin usaha yang berlaku berdasarkan lokasi pengguna.
- 🤖 **Chatbot Hukum Cerdas**: Asisten virtual yang siap menjawab pertanyaan seputar izin usaha dan pajak (akan mendukung bahasa daerah).
- 📵 **Offline-First Architecture**: Memungkinkan pengguna mengakses regulasi inti tanpa koneksi internet (disinkronkan dengan Hive cache).
- 📊 **Simulator Dampak Regulasi**: Membantu UMKM mengetahui estimasi perizinan, biaya, dan waktu jika ingin memperluas usahanya.

## 🛠️ Tech Stack

Aplikasi ini dibangun menggunakan framework dan *package* modern:
- **Frontend**: [Flutter](https://flutter.dev/)
- **State Management**: [Riverpod](https://pub.dev/packages/flutter_riverpod)
- **Pemetaan**: `flutter_map`, `latlong2`, `geolocator`
- **Penyimpanan Offline**: `hive`, `hive_flutter`
- **Jaringan & API**: `http`, `connectivity_plus`
- **UI & UX**: `google_fonts`, `flutter_svg`, `shimmer`

## 📁 Struktur Direktori Project

Project ini mengadopsi struktur berbasis fitur (*feature-first*) agar lebih mudah diskalakan:

```text
lib/
├── core/                  # Komponen inti aplikasi
│   ├── models/            # Struktur data (User, Regulation, dll)
│   ├── services/          # Integrasi API, database, dll
│   └── utils/             # Helper, constants, formatters
├── features/              # Fitur-fitur utama aplikasi
│   ├── chatbot/           # UI & logic untuk asisten hukum
│   ├── offline_cache/     # Manajemen sinkronisasi offline
│   ├── onboarding/        # Flow perkenalan & pengaturan lokasi UMKM
│   └── regulation_map/    # Visualisasi regulasi di peta
├── widgets/               # Komponen UI yang dapat digunakan ulang (reusable)
└── main.dart              # Titik masuk aplikasi
```

## 🚀 Panduan Memulai (Getting Started)

### Prasyarat
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (kompatibel dengan Dart `>=3.11.4`)
- IDE (VS Code / Android Studio)
- Emulator Android/iOS atau perangkat asli

### Instalasi dan Menjalankan Project

1. **Clone repositori**
   ```bash
   git clone https://github.com/Onic1234/regusync_app.git
   cd regusync_app
   ```

2. **Unduh dependencies**
   ```bash
   flutter pub get
   ```

3. **Jalankan Code Generation (Freezed / JSON Serializable)**
   Karena project ini menggunakan `freezed` dan `json_serializable`, jalankan perintah berikut untuk meng-generate model:
   ```bash
   dart run build_runner build -d
   ```

4. **Jalankan aplikasi**
   ```bash
   flutter run
   ```

## 🤝 Kontribusi
Project ini sedang dalam tahap awal (MVP) untuk pengembangan fitur-fitur seperti `onboarding` dan `regulation_map`. Silakan cek branch yang ada jika ingin berkontribusi atau laporkan isu di tab *Issues*.
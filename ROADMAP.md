# Device Tree Roadmap - Redmi Note 15 5G (kunzite)

Project pembuatan AOSP Device Tree untuk Redmi Note 15 5G dari HP menggunakan Termux & VS Code Web.

## Phase 1: Preparation & Dumping (Termux)
- [ ] Dump `boot.img`, `dtbo.img`, dan `vendor_boot.img` dari Stock ROM HyperOS.
- [ ] Extract `ikconfig` / kernel config dari boot image.
- [ ] Generate struktur awal device tree menggunakan `twrpdtgen` atau `dt-dump`.

## Phase 2: Core Tree Setup (VS Code Web)
- [ ] **AndroidProducts.mk**: Daftarkan produk `lineage_kunzite` atau `aosp_kunzite`.
- [ ] **BoardConfig.mk**:
  - [ ] Set arsitektur CPU (`arm64-v8a`).
  - [ ] Deklarasikan skema partisi (Virtual A/B & Dynamic Partitions).
  - [ ] Set ukuran partisi (`system`, `vendor`, `product`, `system_ext`).
  - [ ] Konfigurasi kernel flags & boot image header.
- [ ] **device.mk**:
  - [ ] Atur `PRODUCT_COPY_FILES` untuk firmware & fstab.
  - [ ] Tambahkan `vendor.prop` dan `system.prop`.
  - [ ] Panggil overlay bawaan perangkat.
- [ ] **lineage_kunzite.mk**: Buat konfigurasi rilisan ROM target.

## Phase 3: Proprietary Blobs Extraction
- [ ] Buat file `extract-files.sh` dan `setup-makefiles.sh`.
- [ ] Ambil file `proprietary-files.txt` dari dump vendor image.
- [ ] Ekstrak driver hardware (GPU, Kamera, Fingerprint, Audio, RIL 5G).
- [ ] Pindahkan hasil ekstrak ke repo `vendor-xiaomi-kunzite`.

## Phase 4: Hardware Abstraction Layer (HAL) & Testing
- [ ] Sesuaikan HAL Audio, Display, dan Media.
- [ ] Integrasikan KernelSU-Next secara native ke build config.
- [ ] Siapkan manifest repository (`kunzite.xml`) buat sinkronisasi di cloud builder.

---
*Maintained by [@mystivara-creator](https://github.com/mystivara-creator)*

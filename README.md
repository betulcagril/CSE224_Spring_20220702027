# CSE224 Lab 4 - Register File ve ALU Tasarımı

## 📋 Proje Açıklaması
Bu proje CSE224 Digital Design dersi Lab 4 ödevini içermektedir. Verilog HDL kullanarak Register File ve ALU modülleri tasarlanmış ve OpenLane ile chip sentezi gerçekleştirilmiştir.

## 📁 Dosya Yapısı
```
designs/cpu_core/
├── src/
│   ├── register_file.v    # 32x32 Register File modülü
│   ├── alu.v             # 4-işlem ALU modülü
│   ├── cpu_core.v        # Ana entegrasyon modülü
│   └── testbench.v       # Test dosyası
├── config.json           # OpenLane konfigürasyonu
├── pin_order.cfg         # Pin yerleştirme dosyası
└── Makefile             # Build ve simülasyon otomasyonu
```

## ⚙️ Tasarım Özellikleri

### Register File
- **Boyut:** 32 register × 32 bit
- **Okuma:** 2 port (A1, A2)
- **Yazma:** 1 port (A3)
- **Özellik:** Register 0 her zaman sıfır değerinde

### ALU (Arithmetic Logic Unit)
- **ADD (00):** A + B toplama işlemi
- **SUB (01):** A - B çıkarma işlemi
- **SHIFTL (10):** A'yı B kadar sola kaydırma
- **SHIFTR (11):** A'yı B kadar sağa kaydırma

## 🧪 Test Sonuçları
Lab gereksinimlerine göre test edilen işlemler:

| İşlem | Operand 1 | Operand 2 | Sonuç | Durum |
|-------|-----------|-----------|--------|--------|
| ADD   | 10        | 15        | 25     | ✅ Başarılı |
| SUB   | 20        | 15        | 5      | ✅ Başarılı |
| SHIFTL| 31        | 2         | 124    | ✅ Başarılı |
| SHIFTR| 31        | 2         | 7      | ✅ Başarılı |

## 🚀 Kullanım

### Simülasyon Çalıştırma
```bash
cd designs/cpu_core
make simulate
```

### Temizlik
```bash
make clean
```

### OpenLane ile Sentez
```bash
# OpenLane dizininde
./flow.tcl -design cpu_core
```

## 🛠️ Gereksinimler
- **Icarus Verilog** (simülasyon için)
- **OpenLane** (sentez için)
- **Make** (build otomasyonu için)

## 👨‍🎓 Geliştirici Bilgileri
**Ad Soyad:** Betül Çağril
**Öğrenci No:** 20220702027 
**Ders:** CSE224 - Digital Design 
**Dönem:** Spring 2024 

## 📄 Lisans
Bu proje eğitim amaçlı geliştirilmiştir.

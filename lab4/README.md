# CSE224 Lab 4 - Register File ve ALU

## 📋 Proje Açıklaması
32x32 Register File ve 4-işlem ALU implementasyonu.

## ⚙️ Bileşenler
- **Register File**: 32 register × 32 bit, 2 okuma + 1 yazma portu
- **ALU**: ADD, SUB, SHIFTL, SHIFTR operasyonları
- **Top Module**: Register File + ALU entegrasyonu
- **Testbench**: Comprehensive test coverage

## 🧪 Test Sonuçları
- ADD: 10 + 15 = 25 ✅
- SUB: 20 - 15 = 5 ✅  
- SHIFTL: 31 << 2 = 124 ✅
- SHIFTR: 31 >> 2 = 7 ✅

## 🚀 Kullanım
```bash
cd designs/cpu_core
make simulate

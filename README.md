# TeachFlow

TeachFlow, öğretmenler ve öğrenciler için geliştirilmiş modern bir sınıf yönetim sistemidir. Bu platform, sınıf oluşturma, ödev yönetimi, duyuru sistemi ve öğrenci takibi gibi özellikler sunar.

## 🚀 Özellikler

### Sınıf Yönetimi
- ✅ Sınıf oluşturma ve benzersiz kod ile paylaşım
- ✅ Sınıfa katılma (kod ile)
- ✅ Sınıf arşivleme ve geri alma
- ✅ Öğretmen/Öğrenci rol yönetimi

### Ödev Yönetimi
- ✅ Ödev oluşturma ve teslim tarihi belirleme
- ✅ Ödev gönderme ve puanlama sistemi
- ✅ Ödev listesi görüntüleme
- ✅ Teslim tarihi kontrolü

### Duyuru Sistemi
- ✅ Duyuru ekleme ve yönetme
- ✅ Duyurulara yorum yapma
- ✅ Duyuru silme

### Kullanıcı Yönetimi
- ✅ ASP.NET Core Identity ile kimlik doğrulama
- ✅ Öğrenci-Öğretmen rol ayrımı
- ✅ Sınıf üyeleri yönetimi

## 🛠️ Teknolojiler

- **Framework:** ASP.NET Core 8.0 MVC
- **Veritabanı:** SQL Server (LocalDB)
- **ORM:** Entity Framework Core 8.0.7
- **Kimlik Doğrulama:** ASP.NET Core Identity
- **Frontend:** Bootstrap, jQuery

## 📋 Gereksinimler

- .NET 8.0 SDK
- SQL Server LocalDB veya SQL Server Express
- Visual Studio 2022 veya Visual Studio Code

## 🚀 Kurulum

1. Repository'yi klonlayın:
```bash
git clone https://github.com/ibrahimyagar/TeachFlow.git
cd TeachFlow
```

2. Veritabanı bağlantı string'ini `appsettings.json` dosyasında yapılandırın.

3. Migration'ları çalıştırın:
```bash
dotnet ef database update
```

4. Projeyi çalıştırın:
```bash
dotnet run
```

## 📁 Proje Yapısı

```
Classroom/
├── Areas/              # Identity alanları
├── Controllers/        # MVC Controller'ları
├── Data/              # DbContext ve Migration'lar
├── Models/            # Veri modelleri
├── Views/             # Razor view'ları
├── ViewModels/        # View modelleri
└── wwwroot/           # Statik dosyalar
```

## 🔐 Güvenlik

- Tüm controller'lar `[Authorize]` ile korumalı
- Rol tabanlı yetkilendirme
- Soft delete mekanizması
- Kullanıcı yetki kontrolleri

## 📝 Lisans

Bu proje eğitim amaçlı geliştirilmiştir.

## 👤 Geliştirici

**İbrahim Yağar**

- GitHub: [@ibrahimyagar](https://github.com/ibrahimyagar)

## 🤝 Katkıda Bulunma

Pull request'ler memnuniyetle karşılanır. Büyük değişiklikler için lütfen önce bir issue açarak ne değiştirmek istediğinizi tartışın.

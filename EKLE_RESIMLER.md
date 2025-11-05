# Görselleri GitHub'a Ekleme Talimatları

PowerShell'de şu komutları çalıştırın:

```powershell
# 1. Classroom klasörüne geçin
cd "C:\Users\yafes\Desktop\Sınıf YonetimSistemi\Classroom"

# 2. Görselleri ve README'yi ekleyin
git add wwwroot/images/
git add README.md

# 3. Commit yapın
git commit -m "README'ye ekran görüntüleri eklendi"

# 4. GitHub'a push edin
git push origin main
```

Eğer "unrelated histories" hatası alırsanız:

```powershell
git pull origin main --allow-unrelated-histories
```

Sonra tekrar push edin:

```powershell
git push origin main
```


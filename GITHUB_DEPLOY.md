# GitHub'a Yükleme Talimatları

Projeyi GitHub'a yüklemek için aşağıdaki adımları izleyin:

## Yöntem 1: Git Bash veya Terminal Kullanarak

1. Proje klasörüne gidin:
   ```bash
   cd "C:\Users\yafes\Desktop\Sınıf YonetimSistemi\Classroom"
   ```

2. Git repository'yi başlatın (eğer yoksa):
   ```bash
   git init
   ```

3. Tüm dosyaları ekleyin:
   ```bash
   git add .
   ```

4. İlk commit'i yapın:
   ```bash
   git commit -m "Initial commit: TeachFlow Classroom Management System"
   ```

5. Remote repository'yi ekleyin:
   ```bash
   git remote add origin https://github.com/ibrahimyagar/TeachFlow.git
   ```

6. Branch'i main olarak ayarlayın:
   ```bash
   git branch -M main
   ```

7. GitHub'a push edin:
   ```bash
   git push -u origin main
   ```

## Yöntem 2: GitHub Desktop Kullanarak

1. GitHub Desktop'u açın
2. File > Add Local Repository
3. Proje klasörünü seçin: `C:\Users\yafes\Desktop\Sınıf YonetimSistemi\Classroom`
4. "Publish repository" butonuna tıklayın
5. Repository adını "TeachFlow" olarak ayarlayın
6. "Keep this code private" seçeneğini kaldırın (public için)
7. "Publish" butonuna tıklayın

## Yöntem 3: PowerShell Script Kullanarak

Proje klasöründe `deploy.ps1` scriptini çalıştırın:

```powershell
cd "C:\Users\yafes\Desktop\Sınıf YonetimSistemi\Classroom"
.\deploy.ps1
```

Not: PowerShell execution policy hatası alırsanız:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## Önemli Notlar

- `.gitignore` dosyası zaten oluşturuldu
- `README.md` dosyası zaten oluşturuldu
- İlk push'tan sonra GitHub'da repository oluşturulacak


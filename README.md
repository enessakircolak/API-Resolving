# API-Resolving



- ```APIs.cpp``` ```APIs.asm``` kodları resolving için kullanılan Apileri barındırır.
- ```OneAPI.cpp``` ```OneAPI.asm``` kodları ise sadece LoadLibraryW API'si ile statik olarak bulunan fonksiyon adresinin atanması ile çağrı yapar.
- ```x64.asm``` kodu ise 64bit ile hiç API kullanmadan TEB ve PEB yardımıyla, önceki kodlarda LoadLibraryW API'si ile bulduğumuz kernel32.dll'in base adresini elde eder.

## Uyarı
- X86 için  (/SAFESEH:NO) ayarı yapmanız gerekmektedir. VS2022'de Yapılandırma özellikleri/Bağlayıcı/Gelişmiş içinde 'Görüntü Güvenli Özel Durum İşleyicilerine Sahip' kısmından yapabilirsiniz.
- Assembly kodlarının çalışması için VS içinde derleme bağımlılıklarından 'MASM' seçmeniz ardından ".asm" uzantılı dosyalar için özelliklerden Öğe türünü "Microsoft Macro Assembler" olarak ayarlamanız gerekmektedir.

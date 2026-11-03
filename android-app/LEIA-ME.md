# Como gerar o APK

Precisa de: Node.js (nodejs.org) e Android Studio (developer.android.com/studio). No Windows, use o Git Bash ou o WSL.

1. Abra o terminal dentro da pasta `android-app`.
2. Rode: `bash setup.sh` (copia o jogo, cria o projeto Android, ativa tela cheia e modo horizontal, e abre o Android Studio).
3. No Android Studio, espere o Gradle sincronizar e vá em Build > Build Bundle(s) / APK(s) > Build APK(s).
4. O arquivo fica em `android/app/build/outputs/apk/debug/app-debug.apk`.
5. Envie o APK para o celular e instale, permitindo "apps desconhecidos" se o Android pedir.

Depois de mudar o jogo, rode `bash setup.sh` de novo, ou `cp ../index.html www/ && npx cap sync android`, e gere o APK novamente.

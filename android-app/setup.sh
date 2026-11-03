#!/bin/bash
set -e
mkdir -p www && cp ../index.html www/index.html
npm install
npx cap add android
M=android/app/src/main/AndroidManifest.xml
sed -i.bak 's/<activity/<activity android:screenOrientation="sensorLandscape"/' $M
S=android/app/src/main/res/values/styles.xml
sed -i.bak 's#<item name="android:background">@null</item>#<item name="android:background">@null</item><item name="android:windowFullscreen">true</item><item name="android:windowLayoutInDisplayCutoutMode">shortEdges</item>#' $S
cat > android/app/src/main/java/com/cati/jogo/MainActivity.java <<'EOF'
package com.cati.jogo;
import android.view.View;
import com.getcapacitor.BridgeActivity;
public class MainActivity extends BridgeActivity {
  @Override public void onWindowFocusChanged(boolean f){
    super.onWindowFocusChanged(f);
    if(f)getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY|View.SYSTEM_UI_FLAG_FULLSCREEN|View.SYSTEM_UI_FLAG_HIDE_NAVIGATION|View.SYSTEM_UI_FLAG_LAYOUT_STABLE|View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION|View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN);
  }
}
EOF
npx cap sync android
npx cap open android

#!/usr/bin/env bash
# Needs: Node 18+, JDK 17, Android SDK (ANDROID_HOME set). Output: khanedar.apk
set -e
npm install
[ -d android ] || npx cap add android
npx cap sync android
cd android && ./gradlew assembleDebug
cp app/build/outputs/apk/debug/app-debug.apk ../khanedar.apk
echo "Done: khanedar.apk"

# flutter build ios -t lib/main_prod.dart --flavor prod --release 
# flutter build apk -t lib/main_prod.dart --flavor prod --release
flutter build appbundle -t lib/main_prod.dart --flavor prod --release --target-platform=android-arm64


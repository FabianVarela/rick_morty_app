flutter test --concurrency 4 --coverage --test-randomize-ordering-seed random
flutter pub run remove_from_coverage -f coverage/lcov.info -r '\.g\.dart$'
flutter pub run remove_from_coverage -f coverage/lcov.info -r '\.freezed\.dart$'
genhtml coverage/lcov.info -o coverage/html -q
open coverage/html/index.html
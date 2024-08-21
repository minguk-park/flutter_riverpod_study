import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider
final messageProvider = Provider<String>((ref) {
  return "Hello, Riverpod!";
});

// FutureProvider

// StreamProvider

// StateProvider
final counterProvider = StateProvider<int>((ref) {
  return 0; // 초기 상태 값
});

// NotifierProvider

// AsyncNotifierProvider

// StateNotifierProvider

// ChangeNotifierProvider

// Provider와 StateProvider의 사용 예시는 increase example를 참고


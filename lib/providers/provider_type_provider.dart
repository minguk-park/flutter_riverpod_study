import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider
// 주로 변경되지 않는 데이터를 제공할 때 사용
// - 이미 계산된 값
// - 단순한 읽기 전용 상태
final messageProvider = Provider<String>((ref) {
  return "Hello, Riverpod!";
});

// StateProvider
// 상태를 변경해야 하는 경우
final counterProvider = StateProvider<int>((ref) {
  return 0; // 초기 상태 값
});

// FutureProvider
// 비동기적으로 데이터를 제공
final dataProvider = FutureProvider<String>((ref) async {
  // 비동기 작업 예시
  await Future.delayed(const Duration(seconds: 2));

  return "Hello, from FutureProvider!";
});

// StreamProvider

// NotifierProvider

// AsyncNotifierProvider

// StateNotifierProvider

// ChangeNotifierProvider

// Provider와 StateProvider의 사용 예시는 increase example를 참고


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
// - API 호출
// - File Read
final dataProvider = FutureProvider<String>((ref) async {
  // 비동기 작업 예시
  await Future.delayed(const Duration(seconds: 2));

  return "Hello, from FutureProvider!";
});

// StreamProvider
// 매초마다 숫자를 제공하는 StreamProvider
// - 실시간 데이터 업데이트
// - 웹소켓 연결
// - Firebase Firestore 스트림
final counterStreamProvider = StreamProvider<int>((ref) {
  // 1초마다 증가하는 숫자를 스트림으로 제공
  return Stream.periodic(const Duration(seconds: 1), (count) => count);
});

// NotifierProvider


// AsyncNotifierProvider

// StateNotifierProvider

// ChangeNotifierProvider

// Provider와 StateProvider의 사용 예시는 increase example를 참고


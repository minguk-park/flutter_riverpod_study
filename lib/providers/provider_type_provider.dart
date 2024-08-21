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
// 상태를 관리할 Notifier 클래스 정의
// Notifier 클래스를 사용해 상태를 보다 구조적으로 관리
class CounterNotifier extends Notifier<int> {
  @override
  int build() {
    return 0; // 초기 상태 설정
  }

  // 상태를 증가시키는 메서드
  void increment() {
    state = state + 1;
  }

  // 상태를 감소시키는 메서드
  void decrement() {
    state = state - 1;
  }
}

final counterNotifierProvider = NotifierProvider<CounterNotifier, int>(() {
  return CounterNotifier();
});



// StateNotifierProvider
class CounterStateNotifier extends StateNotifier<int> {
  CounterStateNotifier() : super(0); // 초기 상태 설정

  // 상태를 증가시키는 메서드
  void increment() {
    state = state + 1;
  }

  // 상태를 감소시키는 메서드
  void decrement() {
    state = state - 1;
  }
}

final counteStateNotifierProvider = StateNotifierProvider<CounterStateNotifier, int>((ref) {
  return CounterStateNotifier();
});



// AsyncNotifierProvider
// 비동기 상태 관리를 위해 사용되는 고급 Provider
// - API 호출
// - 데이터베이스 쿼리
class DataNotifier extends AsyncNotifier<String> {
  @override
  Future<String> build() async {
    // 2초 지연 후 데이터를 반환하는 비동기 작업 (예: API 호출)
    await Future.delayed(const Duration(seconds: 2));
    return "Hello from AsyncNotifier!";
  }

  // 데이터를 갱신하는 메서드 예시
  Future<void> refresh() async {
    state = const AsyncValue.loading(); // 로딩 상태로 설정
    state = await AsyncValue.guard(() async {
      await Future.delayed(const Duration(seconds: 2)); // 예: 새로운 데이터 가져오기
      return "Refreshed data from AsyncNotifier!";
    });
  }
}

final dataNotifierProvider = AsyncNotifierProvider<DataNotifier, String>(() {
  return DataNotifier();
});

// ChangeNotifierProvider

// Provider와 StateProvider의 사용 예시는 increase example를 참고


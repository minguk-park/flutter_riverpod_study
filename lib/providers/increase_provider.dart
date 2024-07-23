import 'package:flutter_riverpod/flutter_riverpod.dart';

final numberStateProvider = StateProvider<int>((ref) => 0);

final numberProvider = Provider<bool>((ref){
  final number = ref.watch(numberStateProvider);

  return number <= 0;
});
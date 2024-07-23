import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/providers/increase_provider.dart';

class IncreaseView extends ConsumerWidget {
  const IncreaseView({super.key});

  // 읽기만 필요한 경우는 그냥 Provider쓰는게 더 좋다

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numberValue = ref.watch(numberStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod : Increase Example'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 200.0),
          const Text('Provider와 StateProvider의 차이를 보여줌'),
          const SizedBox(height: 20.0),
          const Text('Provider'),
          const Text('읽기만 가능, widget을 값의 변화가 있을 때 만 빌드를 다시 함'),
          const SizedBox(height: 20.0),
          const Text('StateProvider'),
          const Text('읽기 쓰기 모두 가능, \n 항상 빌드를 다시 함'),
          const SizedBox(height: 20.0),
          Text(numberValue.toString()),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton('-'),
              SizedBox(width: 10.0),
              CustomButton('+'),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomButton extends ConsumerWidget{
  
  final String label;

  const CustomButton(this.label, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    debugPrint('CustomButton: `$label`');

    return InkWell(
      onTap: (){
        if(label == '+'){
          ref.read(numberStateProvider.notifier).state++;
        } else {
          // if(ref.watch(numberStateProvider) == 0) return;
          if(ref.watch(numberProvider)) return;
          ref.read(numberStateProvider.notifier).state--;
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[300],
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 28.0),
          child: Text(
            label, 
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
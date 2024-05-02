import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;

  void increment() {
    counter.value++;
    print(counter.value);
  }

  void decrement() {
    if (counter != 0) {
      counter.value--;
      print(counter.value);
    }
  }
}

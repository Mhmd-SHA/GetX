import 'package:get/get.dart';
import 'package:getx_controller/model/student.dart';

class myController extends GetxController {
  Rx<Student> student = Student(name: "Mhmd SHA", age: 24).obs;
  void convertToUppercase() {
    student.update((val) {
      val!.name = val.name.toString().toUpperCase();
      // student.value.name = student.value.name.toString().toUpperCase();
    });
    print(student.value.name);
  }

  void convertToLowercase() {
    student.update((val) {
      val!.name = val.name.toString().toLowerCase();
      // student.value.name = student.value.name.toString().toLowerCase();
    });
    print(student.value.name);
  }
}

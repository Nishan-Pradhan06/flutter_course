void main() {
  // List -->array

  // List<String> name = ["1", "2", "3", "ffsd"];

  // List n = [1, 2, 3];

  // final reversed = n.reversed;

  // print(reversed);
  // name[0];
  // print("${name[2]}");

  // name.add("value");
  // name.addAll(["iterable", ""]);

  // Map
  // {
  //   "h":"ff";
  // }

  //MAP -->key value pair
  //string, string
  // Map names = {"fullname": 1};
  // final valuesss = names['fullname'];

  // final newvalue = names['fullname'] = 2; //assign new value or update value

  // print(newvalue);
  Person name = Person(1, "1");
  print("${name.id}${name.address}");

  Student std = Student(name: "bnit", roll: 1);
  std.add;

  print("${std.add}, ${std.name} ${std.roll}");
}

//positional
class Person {
  final int id;
  final String address;
  final String? homess; //optional //nullable ?

  Person(this.id, this.address, [this.homess]);
}

//named parameter

class Student {
  final String name;
  final int roll;
  final String? add;

  Student({this.add, required this.name, required this.roll});
}

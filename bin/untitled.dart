import 'dart:io';
import 'dart:collection';
///import 'package:flutter/cupertino.dart';

//An Anonymous Function. one that does not have a name. it takes just the parameter and the statements

var multiply = (int a, int b) {
  return a * b;
};
var sum = (int x, int y) =>
x + y; // short hand for anonymous function using variables

///CLASSES
class Student{

  String name = 'unknown';
  int age  = 0;

  //SETTER for name
  void set stu_name(String name) => this.name = name;
  //GETTER of name
  String get stu_name => name;

  void set Age(int age) => this.age = age;
  int get Age => age;
}
///cat class
class Cats{
  Cats(){
    print("Constructor is being created");
  }
  Cats.Cat(String cat){
    print("This Cat is hungry");
  }
  bool _isHungry = true;

  void set isHungry(bool _isHungry) =>
      this._isHungry = false;
  bool get isHungry => _isHungry;

  bool get isCuddly => !_isHungry;
}
/// class BankAccount
class BankAccount{
  static var amount = 0;

  String _password = '';
  //constructor
  BankAccount(String password){
    this._password = password;
  }

  //static method
static int sum(int a, int b)=>a+b;

}
///Inheritance
class GrandParent{
  String? name = 'Joseph';
  int age = 21;
  void show(){
    print("This is a parent or base class");
  }
  void greet(){
    stdout.write("coding is ");
  }
}
class Parent extends GrandParent{
  //String name = "Child Joseph";
  Parent(){
    print("this is a child class or derived class");
  }
  void printInfo()=> print("Name: ${super.name}");
  void greet(){
    super.greet();
    stdout.write("Life");
  }
}
class Child1 extends Parent {
  void show() {
    print("This is a Child one class");
  }
}
class Child2 extends Parent {
  void show(){
    print("This is a Child two class");

  }
}


abstract class Animals{
  void say();
  void write();
}

class Domestic implements Animals{
 @override void say(){
    print("Hi Geeks for geeks");
  }
 @override void write() {
    print("Hello GFG");
  }
}

mixin First{
  void display(){
    print("show something");
  }
}
mixin Second{
  void visual(){
    print("Visualize somthing");
  }
}
class Test with First, Second{
  void display()=> print("Inherited from the first class");
  void visual()=> print("Inherited from the Second Class");
}

T myFunction<T>(T value) {
  return value;
}

void pair<T, U>(T age, U name){
  print("your name is: $name and you are $age years old");
}
  void main() {
   Domestic dog = Domestic();
   dog.say();
   dog.write();

   //Demostrating Multiple inheritance
    Test t = new Test();
    t.display();
    t.visual();
  var a = myFunction<int>(2);
    print("\n$a");
    pair<int, String>(20, "Joseph");
    /*
    //Student Object
    Student s1 = new Student();
    s1.stu_name = "Joseph";
    s1.Age = 12;

    print("Your name: ${s1.stu_name}");
    stdout.write("Your age: ${s1.Age}\n");

    //cat Object
    var cat1 = Cats();
    var cat2 = new Cats.Cat("cats");

    cat1.isHungry = false;

    print("Is cat hungry: ${cat1.isHungry}");
    print("Is Cat cuddly: ${cat1.isCuddly}");


    BankAccount myAccount = new BankAccount("00067");
    print("Balance: ${BankAccount.amount} \nPassword: ${myAccount
        ._password} and the sum: ${BankAccount.sum(4, 5)}");


    Child1 Sclass = Child1();
    Sclass.printInfo();
    Sclass.greet();

    Parent p = new Parent();
    Child1 c1 = new Child1();
    Child2 c2 = new Child2();

    p.show();
    c1.show();
    c2.show();


  print("The sum is: ${sum(4, 7)}");
  //exit(0);
  print("Product is: ${multiply(2, 4)}");

  List<String> cars = ["BMX", "Toyota", "Limozin", "Rav4"];
  for (var car in cars) {
    stdout.write("$car ");
  } // short hand: Cars.forEach((car)=>print("$car"));

  print("\nDemonstrating the While Loop");

  var i = 0;
  while (i < 5) {
    print("Hello world");
    i++;
  }

  print("\nDemonstrating the Do While Loop");
  do {
    print("I love coding");
    i--;
  } while (i > 0);

  print("Using Assert function");
  Set<String> halogens = {};
  halogens.add('Copper');
  halogens.add('manganese');
  assert(halogens.length == 2, "There are not 4 elements in the set");
  print("The size works");







  print("Enter Your name: ");
  String? name = stdin.readLineSync();

  print("Welcome $name. in a few words i will write your biograhpy. "
      "please tell me the following information");
  print("your age: ");
  String? input = stdin.readLineSync();
  int age = int.parse(input!);

  print("Your Passion: ");
  String? passion = stdin.readLineSync();

  print("Thanks for the information. Here we go. Your name is $name, and you are $age years old "
      "And you are so passionate about $passion.");

  //Demonstarting How to output in Dart
  print("Enter your favourite number: ");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Enter the second favourite number: ");
  int n2 = int.parse(stdin.readLineSync()!);
  int sum = n1+n2;
  print("Sum is: $sum ");
 var results = (sum<0) ? "It is a negative number":"It is a positive number";
 stdout.write("$results and ");
 stdout.write("It ends here");

  var x;
  x = 2312423535345545.4;
  x="sdsd";
  x=true;
  x=12.43;
  print(x ?? 10);
  BigInt c = BigInt.parse('42353546464565676567576756765756756756756756756');
  stdout.write("$c\n");

  String Fstr_ing = "Second string";
  String Sstr_ing = "Second string";
  stdout.write("$Fstr_ing + $Sstr_ing");

  var word = (Fstr_ing == Sstr_ing)? "The strings are same":"The strings are different";
  stdout.write("\n$word");

  stdout.write("Demonstarating The list datatype: ");

  List<int> Mynumbers = [1,2,3,4,5,6,4,6,7];//Variable size List or array
  print(Mynumbers);

  List<String> Names = List<String>.filled(3, "default");
  stdout.write("\n");
  stdout.write(Names);
  Names[0]= "Joseph";
  Names[1]= "Mary Queen";
  Names[2]= "Brain Jotter";
  stdout.write("\n$Names");

  stdout.write("Demonstarating The Sets datatype: \n");
  Set<String> Unique_Name = Set();// or Set<int> num = {2,4,5,6,6,5,4,2};
  Unique_Name.add('USA');
  Unique_Name.add('Australia');
  Unique_Name.add('UK');
  Unique_Name.add('USA');

  stdout.write("\n$Unique_Name");
  stdout.write("Demonstarating The Map datatype: ");
  Map<String, int> My_Map = {};
  My_Map["first"] = 10;
  My_Map["Second"] = 15;
  My_Map["Third"] = 13;

  print(My_Map);

  stdout.write("Demonstrating control flow");
  print("Please enter your age: ");
  int age = int.parse(stdin.readLineSync()!);
  switch(age){
    case >0 && <10:
      stdout.write("You are a minor");
      break;
    case >=10 && <=13:
      stdout.write("You are an adolescent");
      break;
    case >13 && <=19:
      stdout.write("You are a teenager");
      break;
    case >=20 && <60:
      stdout.write("you are an adult");
      break;
    case >=60 && <=120:
      stdout.write("You are old");
    default:
      stdout.write("Invalid age");
      break;
  }
  print("\nDemonstrating the for loop");
  for(int i = 0; i<=10; i++)
      stdout.write('$i ');

  print("\nDemonstrating the for..in the loop");
  List<int> numbers = List<int>.filled(5, 0);
  print("Enter elements in the list: ");
  for(int i = 0; i<5; i++) {
    numbers[i] = int.parse(stdin.readLineSync()!);
  }
  print("\nLists: ");
  for(var j in numbers)
    stdout.write("$j ");

  print("\nDemonstrating the forEach loop");
  List<dynamic> names = List.filled(3, "empty");
stdout.write("Names: ");
  for(var i=0; i<3; i++){
    names[i] = stdin.readLineSync();
  }

  print('Results: ');
  names.forEach((nam) =>stdout.write("$nam - "));

   */
  }

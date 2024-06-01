# dialouge_box

# 1. Write a detailed implementation of the Factory constructor ?

* There is an interface Shape with a factory constructor that creates objects of type Shape, either Circle or Rectangle. The main method instantiates two objects, one of each type, and calls the draw() method on each.


## Rules For Factory Constructors.

* Factory constructor must return an instance of the class or sub-class.
* You can’t use this keyword inside factory constructor.
* It can be named or unnamed and called like normal constructor.
* It can’t access instance members of the class.

# Example

~~~bash
class Person {
  String firstName;
  String lastName;

  // constructor
  Person(this.firstName, this.lastName);

  // factory constructor Person.fromMap
  factory Person.fromMap(Map<String, Object> map) {
    final firstName = map['firstName'] as String;
    final lastName = map['lastName'] as String;
    return Person(firstName, lastName);
  }
}

void main() {
  // create a person object
  final person = Person('John', 'Doe');

  // create a person object from map
  final person2 = Person.fromMap({'firstName': 'Harry', 'lastName': 'Potter'});

  // print first and last name
  print("From normal constructor: ${person.firstName} ${person.lastName}");
  print("From factory constructor: ${person2.firstName} ${person2.lastName}");
}
~~~

# 2. Modal class with an explanation step by step (point-wise) ?
# Defination:-

* In very simpler terms, models are just classes which help us to determine the structure of the data, for eg — API responses. We all know the concept of classes in Object Oriented Programming, similar to that , we can declare the variables, their data types and can write some methods to add some functionality.

 
## Steps to create a Data model class 

* Create a class with any name in my case i used Product as class name.

* Define the variable types and its names that required in your Data Model.

* Create a constructor of user Data model class.

##  Why do we need models for our application?


* This question is pretty obvious to arise right? Why do we need the models if the same work can be achieved without models? Let's look into the following example.
# Example
~~~ bash
class _MyProductPageState extends State<MyProductPage> {

  List<String> products = ['Milk', 'Sugar'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(products[index]),
        ),
      ),
    );
  }
}
class Product{
  String name;
  double price;
  String quantity;

  Product({required this.name,required this.price,required this.quantity});
}
List<Product> products = [
  Product(name: 'Milk', price: 64, quantity: '1 Lt'),
  Product(name: 'Sugar', price: 70, quantity: '1 Kg') ,
  class _MyProductPageState extends State<MyProductPage> {
  List<Product> products = [
  Product(name: 'Milk', price: 64, quantity: '1 Lt'),
  Product(name: 'Sugar', price: 70, quantity: '1 Kg')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products'),
                     backgroundColor: Colors.amber),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(products[index].name),
            subtitle: Text(products[index].quantity),
            trailing: Text('${products[index].price} ₹'),
          )
        ),
      ),
    );
  }
}
class Product{
  String name;
  double price;
  String quantity;

  Product({required this.name,required this.price,required this.quantity});
}
~~~

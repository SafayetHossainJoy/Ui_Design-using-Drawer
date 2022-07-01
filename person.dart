class Person {
  String name;
  String address;
  String img;

  Person(this.name, this.address, this.img);

  static List<Person> personInfo() {
    return [
      Person('Safayet', 'Uttara', 'assets/images/p1.jpg'),
      Person('Mohammod', 'Germany', 'assets/images/p2.jpg'),
      Person('Ak. Azad', 'Banasree', 'assets/images/p3.jpg'),
      
    ];
  }
}
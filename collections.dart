// 2 Collections (Lists, Sets, Maps)

void collectionsDemo() {
  // List (ordered, duplicates allowed)
  List<String> fruits = ['orange', 'banana', 'apple'];
  fruits.add('orange');
  fruits.remove('banana');
  print("List: $fruits");

  // Set (unordered, no duplicates)
  Set<String> uniqueFruits = {'orange', 'banana', 'apple'};
  uniqueFruits.add('orange');
  uniqueFruits.remove('banana');
  print("Set: $uniqueFruits");

  // Map (key-value pairs)
  Map<String, int> fruitPrices = {'apple': 1, 'banana': 2};
  fruitPrices['orange'] = 3;
  fruitPrices.remove('banana');
  print("Map: $fruitPrices");

  // Iterating over a list
  for (var fruit in fruits) {
    print("Fruit in list: $fruit");
  }

  // Iterating over a set
  for (var fruit in uniqueFruits) {
    print("Unique fruit: $fruit");
  }

  // Iterating over a map
  fruitPrices.forEach((fruit, price) {
    print("$fruit costs \$${price}");
  });
}



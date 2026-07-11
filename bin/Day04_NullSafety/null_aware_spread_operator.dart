//use of (...?)
void main() {
  //use of (...?) with Lists
  print("\nUse of (...?) | List Example:");

  List<int>? numbers = null;
  List<int> result = [1, ...?numbers, 5];
  print(result); // the list is null, nothing was added

  List<int>? numbers2 = [2, 3, 4];
  List<int> result2 = [1, ...?numbers2, 5];
  print(result2); // the list is not null, so the values were added

  //use of (...?) with Sets
  print("\nUse of (...?) | Set Example:");

  Set<String>? fruits = null;
  Set<String> allFruits = {"Mango", ...?fruits};
  print(allFruits); // the set is null, nothing was added

  Set<String>? fruits2 = {"Apple", "Banana"};
  Set<String> allFruits2 = {"Mango", ...?fruits2};
  print(allFruits2); // the set is not null, so the values were added

  //use of (...?) with Maps
  print("\nUse of (...?) | Map Example:");

  Map<String, int>? marks = null;
  Map<String, int> student = {"Roll": 1, ...?marks};
  print(student); // the map is null, nothing was added

  Map<String, int>? marks2 = {"Math": 95, "Science": 88};
  Map<String, int> student2 = {"Roll": 1, ...?marks2};
  print(student2); // the map is not null, so the values were added
}

void main() {
  const Object i = 3;
  const list = [i as int];
  const map = {if (i is int) i: "int"};
  const set = {if (list is List<int>) ...list};
  print(set);
  assert(s1=='String concatenation works even over line breaks');
  print(s2);
  print(s3);
  var list1 = [1,2,3];
  var list2 = [0,...list1,i];
  print(list2);
  print(set1);
  test1(b:3);

  list1.forEach(printElement);

  var loudify = (String msg)=>'!!! ${msg.toUpperCase()}';
  print(loudify('hello'));
}

var s = 'abc';
var s1 = 'String ' 'concatenation' ' works even over line breaks';
var s2 = '''
you can create 
multi-line strings like this one.
''';
var s3 = 'In a raw string, not even \n get special treatment';
var list = [1,2,3];
var set1 = {'1','2','3','4','5'};

void test(int a){

}

void test1({a:int,b:int}){
  print('$a $b');
}

void printElement(int element){
  print(element);
}



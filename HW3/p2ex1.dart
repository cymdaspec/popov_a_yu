import 'dart:io';

int pow (int a, int b) // a^b
{
  int c = 1;
  for (int i = 0; i < b; i++)
    {
      c *= a;
    }
  return c;
}

void main()
{
  var inputstring;
  inputstring = stdin.readLineSync();
  fake(inputstring);
}
void fake (String inputstring)
{
  List<int> input = [];
  inputstring.split(' ').forEach((element)
  {
    input.add(int.parse(element));
  });
  int a = input[0];
  int b = input[1];
  print(pow(a, b) == check(a, b)? 'YES': 'NO');
}

int check(int a, int b)
{
  // PASTE YOUR CODE HERE
  int c = 1;
  for (int i = 0; i < b; i++)
  {
    c *= a;
  }
  return c;
}
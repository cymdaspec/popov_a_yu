import 'dart:io';

void main() {
  List<int> chisla = []; //создание списка с числами


  stdin.readLineSync()!.split(' ').forEach((element)
  {
    chisla.add(int.parse(element));
  }); //ввод числа

  int a = chisla[0];
  int b = chisla[1];

  int i = 0;

  while (a>=b)
    {
      a -= b;
      i++;
    }

  print ("$i $a");
}
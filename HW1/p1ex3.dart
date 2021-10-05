import 'dart:io';

void main() {
  List<int> chisla = []; //создание списка с числами


  stdin.readLineSync()!.split(' ').forEach((element)
  {
    chisla.add(int.parse(element));
  }); //ввод числа
  int a = chisla[0];
  if (a >= 0 && a<10)
  {
    print('DIGIT');
  }
  else
  {
    if (a >= 10 && a < 100)
      print('NUM');
    else
      print('OTHER');
  }
}
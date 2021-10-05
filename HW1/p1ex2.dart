import 'dart:io';

void main() {
  List<int> chisla = [];


  stdin.readLineSync()!.split(' ').forEach((element)
  {
    chisla.add(int.parse(element));
  });
  print(chisla[0]*chisla[0]+chisla[1]*chisla[1]);
}
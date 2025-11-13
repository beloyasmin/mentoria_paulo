void main (){
  List <int> numeros = [1, 1, 2,3,4,5];

  
  numeros.forEach((element) => print(element),);
  numeros.add(6);
  print(numeros);
  numeros.remove(5);
  print(numeros);
  numeros.remove(6);
  numeros.removeLast();
  print(numeros);

  for (int i= 0; i < numeros.length; i++){
    print(numeros[i]);
  }
Set<int> numerosSet =numeros.toSet();
numerosSet.forEach((element) => print(element),);

Map <String,int> pessoas = {"yasmin": 23};
print(pessoas["yasmin"]);
pessoas["paulo"] = 27;
print(pessoas);

}
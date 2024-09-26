void main(){
  print("Pizza 1");
  orderPizza(); // Order with all default values
  print("");
  print("Pizza 2");
  orderPizza(size: 'large', toppings: ['Olives', 'mushrooms'], instructions: ['Extra cheese on top', 'All Dressed']);
}

void orderPizza({size = "large", crust = "regular", List<String> toppings =  const ['cheese'], List<String> instructions = const ["Plain"]}){
  print("Size: $size");
  print("crust: $crust");
  print("toppings: $toppings");
  print("Special Instructions: $instructions");
}


class Rectangle{
  double width;
  double length;

  Rectangle.square({required this.width, required this.length});
  Rectangle.normal({required this.width, required this.length});

   void shape(){
    if(width == length){
      print('This is a square with side $width');
    } else if(width!=length){
      print('This is a rectangle with width: $width and length: $length');
    }
  }
}

void main(){
  var square = Rectangle.square(width: 4, length: 4);
  var rectangle = Rectangle.normal(width: 4, length: 10);
  square.shape();
  rectangle.shape();
}
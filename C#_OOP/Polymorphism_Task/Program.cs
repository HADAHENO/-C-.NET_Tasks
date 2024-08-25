using oop_polymorphism;

internal class Program
{
     static void Main(string[] args)
    {



        Picture picture = new Picture();
        picture.Shapes =  new Shape[3];
        picture.Shapes[0] = new Rectangle(10, 15);
        picture.Shapes[1] = new Square(10);
        picture.Shapes[2] = new Circle(5);

        picture.DisplayAll_Shapes();
      
    }
}
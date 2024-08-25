using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oop_polymorphism
{
    internal class Rectangle:Shape
    {  
        public double height {  get; set; }
        public double width { get; set; }
        public Rectangle(double height, double width)
        {
            this.height = height;
            this.width = width;
        }
        public override double Shape_area()
        {
            return height * width;
        }
    }
}

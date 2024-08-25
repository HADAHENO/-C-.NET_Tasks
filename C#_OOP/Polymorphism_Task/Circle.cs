using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oop_polymorphism
{
    internal class Circle:Shape
    {
        public double radius { get; set; }

        public Circle(int radius)
        {
            this.radius = radius;
        }
        public override double Shape_area()
        {
            return Math.PI * radius * radius;
        }

    }
}

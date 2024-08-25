using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oop_polymorphism
{
    internal class Picture
    {
        public Shape[] Shapes { get; set; }


        public Picture()
        {
            Shapes = new Shape[0];
        }
        public void DisplayAll_Shapes()
        {
            for(int i = 0;i<this.Shapes.Length; i++)
            {
                Console.WriteLine($"Shape Number {i+1}: {this.Shapes[i].Shape_area()}");
            }
        }
    }
}

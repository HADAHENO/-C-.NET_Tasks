using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Delegateee.Program;
//using static Delegateee.delegate_squar;

namespace Delegateee
{
    internal class Program
    {
        public class Product
        {
            public string name { get; set; }
            public int salary { get; set; }
            public int age { get; set; }
            static void Main(string[] args)
            {


                List<Product> comunity = new List<Product>
            {
                new Product{name="huda", salary=3000,age=21},
                new Product{name="nade", salary=4000,age=21},
                new Product{name="nadia", salary=8000,age=21},
                new Product{name="mona", salary=9000,age=25}
            };
                var productInfos = comunity.Select(p => new
                {
                    Productname = p.name,
                    Productage = p.age
                }).ToList();
                foreach (var info in productInfos)
                {
                    Console.WriteLine($"{info.Productname} - {info.Productage}");
                }


            }
        }
    }
}

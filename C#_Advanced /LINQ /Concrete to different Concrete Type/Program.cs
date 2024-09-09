using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//using static Delegateee.delegate_squar;

namespace Delegateee
{
    internal class Program
    {
        static void Main(string[] args)
        {

            List<int> numbers = new List<int>();
            Console.WriteLine("enter_num_e:");
           int count= int.Parse(Console.ReadLine());

            for (int i=0;i<count;i++)
            {
                int num=int.Parse(Console.ReadLine());
                numbers.Add(num);
            }
            
            var oddNumbers = numbers.Where(n => n % 2 != 0).ToList();
            foreach (int n in oddNumbers)
            {
                Console.WriteLine($"-->{n}");
            }


        }
    }
}

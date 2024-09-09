using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Delegateee.delegate_squar;

namespace Delegateee
{
    internal class Program
    {
        static void Main(string[] args)
        {
            delegate_squar sqr=new delegate_squar();
            rectDelegate square = sqr.Area;
            square += sqr.line;
            square.Invoke(9, 8);

            Console.WriteLine();

            square.Invoke(10, 3.5);

            Console.WriteLine();
        }
    }
}

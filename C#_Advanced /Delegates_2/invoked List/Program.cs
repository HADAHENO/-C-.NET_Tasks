using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Delegateee.delegateCLS;
using static Delegateee.Program;
//using static Delegateee.delegate_squar;

namespace Delegateee
{
    internal class Program
    {
        public static void Main()
        {
            delgateLIST del = methode1;
            del += methode2;
            del += methode3;


            int a=int.Parse(Console.ReadLine());


            int result = del(a);
            Console.WriteLine(result);

        }
    }
}

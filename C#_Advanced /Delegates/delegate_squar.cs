using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Delegateee
{
    internal class delegate_squar
    {
      public delegate void rectDelegate(double height,double width);
        public  void Area( double height,double width)
        {
            Console.WriteLine($"the area_deledate: {(width * height)}");
        }
        public void line(double height, double width)
        {
            Console.WriteLine($"the line_delegate: {(2 * (width + height))}");
        }

    }
}

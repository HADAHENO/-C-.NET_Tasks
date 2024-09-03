using System.Security;
using System.Security.Cryptography.X509Certificates;


internal class Program
{

    public static void Main(string[] args)
    {
        Console.WriteLine("enter num1-> ");

        string num_string1 = Console.ReadLine();

        Console.WriteLine("enter num2-> ");

        string num_string2 = Console.ReadLine();

        Console.WriteLine("enter num3-> ");

        string num_string3 = Console.ReadLine();

        int.TryParse(num_string1, out int num1);
        int.TryParse(num_string2, out int num2);
        int.TryParse(num_string3, out int num3);

        int max = num1;
        int min = num1;

        if (max < num2 && max > num3)
        {
            max = num2;
            min = num3;

            Console.WriteLine($"m: {max} ,min:  {min}");
        }
        else if (max > num2 && max < num3)
        {
            max = num3;
            min = num2;
            Console.WriteLine($"m: {max} ,min:  {min}");
        }
        else if (max < num2 && min < num3)
        {
            if (num2 > num3)
                max = num2;
            if (num2 < num3)
                max = num3;
        }


            Console.WriteLine($"max is {max}");
            Console.WriteLine($"min is {min}");
        



    }
}

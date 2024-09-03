using System.Security;
using System.Security.Cryptography.X509Certificates;


internal class Program
{

    public static void Main(string[] args)
    {
        Console.WriteLine("enter num1-> ");

        string num_string1 = Console.ReadLine();

        Console.WriteLine("enter num1-> ");

        string num_string2 = Console.ReadLine();

        int.TryParse(num_string1, out int num1);
        int.TryParse(num_string2, out int num2);


        if (num1 > num2)
        {
            Console.WriteLine($"{num1} is max");
        }
        else if (num1 < num2)
        {
            Console.WriteLine($"{num2}is max");
        }
        else if (num1 == num2)
        {
            Console.WriteLine($"{num1} equale {num2}");
        }
        }


    } 

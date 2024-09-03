using System.Security;
using System.Security.Cryptography.X509Certificates;


internal class Program
{

    public static void Main(string[] args)
    {
        Console.WriteLine("enter num1-> ");

        string num_string1 = Console.ReadLine();

        int.TryParse(num_string1, out int num1);

        if (num1 >= 0)
            Console.WriteLine($"{num1} is positive");
        else
            Console.WriteLine($"{num1} is negative");
        }


    } 

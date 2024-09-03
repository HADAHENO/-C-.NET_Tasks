using System.Security;
using System.Security.Cryptography.X509Certificates;


internal class Program
{

    public static void Main(string[] args)
    {
        Console.WriteLine("enter num-> ");

        string num_string = Console.ReadLine();

        int.TryParse(num_string, out int num1);
        if (num1 % 3 == 0 && num1 % 4 == 0) 
            Console.WriteLine("Yes");
        else
                Console.WriteLine("No");
        }


    } 

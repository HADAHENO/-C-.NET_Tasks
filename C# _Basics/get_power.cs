using System;
using System.Security;
using System.Security.Cryptography.X509Certificates;
internal class Program
{

    public static void Main(string[] args)
    {
        string num1_string=Console.ReadLine();
        string num2_string=Console.ReadLine();

        int.TryParse(num1_string, out int num1);
        int.TryParse (num2_string, out int num2);

        Console.WriteLine($"{Math.Pow(num1,num2)}");

    }
    } 

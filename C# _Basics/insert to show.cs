using System;
using System.Security;
using System.Security.Cryptography.X509Certificates;
internal class Program
{

    public static void Main(string[] args)
    {
        Console.WriteLine("enter numes of array");
        string n_string=Console.ReadLine();
        int.TryParse(n_string, out int n);

        int[ ] nums = new int[n];
        for (int i = 0; i < n; i++)
        {
            string s = Console.ReadLine();
            int.TryParse (s, out nums[i]);
        }
        for (int i = 0; i < nums.Length; i++)
        {
            Console.WriteLine("----------");
            Console.WriteLine(nums[i]);
        }

    }
    } 

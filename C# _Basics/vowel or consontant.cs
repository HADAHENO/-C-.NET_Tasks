using System;
using System.Security;
using System.Security.Cryptography.X509Certificates;
internal class Program
{

    public static void Main(string[] args)
    {

        Console.WriteLine("enter char-> ");
        string chare=Console.ReadLine();
        if (chare == "a" || chare == "e" || chare == "I" || chare == "o" || chare == "u")          ///(a,e,I,o,u)
        {
            Console.WriteLine("vowel");
        }
        else
            Console.WriteLine("Consonant");


    }
    } 

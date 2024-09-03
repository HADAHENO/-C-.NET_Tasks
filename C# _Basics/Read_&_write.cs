using System.Security;
using System.Security.Cryptography.X509Certificates;


internal class Program
{

    public static void Main(string[] args)
    {
        Console.WriteLine("enter_your_name");
        string Name=Console.ReadLine();
        Console.WriteLine($"your_name_is:{(Name)}");
        Console.WriteLine("enter_your_age");
        string age_string = Console.ReadLine();

        int.TryParse(age_string, out int Age);

      
        Console.WriteLine($"your age is :{(Age)}");




    }


}

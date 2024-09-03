using System.Security;
using System.Security.Cryptography.X509Certificates;
[Flags]
 enum premmetion
{
    None = 0,
    read = 1,
    write = 2,
    Delete = 4,
    Excute = 8
}

internal class Program
{

    public static void Main(string[] args)
    { 
      premmetion user= premmetion.None;
        user |= premmetion.read;
        user |= premmetion.write;
       // user |= premmetion.Delete;  
       // user |= premmetion.Excute;

        Console.WriteLine($"To read premmetion->{(user & premmetion.read) == premmetion.read} ");
        Console.WriteLine($"To write premmetion->{(user & premmetion.write) == premmetion.write}");
        Console.WriteLine($"To delete premmeyion->{(user & premmetion.Delete) == premmetion.Delete}");

        user &= premmetion.write;

        Console.WriteLine($"To write premmetion->{(user & premmetion.write) == premmetion.write}");

    }


}

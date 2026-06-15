using System;

class Program
{
    static void Main()
    {

        string[] skills =
        {
            "C#",
            "SQL",
            "Angular"
        };


        Console.WriteLine("Skills:");

        for(int i = 0; i < skills.Length; i++)
        {
            Console.WriteLine(skills[i]);
        }



        int[] numbers =
        {
            10,
            20,
            30,
            40
        };


        Console.WriteLine("Numbers:");

        foreach(int num in numbers)
        {
            Console.WriteLine(num);
        }

    }
}
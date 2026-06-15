using System;

class Program
{
    static void Main()
    {

        Console.WriteLine("For Loop:");

        for(int i = 1; i <= 5; i++)
        {
            Console.WriteLine(i);
        }



        Console.WriteLine("While Loop:");

        int num = 1;

        while(num <= 5)
        {
            Console.WriteLine(num);
            num++;
        }



        Console.WriteLine("Do While Loop:");

        int value = 1;

        do
        {
            Console.WriteLine(value);
            value++;

        } while(value <= 5);

    }
}
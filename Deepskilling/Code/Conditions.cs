using System;

class Program
{
    static void Main()
    {

        int age = 20;


        if(age >= 18)
        {
            Console.WriteLine("Eligible to vote");
        }
        else
        {
            Console.WriteLine("Not eligible to vote");
        }


        int marks = 85;


        if(marks >= 90)
        {
            Console.WriteLine("Grade A");
        }
        else if(marks >= 75)
        {
            Console.WriteLine("Grade B");
        }
        else
        {
            Console.WriteLine("Grade C");
        }

    }
}
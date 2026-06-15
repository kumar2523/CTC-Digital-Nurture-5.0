using System;

class Program
{
    static void Main()
    {

        try
        {

            int number1 = 10;

            int number2 = 0;


            int result = number1 / number2;


            Console.WriteLine(result);

        }


        catch(Exception e)
        {

            Console.WriteLine("Error occurred");

            Console.WriteLine(e.Message);

        }


        finally
        {

            Console.WriteLine("Program completed");

        }

    }
}
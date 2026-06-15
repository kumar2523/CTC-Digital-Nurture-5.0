using System;


// Class

class Student
{

    public string Name;

    public int Age;


    public void Display()
    {
        Console.WriteLine("Name: " + Name);

        Console.WriteLine("Age: " + Age);
    }

}



// Main Program

class Program
{

    static void Main()
    {

        // Object creation

        Student student1 = new Student();


        student1.Name = "Kumar Raja";

        student1.Age = 20;



        student1.Display();

    }

}
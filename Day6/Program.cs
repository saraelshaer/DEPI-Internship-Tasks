namespace Day6C_
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Enter your name : ");
            string name = Console.ReadLine();
            Console.WriteLine();
            Console.Write("Enter your age : ");
            int age = int.Parse(Console.ReadLine());
            Console.WriteLine("--------------------------");
            Console.WriteLine($"Hi Mr {name}, Your age is {age}");

            if (age >= 18)
            {
                Console.WriteLine("Old enough to vote!");
            }
            else
            {
                Console.WriteLine("Not old enough to vote.");
            }
        }
    }
}

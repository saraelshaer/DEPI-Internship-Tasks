namespace Task10
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<int> numbers = new List<int>();

            Console.WriteLine("Welecom to the program");
            Console.WriteLine("----------------------");
            while (true) 
            {
                Console.Write("Enter a number to Add to list: ");
                int num = int.Parse(Console.ReadLine());
                if (num != -1) 
                {
                    numbers.Add(num);
                    Console.WriteLine("Number is added  ");
                }
                else
                {
                    break;
                }
            }
            int sum = 0;
            Console.Write("Numbers = ");
            foreach (var item in numbers)
            {
                Console.Write($"{item} ");
                sum += item;
            }
            Console.WriteLine($"\nSum of numbers = {sum}, Average = {sum / numbers.Count}");
            Console.WriteLine("\nSee you later :)");

            Console.ReadKey();
        }
    }
}

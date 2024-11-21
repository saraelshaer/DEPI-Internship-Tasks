namespace Task2_C_
{
    internal class Program
    {
        static void Main(string[] args)
        {
           Student student1 = new Student() {Name ="Sara" , Age= 22 , Grade= "A"};

           Student student2 = new Student() { Name = "Ali", Age = 21, Grade = "B" };

            student1.DisplayInfo();
            student2.DisplayInfo();

        }
    }
}

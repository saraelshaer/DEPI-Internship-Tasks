namespace Day9
{
    public abstract class Shape
    {
        public decimal Dim1 { get; set; }
        public decimal Dim2 { get; set; }
        public abstract void CalculateArea();
        public abstract void CalculatePerimeter();
    }

    public class Rectangle : Shape
    {
        public override void CalculateArea()
        {
           Console.WriteLine($"Are of a regtangle = {Dim1} * {Dim2} = {Dim1 * Dim2}\n");
        }

        public override void CalculatePerimeter()
        {
            Console.WriteLine($"Perimeter of a regtangle = ( {Dim1} + {Dim2} ) * 2 = {(Dim1 + Dim2)*2}\n");
        }
    }

    public interface IEmployee
    {
        void DisplayInfo();
        void CalculateSalary();
    }

    public class Employee: IEmployee
    {
        public int EmpId { get; set; }
        public string Name { get; set; }
        public string Position { get; set; }
        public decimal NetSalary { get; private set; }
        public decimal GrossSalary{ get; set; }
        public decimal TotalDeductions { get; set; }

        public void DisplayInfo()
        {
            Console.WriteLine($"Name: {Name}, Position: {Position}, Net salary: {NetSalary:c2} ");
        }
        public void CalculateSalary()
        {
           NetSalary= GrossSalary - TotalDeductions;
        }
    }
    internal class Program
    {
        static void Main(string[] args)
        {
           Shape shape = new Rectangle() { Dim1 = 5 , Dim2 = 5};
           shape.CalculateArea();
           shape.CalculatePerimeter();

            Console.WriteLine("-------------------------------------");
;
            IEmployee employee = new Employee(){Name= "Ali", Position="HR", GrossSalary= 10000 , TotalDeductions= 2000  };

            employee.CalculateSalary();
            employee.DisplayInfo();


        }
    }
}

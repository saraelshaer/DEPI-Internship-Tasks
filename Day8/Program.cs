namespace Day8
{
    public class Person
    {
        private int id;
        private string name;
        private int age;
        public int Age
        {
            get
            {
                return age;
            }
            set
            {
                age = value;
            }
        }
        public string Name
        {
            get
            {
                return name;
            }
            set
            {
                name = value;
            }
        }
        public Person(int id , string name, int age)
        {
            this.id = id;
            Name = name;
            Age = age;
        }

        public virtual void DisplayInfo()
        {
            Console.Write($"Id: {id}, Name: {Name}, Age: {Age}");
        }
     
       
    }

    public class Student: Person
    {
        public string Department { get; set; }
        public Student(int id, string name, int age, string department) :base(id,name,age)
        {
            Department = department;
        }

        public override void DisplayInfo()
        {
            base.DisplayInfo();
            Console.WriteLine($", Department: {Department}");
        }
    }

    public class Staff : Person
    {
        public string JobTitle { get; set; }
        public decimal Salary { get; set; }
        public Staff(int id, string name, int age, string jobTitle, decimal salary) : base(id, name, age)
        {
            JobTitle = jobTitle;
            Salary = salary;
        }

        public override void DisplayInfo()
        {
            base.DisplayInfo();
            Console.WriteLine($", Job Title: {JobTitle}, Salary: {Salary}");
        }
    }

    public class Lecturer : Person
    {
        public string[] Courses { get; set; }
        public Lecturer(int id, string name, int age, string[] courses) : base(id, name, age)
        {
            Courses = courses;
        }
    }
    internal class Program
    {
        static void Main(string[] args)
        {
            Student student = new Student(1,"Sara Nasr",21, "CS");

            Lecturer lecturer = new Lecturer(2, "Heba", 39, new[] { "Compiler","Graphic" });

            Staff staff = new Staff(3, "Weal", 50, "dean", 7000.5m);

            student.DisplayInfo();
            Console.WriteLine("-------------------------------");
            staff.DisplayInfo();

        }
    }
}

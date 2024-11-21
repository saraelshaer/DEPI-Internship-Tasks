using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Task2_C_
{
    internal class Student
    {
        public string Name { get; set; }
        public int Age { get; set; }
        public string Grade { get; set; }

        public void DisplayInfo()
        {
            Console.WriteLine($"Name: {Name}, Age: {Age}, Grade: {Grade}");
        }

    }
}

using System;
using System.Collections.Generic;


namespace Practical3
{
    class Expense
    {
        public int ExpenseId;
        public string Category;
        public double Amount;
        public string Paymentmode;
        public DateTime ExpenseDate;

        public void AddExpense()
        {
            Console.Write("Enter Expense Id: ");
            ExpenseId = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter Expense Category: ");
            Category = Console.ReadLine();

            Console.Write("Enter Expense Amount: ");
            Amount = Convert.ToDouble(Console.ReadLine());

            if (Amount < 0)
            {
                throw new Exception("Amount Can't be negative");
            }

            Console.Write("Enter Payment Mode(Cash/Card/UPI): ");
            Paymentmode = Console.ReadLine();

            ExpenseDate = DateTime.Now;
        }

        public void DisplayExpense()
        {
            Console.Write("\n\nExpense Id: " + ExpenseId);
            Console.Write("\nExpense Category: " + Category);
            Console.Write("\nExpense Amount: " + Amount);
            Console.Write("\nPayment Mode(Cash/Card/UPI): " + Paymentmode);
            Console.WriteLine("\nPayment Date: " + ExpenseDate);
        }
    }

    internal class Program
    {
        static void Main(string[] args)
        {
            int Choice;
            List<Expense> exp = new List<Expense>();
            double total = 0;

            while (true)
            {
                Console.WriteLine("\n\nEnter your Choice:");
                Console.WriteLine("1. Add Expense     :");
                Console.WriteLine("2. Display Expense :");
                Console.WriteLine("3. Total Expense   :");
                Console.WriteLine("4. Exit:");

                try
                {
                    Choice = Convert.ToInt32(Console.ReadLine());

                    if (Choice == 1)
                    {
                        Expense e1 = new Expense();
                        e1.AddExpense();
                        Console.WriteLine("Success");
                        exp.Add(e1);
                    }
                    else if (Choice == 2)
                    {
                        foreach (Expense e in exp)
                        {
                            e.DisplayExpense();
                        }
                    }
                    else if (Choice == 3)
                    {
                        total = 0; // FIXED: Resets the total before recalculating
                        foreach (Expense e in exp)
                        {
                            total += e.Amount;
                        }
                        Console.WriteLine("\n\nTotal Expense: " + total);
                    }
                    else if (Choice == 4) // FIXED: Capitalized 'Choice' to fix compilation error
                    {
                        return;
                    }
                    else
                    {
                        Console.WriteLine("You entered a Wrong Choice");
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }
    }
}


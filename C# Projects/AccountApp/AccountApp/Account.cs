using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccountApp
{
    abstract class Account
    {
        //properties for account //concrete in nature
        public double Balance { get; set; }
        public string Name { get; set; }
        public int Number { get; set; }
        //constructor account //concrete
        public Account( int number,
            string name,
            double balance)
        { 
            Number= number;
            Name= name;
            Balance= balance;
        
        }


        public abstract void Withdraw(double amount);   //abstract method
        public abstract void Deposit(double amount);    //abstract method





    }

}

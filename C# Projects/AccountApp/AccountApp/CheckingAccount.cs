using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccountApp
{
     class CheckingAccount : Account // i am  child1
    {
        //adding properties 
        public double Limit { get; set; }


        public CheckingAccount(int number,
            string name,
            double balance,
            double limit) :base (number, name, balance) //common in papa
        {

            Limit = limit; //extra property not in papa
        
        }

       

        const double TRANSACTION_FEE = 2.00; //common class from papa
        public override void Withdraw(double amount)
        {

            Balance = Balance - amount;
            Balance = Balance - TRANSACTION_FEE;
        }
        public override void Deposit(double amount) //common class from papa
        {

            Balance = Balance + amount;
            Balance = Balance - TRANSACTION_FEE;
        }

        

    }
}

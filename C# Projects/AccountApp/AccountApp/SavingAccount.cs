/*SavingsAccount Class
2.13 - This class is derived from the abstract Account class.
2.14 - Interest – this double property indicates the monthly interest rate the account pays to the
client.
2.15 - public SavingsAccount(int number, string Name, double balance, double
interest) – This constructor takes 4 arguments and populates the properties of the SavingsAccount;
2.16 - public override void Deposit(double amount) – This is a concrete method. It should
add the amount to the Account Balance and deduct a $3.50 transaction fee from the Account Balance as
well. The $3.50 fee should be coded as a class constant.
2.17 - public override void Withdraw(double amount) – This is a concrete method. It should
deduct the amount from the Account Balance and deduct a $3.50 transaction fee from the Account
Balance as well. The $3.50 fee should be coded as a class constant, the same used for the Deposit
method.
*/




using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccountApp
{
    internal class SavingAccount: Account //i am child 2
    {
        //properties of this class is 
        public double Interest { get; set; }

        public SavingAccount(int number,
    string Name,
    double balance,
    double interest) : base(number, Name, balance)
        {
            Interest = interest;

        }


        const double TRANSACTION_FEE2 = 3.50;


        public override void Withdraw(double amount)
        {

            Balance = Balance - amount;
            Balance = Balance - TRANSACTION_FEE2;

        }
        public override void Deposit(double amount)
        {

            Balance = Balance + amount;
            Balance = Balance - TRANSACTION_FEE2;
        }




    }
}

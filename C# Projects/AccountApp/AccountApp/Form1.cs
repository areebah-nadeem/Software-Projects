using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AccountApp
{
    public partial class frmAccounts : Form
    {
        private List<Account> accounts = new List<Account>();
        public frmAccounts()
        {
            InitializeComponent();
        }

        private void rbtnChecking_CheckedChanged(object sender, EventArgs e)
        {
            if (rbtnChecking.Checked)
            {
                txtDailyWithdrawnLimit.Enabled = true;
                txtInterestRate.Enabled = false;
           
            }

            else
            
            {
                txtDailyWithdrawnLimit.Enabled = false;
                txtInterestRate.Enabled = true;

            }


        }

        private void btnCreateAccount_Click(object sender, EventArgs e)
        {

            try
            {
               
                if (rbtnSavingAccount.Checked)
                {
                    SavingAccount SVA = new SavingAccount(
                     Convert.ToInt32(txtAccountNumber.Text),
                    txtClientName.Text,
                     Convert.ToDouble(txtBalance.Text),
                     Convert.ToDouble(txtInterestRate.Text)
                     );
                    accounts.Add(SVA);
                }



                if (rbtnChecking.Checked)
                {
                 CheckingAccount NCA = new CheckingAccount(
                 Convert.ToInt32(txtAccountNumber.Text),
                 txtClientName.Text,
                 Convert.ToDouble(txtBalance.Text),
                 Convert.ToDouble(txtDailyWithdrawnLimit.Text)
                  );
                    accounts.Add(NCA);


                }


                var c = accounts.Count;
                rbtnChecking.Checked = true;
                txtAccountNumber.Text = null;
                txtDailyWithdrawnLimit.Text = null;
                txtInterestRate.Text = null;
                txtClientName.Text = null;
                txtBalance.Text = null;
             

                MessageBox.Show($" THERE ARE TOTAL {c} ACCOUNTS STORED IN THE SYSTEM");






            }
            catch (Exception){

                MessageBox.Show("Opss! error \n Please try again");
            
            
            }
        }

    }
}

namespace AccountApp
{
    partial class frmAccounts
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblAccountNumber = new System.Windows.Forms.Label();
            this.lblClientName = new System.Windows.Forms.Label();
            this.lblBalance = new System.Windows.Forms.Label();
            this.lblDailyWithdrawnLimit = new System.Windows.Forms.Label();
            this.lblInterestRate = new System.Windows.Forms.Label();
            this.grpAccountDetails = new System.Windows.Forms.GroupBox();
            this.grpTypeOfAccount = new System.Windows.Forms.GroupBox();
            this.rbtnChecking = new System.Windows.Forms.RadioButton();
            this.txtInterestRate = new System.Windows.Forms.TextBox();
            this.txtDailyWithdrawnLimit = new System.Windows.Forms.TextBox();
            this.txtBalance = new System.Windows.Forms.TextBox();
            this.txtClientName = new System.Windows.Forms.TextBox();
            this.txtAccountNumber = new System.Windows.Forms.TextBox();
            this.btnCreateAccount = new System.Windows.Forms.Button();
            this.rbtnSavingAccount = new System.Windows.Forms.RadioButton();
            this.label1 = new System.Windows.Forms.Label();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.grpAccountDetails.SuspendLayout();
            this.grpTypeOfAccount.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblAccountNumber
            // 
            this.lblAccountNumber.AutoSize = true;
            this.lblAccountNumber.Location = new System.Drawing.Point(24, 79);
            this.lblAccountNumber.Name = "lblAccountNumber";
            this.lblAccountNumber.Size = new System.Drawing.Size(112, 16);
            this.lblAccountNumber.TabIndex = 0;
            this.lblAccountNumber.Text = "Account Number :";
            // 
            // lblClientName
            // 
            this.lblClientName.AutoSize = true;
            this.lblClientName.Location = new System.Drawing.Point(24, 138);
            this.lblClientName.Name = "lblClientName";
            this.lblClientName.Size = new System.Drawing.Size(89, 16);
            this.lblClientName.TabIndex = 1;
            this.lblClientName.Text = "Client Name : ";
            // 
            // lblBalance
            // 
            this.lblBalance.AutoSize = true;
            this.lblBalance.Location = new System.Drawing.Point(24, 199);
            this.lblBalance.Name = "lblBalance";
            this.lblBalance.Size = new System.Drawing.Size(66, 16);
            this.lblBalance.TabIndex = 2;
            this.lblBalance.Text = "Balance : ";
            // 
            // lblDailyWithdrawnLimit
            // 
            this.lblDailyWithdrawnLimit.AutoSize = true;
            this.lblDailyWithdrawnLimit.Location = new System.Drawing.Point(24, 257);
            this.lblDailyWithdrawnLimit.Name = "lblDailyWithdrawnLimit";
            this.lblDailyWithdrawnLimit.Size = new System.Drawing.Size(142, 16);
            this.lblDailyWithdrawnLimit.TabIndex = 3;
            this.lblDailyWithdrawnLimit.Text = "Daily Withdrawn Limit : ";
            // 
            // lblInterestRate
            // 
            this.lblInterestRate.AutoSize = true;
            this.lblInterestRate.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.lblInterestRate.Location = new System.Drawing.Point(24, 320);
            this.lblInterestRate.Name = "lblInterestRate";
            this.lblInterestRate.Size = new System.Drawing.Size(88, 16);
            this.lblInterestRate.TabIndex = 4;
            this.lblInterestRate.Text = "Interest Rate :";
            // 
            // grpAccountDetails
            // 
            this.grpAccountDetails.Controls.Add(this.grpTypeOfAccount);
            this.grpAccountDetails.Controls.Add(this.txtInterestRate);
            this.grpAccountDetails.Controls.Add(this.txtDailyWithdrawnLimit);
            this.grpAccountDetails.Controls.Add(this.txtBalance);
            this.grpAccountDetails.Controls.Add(this.txtClientName);
            this.grpAccountDetails.Controls.Add(this.txtAccountNumber);
            this.grpAccountDetails.Controls.Add(this.lblAccountNumber);
            this.grpAccountDetails.Controls.Add(this.lblInterestRate);
            this.grpAccountDetails.Controls.Add(this.lblClientName);
            this.grpAccountDetails.Controls.Add(this.lblDailyWithdrawnLimit);
            this.grpAccountDetails.Controls.Add(this.lblBalance);
            this.grpAccountDetails.Location = new System.Drawing.Point(39, 36);
            this.grpAccountDetails.Name = "grpAccountDetails";
            this.grpAccountDetails.Size = new System.Drawing.Size(1073, 357);
            this.grpAccountDetails.TabIndex = 5;
            this.grpAccountDetails.TabStop = false;
            this.grpAccountDetails.Text = "Account Details";
            // 
            // grpTypeOfAccount
            // 
            this.grpTypeOfAccount.Controls.Add(this.rbtnSavingAccount);
            this.grpTypeOfAccount.Controls.Add(this.rbtnChecking);
            this.grpTypeOfAccount.Location = new System.Drawing.Point(665, 50);
            this.grpTypeOfAccount.Name = "grpTypeOfAccount";
            this.grpTypeOfAccount.Size = new System.Drawing.Size(242, 165);
            this.grpTypeOfAccount.TabIndex = 6;
            this.grpTypeOfAccount.TabStop = false;
            this.grpTypeOfAccount.Text = "Type of Account";
            // 
            // rbtnChecking
            // 
            this.rbtnChecking.AutoSize = true;
            this.rbtnChecking.Checked = true;
            this.rbtnChecking.Location = new System.Drawing.Point(18, 39);
            this.rbtnChecking.Name = "rbtnChecking";
            this.rbtnChecking.Size = new System.Drawing.Size(84, 20);
            this.rbtnChecking.TabIndex = 0;
            this.rbtnChecking.TabStop = true;
            this.rbtnChecking.Text = "Checking";
            this.rbtnChecking.UseVisualStyleBackColor = true;
            this.rbtnChecking.CheckedChanged += new System.EventHandler(this.rbtnChecking_CheckedChanged);
            // 
            // txtInterestRate
            // 
            this.txtInterestRate.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.txtInterestRate.Enabled = false;
            this.txtInterestRate.Location = new System.Drawing.Point(177, 320);
            this.txtInterestRate.Name = "txtInterestRate";
            this.txtInterestRate.Size = new System.Drawing.Size(183, 22);
            this.txtInterestRate.TabIndex = 9;
            // 
            // txtDailyWithdrawnLimit
            // 
            this.txtDailyWithdrawnLimit.Location = new System.Drawing.Point(177, 257);
            this.txtDailyWithdrawnLimit.Name = "txtDailyWithdrawnLimit";
            this.txtDailyWithdrawnLimit.Size = new System.Drawing.Size(183, 22);
            this.txtDailyWithdrawnLimit.TabIndex = 8;
            // 
            // txtBalance
            // 
            this.txtBalance.Location = new System.Drawing.Point(177, 193);
            this.txtBalance.Name = "txtBalance";
            this.txtBalance.Size = new System.Drawing.Size(183, 22);
            this.txtBalance.TabIndex = 7;
            // 
            // txtClientName
            // 
            this.txtClientName.Location = new System.Drawing.Point(177, 133);
            this.txtClientName.Name = "txtClientName";
            this.txtClientName.Size = new System.Drawing.Size(373, 22);
            this.txtClientName.TabIndex = 6;
            // 
            // txtAccountNumber
            // 
            this.txtAccountNumber.Location = new System.Drawing.Point(177, 77);
            this.txtAccountNumber.Name = "txtAccountNumber";
            this.txtAccountNumber.Size = new System.Drawing.Size(183, 22);
            this.txtAccountNumber.TabIndex = 5;
            // 
            // btnCreateAccount
            // 
            this.btnCreateAccount.BackColor = System.Drawing.SystemColors.ControlLight;
            this.btnCreateAccount.Location = new System.Drawing.Point(856, 429);
            this.btnCreateAccount.Name = "btnCreateAccount";
            this.btnCreateAccount.Size = new System.Drawing.Size(256, 53);
            this.btnCreateAccount.TabIndex = 6;
            this.btnCreateAccount.Text = "Create Account";
            this.btnCreateAccount.UseVisualStyleBackColor = false;
            this.btnCreateAccount.Click += new System.EventHandler(this.btnCreateAccount_Click);
            // 
            // rbtnSavingAccount
            // 
            this.rbtnSavingAccount.AutoSize = true;
            this.rbtnSavingAccount.Location = new System.Drawing.Point(23, 86);
            this.rbtnSavingAccount.Name = "rbtnSavingAccount";
            this.rbtnSavingAccount.Size = new System.Drawing.Size(77, 20);
            this.rbtnSavingAccount.TabIndex = 1;
            this.rbtnSavingAccount.TabStop = true;
            this.rbtnSavingAccount.Text = "Savings";
            this.rbtnSavingAccount.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(665, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(50, 16);
            this.label1.TabIndex = 7;
            this.label1.Text = "Search";
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(729, 13);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(217, 22);
            this.textBox2.TabIndex = 8;
            // 
            // frmAccounts
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1184, 532);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnCreateAccount);
            this.Controls.Add(this.grpAccountDetails);
            this.Name = "frmAccounts";
            this.Text = "Accounts";
            this.grpAccountDetails.ResumeLayout(false);
            this.grpAccountDetails.PerformLayout();
            this.grpTypeOfAccount.ResumeLayout(false);
            this.grpTypeOfAccount.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblAccountNumber;
        private System.Windows.Forms.Label lblClientName;
        private System.Windows.Forms.Label lblBalance;
        private System.Windows.Forms.Label lblDailyWithdrawnLimit;
        private System.Windows.Forms.Label lblInterestRate;
        private System.Windows.Forms.GroupBox grpAccountDetails;
        private System.Windows.Forms.GroupBox grpTypeOfAccount;
        private System.Windows.Forms.RadioButton rbtnChecking;
        private System.Windows.Forms.TextBox txtInterestRate;
        private System.Windows.Forms.TextBox txtDailyWithdrawnLimit;
        private System.Windows.Forms.TextBox txtBalance;
        private System.Windows.Forms.TextBox txtClientName;
        private System.Windows.Forms.TextBox txtAccountNumber;
        private System.Windows.Forms.Button btnCreateAccount;
        private System.Windows.Forms.RadioButton rbtnSavingAccount;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox2;
    }
}


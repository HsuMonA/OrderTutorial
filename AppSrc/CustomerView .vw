Use Windows.pkg
Use DFClient.pkg
Use cCustomerDataDictionary.dd
Use DFEntry.pkg
Use dfTabDlg.pkg
Use DfCentry.pkg
Use DfSpnent.pkg
Use cDbTextEdit.pkg

Deferred_View Activate_oCustomerView for ;
Object oCustomerView is a dbView
    Object oCustomer_DD is a cCustomerDataDictionary
    End_Object

    Set Main_DD to oCustomer_DD
    Set Server to oCustomer_DD

    Set Border_Style to Border_Thick
    Set Size to 247 398
    Set Location to 2 2
    Set Label to "Customer Entry View"

    Object oCustomer_Customer_Number is a dbForm
        Entry_Item Customer.Customer_Number
        Set Location to 7 75
        Set Size to 12 42
        Set Label to "Customer Number:"
    End_Object

    Object oCustomer_Name is a dbForm
        Entry_Item Customer.Name
        Set Location to 21 75
        Set Size to 12 186
        Set Label to "Customer Name:"
    End_Object

    Object oDbTabDialog1 is a dbTabDialog
        Set Size to 185 365
        Set Location to 41 11
        Set Rotate_Mode to RM_Rotate

        Object oDbTabPage1 is a dbTabPage
            Set Label to "Address"

            Object oCustomer_Address is a dbForm
                Entry_Item Customer.Address
                Set Location to 7 70
                Set Size to 12 186
                Set Label to "Street Address:"
            End_Object

            Object oCustomer_City is a dbForm
                Entry_Item Customer.City
                Set Location to 21 70
                Set Size to 12 90
                Set Label to "City:"
            End_Object

            Object oCustomer_State is a dbComboForm
                Entry_Item Customer.State
                Set Location to 35 70
                Set Size to 12 37
                Set Label to "State:"
            End_Object

            Object oCustomer_Zip is a dbForm
                Entry_Item Customer.Zip
                Set Location to 49 70
                Set Size to 12 66
                Set Label to "Zip/Postal Code:"
            End_Object

            Object oCustomer_Phone_Number is a dbForm
                Entry_Item Customer.Phone_Number
                Set Location to 63 70
                Set Size to 12 126
                Set Label to "Phone Number:"
            End_Object

            Object oCustomer_Fax_Number is a dbForm
                Entry_Item Customer.Fax_Number
                Set Location to 77 70
                Set Size to 12 126
                Set Label to "Fax Number:"
            End_Object

            Object oCustomer_Email_Address is a dbForm
                Entry_Item Customer.Email_Address
                Set Location to 91 70
                Set Size to 12 186
                Set Label to "E-Mail Address:"
            End_Object
        End_Object

        Object oDbTabPage2 is a dbTabPage
            Set Label to "Balances"

            Object oCustomer_Credit_Limit is a dbSpinForm
                Entry_Item Customer.Credit_Limit
                Set Location to 7 81
                Set Size to 12 67
                Set Label to "Credit Limit:"
            End_Object

            Object oCustomer_Purchases is a dbForm
                Entry_Item Customer.Purchases
                Set Location to 21 81
                Set Size to 12 54
                Set Label to "Total Purchases:"
            End_Object

            Object oCustomer_Balance is a dbForm
                Entry_Item Customer.Balance
                Set Location to 35 81
                Set Size to 12 54
                Set Label to "Balance Due:"
            End_Object
        End_Object

        Object oDbTabPage3 is a dbTabPage
            Set Label to "Comments"

            Object oCustomer_Comments is a cDbTextEdit
                Entry_Item Customer.Comments
                Set Location to 19 20
                Set Size to 123 316
                Set Label to "Comments:"
            End_Object
        End_Object
    End_Object

Cd_End_Object

// C:\DataFlex Projects\OrderTutorial\AppSrc\VendorView.vw
// Vendor Entry View
//

Use DFClient.pkg
Use DFEntry.pkg
Use dfcentry.pkg

Use cVendorDataDictionary.dd

ACTIVATE_VIEW Activate_oVendorView FOR oVendorView
Object oVendorView is a dbView
    Set Location to 5 5
    Set Size to 120 249
    Set Label To "Vendor Entry View"
    Set Border_Style to Border_Thick


    Object oVendor_DD is a cVendorDataDictionary
    End_Object 

    Set Main_DD To oVendor_DD
    Set Server  To oVendor_DD



    Object oVendorId is a dbForm
        Entry_Item Vendor.Id
        Set Size to 12 42
        Set Location to 5 58
        Set peAnchors to anTopLeftRight
        Set Label to "Vendor Id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 53
        Set Label_row_Offset to 0
    End_Object 

    Object oVendorName is a dbForm
        Entry_Item Vendor.Name
        Set Size to 12 186
        Set Location to 19 58
        Set peAnchors to anTopLeftRight
        Set Label to "Vendor Name"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 53
        Set Label_row_Offset to 0
    End_Object 

    Object oVendorAddress is a dbForm
        Entry_Item Vendor.Address
        Set Size to 12 186
        Set Location to 33 58
        Set peAnchors to anTopLeftRight
        Set Label to "Street Address"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 53
        Set Label_row_Offset to 0
    End_Object 

    Object oVendorCity is a dbForm
        Entry_Item Vendor.City
        Set Size to 12 90
        Set Location to 47 58
        Set peAnchors to anTopLeftRight
        Set Label to "City"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 53
        Set Label_row_Offset to 0
    End_Object 

    Object oVendorState is a dbComboForm
        Entry_Item Vendor.State
        Set Size to 12 39
        Set Location to 61 58
        Set peAnchors to anTopLeftRight
        Set Label to "State"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 53
        Set Label_row_Offset to 0
    End_Object 

    Object oVendorZip is a dbForm
        Entry_Item Vendor.Zip
        Set Size to 12 66
        Set Location to 75 58
        Set peAnchors to anTopLeftRight
        Set Label to "Zip/Postal Code"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 53
        Set Label_row_Offset to 0
    End_Object 

    Object oVendorPhone_Number is a dbForm
        Entry_Item Vendor.Phone_Number
        Set Size to 12 126
        Set Location to 89 58
        Set peAnchors to anTopLeftRight
        Set Label to "Phone Number"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 53
        Set Label_row_Offset to 0
    End_Object 

    Object oVendorFax_Number is a dbForm
        Entry_Item Vendor.Fax_Number
        Set Size to 12 126
        Set Location to 103 58
        Set peAnchors to anTopLeftRight
        Set Label to "Fax Number"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 53
        Set Label_row_Offset to 0
    End_Object 


End_Object 

// C:\DataFlex Projects\OrderTutorial\AppSrc\SalesPersonView.vw
// Sales Person Entry View
//

Use DFClient.pkg
Use DFEntry.pkg

Use cSalesPDataDictionary.dd

ACTIVATE_VIEW Activate_oSalesPersonView FOR oSalesPersonView
Object oSalesPersonView is a dbView
    Set Location to 5 5
    Set Size to 36 215
    Set Label To "Sales Person Entry View"
    Set Border_Style to Border_Thick


    Object oSalesP_DD is a cSalesPDataDictionary
    End_Object 

    Set Main_DD To oSalesP_DD
    Set Server  To oSalesP_DD



    Object oSalesPId is a dbForm
        Entry_Item SalesP.Id
        Set Size to 12 46
        Set Location to 5 54
        Set peAnchors to anTopLeftRight
        Set Label to "Sales Person Id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 49
        Set Label_row_Offset to 0
    End_Object 

    Object oSalesPName is a dbForm
        Entry_Item SalesP.Name
        Set Size to 12 156
        Set Location to 19 54
        Set peAnchors to anTopLeftRight
        Set Label to "Name"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 49
        Set Label_row_Offset to 0
    End_Object 


End_Object 

// OrderHea.sl
// OrderHea Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cCustomerDataDictionary.dd
Use cSalesPDataDictionary.dd
Use cOrderHeaDataDictionary.dd

CD_Popup_Object OrderHea_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 388
    Set Label To "OrderHea Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oCustomer_DD is a cCustomerDataDictionary
    End_Object 

    Object oSalesP_DD is a cSalesPDataDictionary
    End_Object 

    Object oOrderHea_DD is a cOrderHeaDataDictionary
        Set DDO_Server To oCustomer_DD
        Set DDO_Server To oSalesP_DD
    End_Object 

    Set Main_DD To oOrderHea_DD
    Set Server  To oOrderHea_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 378
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "OrderHea_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oOrderHea_Order_Number is a cDbCJGridColumn
            Entry_Item OrderHea.Order_Number
            Set piWidth to 93
            Set psCaption to "Order Number"
        End_Object 

        Object oCustomer_Customer_Number is a cDbCJGridColumn
            Entry_Item Customer.Customer_Number
            Set piWidth to 60
            Set psCaption to "Number"
        End_Object 

        Object oCustomer_Name is a cDbCJGridColumn
            Entry_Item Customer.Name
            Set piWidth to 250
            Set psCaption to "Name"
        End_Object 

        Object oOrderHea_Order_Date is a cDbCJGridColumn
            Entry_Item OrderHea.Order_Date
            Set piWidth to 100
            Set psCaption to "Order Date"
        End_Object 

        Object oOrderHea_Order_Total is a cDbCJGridColumn
            Entry_Item OrderHea.Order_Total
            Set piWidth to 110
            Set psCaption to "Order Total"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 225
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 279
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 333
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // OrderHea_sl

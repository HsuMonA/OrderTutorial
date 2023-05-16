// C:\DataFlex Projects\OrderTutorial\AppSrc\OrderEntryView.vw
// Order Entry View
//

Use DFClient.pkg
Use DFEntry.pkg
Use dfSpnEnt.pkg
Use DfCEntry.pkg
Use cDbCJGrid.pkg
Use cDbCJGridColumn.pkg

Use cCustomerDataDictionary.dd
Use cSalesPDataDictionary.dd
Use cVendorDataDictionary.dd
Use cOrderHeaDataDictionary.dd
Use cInvtDataDictionary.dd
Use cOrderDtlDataDictionary.dd
Use Windows.pkg

ACTIVATE_VIEW Activate_oOrderEntryView FOR oOrderEntryView
Object oOrderEntryView is a dbView
    Set Location to 5 5
    Set Size to 250 472
    Set Label To "Order Entry View"
    Set Border_Style to Border_Thick


    Object oCustomer_DD is a cCustomerDataDictionary
    End_Object 

    Object oSalesP_DD is a cSalesPDataDictionary
    End_Object 

    Object oVendor_DD is a cVendorDataDictionary
    End_Object 

    Object oOrderHea_DD is a cOrderHeaDataDictionary
        Set DDO_Server To oCustomer_DD
        Set DDO_Server To oSalesP_DD
        // this lets you save a new parent DD from within child DD
        Set Allow_Foreign_New_Save_State to True
    End_Object 

    Object oInvt_DD is a cInvtDataDictionary
        Set DDO_Server To oVendor_DD
    End_Object 

    Object oOrderDtl_DD is a cOrderDtlDataDictionary
        Set DDO_Server To oOrderHea_DD
        Set DDO_Server To oInvt_DD
        Set Constrain_File To OrderHea.File_Number
    End_Object 

    Set Main_DD To oOrderHea_DD
    Set Server  To oOrderHea_DD



    Object oOrderHeaOrder_Number is a dbForm
        Entry_Item OrderHea.Order_Number
        Set Size to 12 42
        Set Location to 5 59
        Set peAnchors to anTopLeftRight
        Set Label to "Order Number"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oCustomerCustomer_Number is a dbForm
        Entry_Item Customer.Customer_Number
        Set Size to 12 42
        Set Location to 5 167
        Set peAnchors to anTopRight
        Set Label to "Customer Number"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oOrderHeaOrder_Date is a dbSpinForm
        Entry_Item OrderHea.Order_Date
        Set Size to 12 66
        Set Location to 5 250
        Set peAnchors to anTopRight
        Set Label to "Order Date"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oCustomerName is a dbForm
        Entry_Item Customer.Name
        Set Size to 12 186
        Set Location to 19 59
        Set peAnchors to anTopLeftRight
        Set Label to "Customer Name"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oCustomerAddress is a dbForm
        Entry_Item Customer.Address
        Set Size to 12 186
        Set Location to 33 59
        Set peAnchors to anTopLeftRight
        Set Label to "Street Address"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oOrderHeaOrdered_By is a dbForm
        Entry_Item OrderHea.Ordered_By
        Set Size to 12 78
        Set Location to 33 287
        Set peAnchors to anTopRight
        Set Label to "Ordered By"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oCustomerCity is a dbForm
        Entry_Item Customer.City
        Set Size to 12 90
        Set Location to 47 59
        Set peAnchors to anTopLeftRight
        Set Label to "City/State/Zip"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oCustomerState is a dbComboForm
        Entry_Item Customer.State
        Set Size to 12 39
        Set Location to 47 156
        Set peAnchors to anTopRight
        Set Label to ""
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oCustomerZip is a dbForm
        Entry_Item Customer.Zip
        Set Size to 12 66
        Set Location to 47 202
        Set peAnchors to anTopRight
        Set Label to ""
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oSalesPId is a dbForm
        Entry_Item SalesP.Id
        Set Size to 12 46
        Set Location to 47 322
        Set peAnchors to anTopRight
        Set Label to "Sales Person Id"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oOrderHeaTerms is a dbComboForm
        Entry_Item OrderHea.Terms
        Set Size to 12 91
        Set Location to 61 59
        Set peAnchors to anTopLeftRight
        Set Label to "Terms"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oOrderHeaShip_Via is a dbComboForm
        Entry_Item OrderHea.Ship_Via
        Set Size to 12 91
        Set Location to 61 182
        Set peAnchors to anTopRight
        Set Label to "Ship Via"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oDetailGrid is a cDbCJGrid
        Set Size to 131 462
        Set Location to 83 5
        Set Server to oOrderDtl_DD
        Set Ordering to 1
        Set peAnchors to anAll
        Set psLayoutSection to "oOrderEntryView_oDetailGrid"
        Set pbAllowInsertRow to False
        Set pbHeaderPrompts to True
        Set Enabled_State to False

        Object oInvt_Item_Id is a cDbCJGridColumn
            Entry_Item Invt.Item_Id
            Set piWidth to 150
            Set psCaption to "Item Id"
        End_Object 

        Object oInvt_Description is a cDbCJGridColumn
            Entry_Item Invt.Description
            Set piWidth to 250
            Set psCaption to "Description"
        End_Object 

        Object oInvt_Unit_Price is a cDbCJGridColumn
            Entry_Item Invt.Unit_Price
            Set piWidth to 90
            Set psCaption to "Unit Price"
        End_Object 

        Object oOrderDtl_Price is a cDbCJGridColumn
            Entry_Item OrderDtl.Price
            Set piWidth to 90
            Set psCaption to "Price"
        End_Object 

        Object oOrderDtl_Qty_Ordered is a cDbCJGridColumn
            Entry_Item OrderDtl.Qty_Ordered
            Set piWidth to 63
            Set psCaption to "Quantity"
        End_Object 

        Object oOrderDtl_Extended_Price is a cDbCJGridColumn
            Entry_Item OrderDtl.Extended_Price
            Set piWidth to 110
            Set psCaption to "Total"
        End_Object 

    End_Object 

    //-----------------------------------------------------------------------
    // Create custom confirmation messages for save and delete
    // We must create the new functions and assign verify messages
    // to them.
    //-----------------------------------------------------------------------

    Function ConfirmDeleteHeader Returns Boolean
        Boolean bFail
        Get Confirm "Delete Entire Header and all detail?" to bFail
        Function_Return bFail
    End_Function 

    // Only confirm on the saving of new records
    Function ConfirmSaveHeader Returns Boolean
        Boolean bNoSave bHasRecord
        Handle  hoSrvr
        Get Server to hoSrvr
        Get HasRecord of hoSrvr to bHasRecord
        If not bHasRecord Begin
            Get Confirm "Save this NEW header?" to bNoSave
        End
        Function_Return bNoSave
    End_Function 

    // Define alternate confirmation Messages
    Set Verify_Save_MSG       to (RefFunc(ConfirmSaveHeader))
    Set Verify_Delete_MSG     to (RefFunc(ConfirmDeleteHeader))
    // Saves in header should not clear the view
    Set Auto_Clear_Deo_State to False

    Object oPrintBtn is a Button
        Set Location to 220 7
        Set Label to "Print Order"
        Set peAnchors to anBottomLeft
    
        // fires when the button is clicked
        Procedure OnClick
            
        End_Procedure
    
    End_Object

    Object oOrderHea_Order_Total is a dbForm
        Entry_Item OrderHea.Order_Total
        Set Location to 221 406
        Set Size to 13 60
        Set Label to "Order Total:"
        Set peAnchors to anBottomRight
    End_Object


End_Object 

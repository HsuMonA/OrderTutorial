// C:\DataFlex Projects\OrderTutorial\AppSrc\InventoryView.vw
// Inventory Item View
//

Use DFClient.pkg
Use DFEntry.pkg

Use cVendorDataDictionary.dd
Use cInvtDataDictionary.dd

ACTIVATE_VIEW Activate_oInventoryView FOR oInventoryView
Object oInventoryView is a dbView
    Set Location to 5 5
    Set Size to 274 460
    Set Label To "Inventory Item View"
    Set Border_Style to Border_Thick


    Object oVendor_DD is a cVendorDataDictionary
    End_Object 

    Object oInvt_DD is a cInvtDataDictionary
        Set DDO_Server To oVendor_DD
    End_Object 

    Set Main_DD To oInvt_DD
    Set Server  To oInvt_DD



    Object oInvtItem_Id is a dbForm
        Entry_Item Invt.Item_Id
        Set Size to 12 284
        Set Location to 5 51
        Set peAnchors to anTopLeftRight
        Set Label to "Invt.Item Id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 46
        Set Label_row_Offset to 0
    End_Object 

    Object oInvtDescription is a dbForm
        Entry_Item Invt.Description
        Set Size to 12 404
        Set Location to 19 51
        Set peAnchors to anTopLeftRight
        Set Label to "Description"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 46
        Set Label_row_Offset to 0
    End_Object 

    Object oDbGroup1 is a dbGroup
        Set Size to 70 434
        Set Location to 44 5
        Set Label to "Vendor"

        Object oVendorId is a dbForm
            Entry_Item Vendor.Id
            Set Size to 12 340
            Set Location to 17 53
            Set peAnchors to anTopLeftRight
            Set Label to "Vendor Id"
            Set Label_Justification_mode to jMode_Left
            Set Label_Col_Offset to 46
            Set Label_row_Offset to 0
        End_Object 
        Object oVendorName is a dbForm
            Entry_Item Vendor.Name
            Set Size to 12 340
            Set Location to 31 53
            Set peAnchors to anTopLeftRight
            Set Label to "Vendor Name"
            Set Label_Justification_mode to jMode_Left
            Set Label_Col_Offset to 46
            Set Label_row_Offset to 0
        End_Object 
        Object oInvtVendor_Part_Id is a dbForm
            Entry_Item Invt.Vendor_Part_Id
            Set Size to 12 340
            Set Location to 45 53
            Set peAnchors to anTopLeftRight
            Set Label to "Vendor Part Id"
            Set Label_Justification_mode to jMode_Left
            Set Label_Col_Offset to 46
            Set Label_row_Offset to 0
        End_Object 
    End_Object

    Object oDbGroup2 is a dbGroup
        Set Size to 68 390
        Set Location to 116 6
        Object oInvtUnit_Price is a dbForm
            Entry_Item Invt.Unit_Price
            Set Size to 12 129
            Set Location to 25 53
            Set peAnchors to anTopLeftRight
            Set Label to "Unit Price"
            Set Label_Justification_mode to jMode_Left
            Set Label_Col_Offset to 46
            Set Label_row_Offset to 0
        End_Object 
        Object oInvtOn_Hand is a dbForm
            Entry_Item Invt.On_Hand
            Set Size to 12 145
            Set Location to 23 240
            Set peAnchors to anTopLeftRight
            Set Label to "On Hand"
            Set Label_Justification_mode to jMode_Left
            Set Label_Col_Offset to 46
            Set Label_row_Offset to 0
        End_Object 
    End_Object


End_Object 

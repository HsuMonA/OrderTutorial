Use Windows.pkg
Use DFClient.pkg

Deferred_View Activate_oPrime for ;
Object oPrime is a dbView

    Set Border_Style to Border_Thick
    Set Size to 200 300
    Set Location to 2 2
    Set Label to "Prime"

    Object oButton1 is a Button
        Set Size to 18 61
        Set Location to 76 108
        Set Label to "Calc Prime"
    
         // fires when the button is clicked
        Procedure onClick
            Integer i j isPrime
                    
            For i from 3 to 50
                Move 1 to isPrime
                For j from 2 to (i / 2)
                    If (Mod(i, j) = 0) Begin
                        Move 0 to isPrime
                        Break
                    End
                Loop
                    If (isPrime = 1) Begin
                    Showln i
                End
            Loop
        End_Procedure

    End_Object

Cd_End_Object

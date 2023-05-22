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
            Integer iNum iDivisor
            Boolean isPrime                    
            For iNum from 3 to 50
                Move True to isPrime
                // check if the number is divisible by prime numbers up to the square root of the number
                For iDivisor from 2 to (Sqrt(iNum))
                //if the iNum is divisible by the iDivisor, is not prime
                    If (Mod(iNum, iDivisor) = 0) Begin
                        Move False to isPrime
                    End
                Loop
                If (isPrime = True) Begin
                    Showln iNum
                End              
            Loop
        End_Procedure
        
    End_Object

Cd_End_Object

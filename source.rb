//Available Extern Variables and Functions

// DP1 = DeviceParameter1
// DP2 = DeviceParameter2
// P1 = CommandParameter1
// P2 = CommandParameter2
// P3 = CommandParameter3
// P4 = CommandParameter4
// ioResult  = Returned Value from Channel
// ScriptResult  = The Result of this Function call
// NextCmd  = The Command that is executed after this one
// ACK as boolen  = True if Acknowledge is correct, false if not
// ACKMessage  = describes the ACK/NAK
// AckCmd  = The Ack Function of this Command

// Available Commands
Select case Cmd

   case "SendOSCText"
      SendOSCText

   case "SendOSCMessage"
      SendOSCMessage

   case "SendOscInteger"
      SendOscInteger

   case "SendOscFloat"
      SendOscFloat

End

// Commands Subroutines

// ********************************************************
Sub SendOSCText()
     Dim message As string
     Dim text As string
     Dim address As string
     Dim argument As Integer
     
     address=DP1+chr(0)
    DP1Default =DP1
     text=chr(0)+chr(0)+P1
   P1Default = P1
     while len(address) mod 4 <> 0
       address = address+ chr(0)
     wend
     
     //                    address    ,   nullchr  nullchr nullchr
      ScriptResult=address+",s"+text+chr(0)+chr(0)+chr(0)
   
End Sub
// ********************************************************

// ********************************************************
Sub SendOSCMessage()
     Dim message As string
     Dim address As string
     Dim argument As Integer
     
     address=DP1+chr(0)
    DP1Default =DP1
     while len(address) mod 4 <> 0
       address = address+ chr(0)
     wend
     
     //                    address    ,   nullchr  nullchr nullchr
      ScriptResult=address+","+Chr(0)+Chr(0)+Chr(0)
   
End Sub
// ********************************************************

// ********************************************************
Sub SendOscInteger()
     Dim message As string
     Dim address As string
     Dim argument As Integer
     Dim hexString As String = Right("00000000"+Hex(Val(P1)), 8)
   P1Default = P1
   address=DP1+chr(0)
    DP1Default =DP1
   
       while len(address) mod 4 <> 0
       address = address+ chr(0)
     wend
   
   Dim b1 As Integer = val("&h"+MidB(hexString, 7,2))
   Dim b2 As Integer = val("&h"+MidB(hexString, 5,2))
   Dim b3 As Integer = val("&h"+MidB(hexString, 3,2))
   Dim b4 As Integer = val("&h"+MidB(hexString, 1,2))
   
   
     //                    address    ,   nullchr  nullchr nullchr
      ScriptResult=address+",i"+Chr(0)+Chr(0)+ChrB(b4)+ChrB(b3)+ChrB(b2)+ChrB(b1)
   
End Sub
// ********************************************************



' http://cx20.main.jp/pukiwiki/pukiwiki.php?Software/WSH#content_1_18

Set args = Wscript.Arguments
If args.Count < 1 Then
    Wscript.StdOut.WriteLine "xstart <command> [<computer>]"
Else
    '--- �R�}���h�w��
    strCommand = args(0)
    '--- �R���s���[�^�w��
    strComputerPath = ""
    If args.Count = 2 Then
        strComputer = args(1)
        If InStr(strComputer, "\\") = 1 Then
            strComputer = Mid(strComputer, 3)
        End If
        strComputerPath = "\\" & strComputer & "\root\cimv2:"
    End If
    '--- WMI �ɐڑ� Wim32_Process �N���X�����o��
    Set clsProcess = GetObject("winmgmts:{impersonationLevel=impersonate}" _
        & "!" & strComputerPath & "Win32_Process")
   '--- �v���Z�X�̍쐬
    lngResult = clsProcess.Create(strCommand)
    Wscript.StdOut.WriteLine strCommand & " :" & lngResult
End If

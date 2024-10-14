Attribute VB_Name = "OpredIntegral"
Option Explicit

'����� ������� TRAP
Public Function TRAP(ByRef a As Double, ByRef b As Double, _
ByRef N As Integer, Func As String) As Double
Attribute TRAP.VB_Description = "���������� ������������� ��������� ������� ��������"
Attribute TRAP.VB_ProcData.VB_Invoke_Func = " \n3"
    Dim h As Double
    Dim S As Double
    Dim i As Integer
    Dim y As Double
    
    h = (b - a) / N '��� ��������� �������
    S = Application.Run(Func, a) + Application.Run(Func, b) '����� = ��������
    
    '���� ���������� ������������� ��������� ������� ��������
    For i = 1 To N - 1
        y = Application.Run(Func, a + (h * i))
        S = S + y * 2
    Next i
    
    S = S * h / 2
    TRAP = S
    
End Function

Public Function MyFOdin(x1 As Double) As Double
    
    '������ ��������������� ���������
    MyFOdin = x1 / Sqr(x1 ^ 2 + 3)
    
End Function

Public Function MyFDva(x2 As Double) As Double
    
    '������ ��������������� ���������
    MyFDva = (x2 ^ 2 + 1.4) / Sqr(x2 ^ 2 + 2.7)
    
End Function

                                                                                                                                                                                                                                                                                                                                                                                                                                                            
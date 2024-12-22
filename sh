
Hosted File:
Set-LocalUser -Name "Mansi" -Password (ConvertTo-SecureString -AsPlainText "Mansi@123" -Force)
Get-LocalUser -Name "Mansi" | Enable-LocalUser 
Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
Copy ngrok.exe C:\Windows\System32
cmd /c echo ./ngrok.exe authtoken "2fRXSNuviTCOyS530vtiZHZ4I1F_24gqSEHuHA5vrb2S4cdd6" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
.\a.ps1

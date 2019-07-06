# How to sing a code using a code signing certificate?
# Get the cert to a vairable
$MyCodeSigncert =(Get-ChildItem Cert:\CurrentUser\My -CodeSigningCert)[0]

# Sign the certificate using the code signig certificate
Set-AuthenticodeSignature "C:\temp\Benu.ps1" -Certificate $MyCodeSigncert

#Verify the signature
Get-AuthenticodeSignature "C:\temp\Benu.ps1" | Format-Table -AutoSize

#If Somebody has ediated the code and you do a verify signature using above command you will get status HashMismatch


# Requires -Version 5

# this is where the cert file will be saved
$Path = "C:\temp\codeSignCert.pfx"

# you'll need this password to load the PFX file later
$Password = Read-Host -Prompt 'Enter new password to protect certificate' -AsSecureString

# create cert, export to file, then delete again
$cert = New-SelfSignedCertificate -KeyUsage DigitalSignature -KeySpec Signature -FriendlyName 'Benudhar Sahoo' -Subject CN='Benudhar Sahoo Code Signing Certificate' -KeyExportPolicy ExportableEncrypted -CertStoreLocation Cert:\CurrentUser\My -NotAfter (Get-Date).AddYears(10) -TextExtension @('2.5.29.37={text}1.3.6.1.5.5.7.3.3')
$cert | Export-PfxCertificate -Password $Password -FilePath $Path

# After the certificate is created, install it to your personal store. 

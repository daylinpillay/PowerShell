cls

$Private:OFS = ""

$PasswordLength = 4

$InclChars = ‘!@#$%^&*0123456789'

$RandomNums = 1..$PasswordLength | ForEach-Object { Get-Random -Maximum $InclChars.length }

$RandomPassword = [String]$InclChars[$RandomNums]

#Write-Host -NoNewLine "Changeme"
#Write-Host  $RandomPassword


$text = "Changeme"+$RandomPassword

# Load System.Windows.Forms assembly.
$null = [Reflection.Assembly]::LoadWithPartialName(“System.Windows.Forms”)

# Create data object.
$dataObject = New-Object windows.forms.dataobject

# Add generated strings to data object.
$dataObject.SetData([Windows.Forms.DataFormats]::UnicodeText, $true, $text)

# Put data object in system clipboard.
[Windows.Forms.Clipboard]::SetDataObject($dataObject, $true)

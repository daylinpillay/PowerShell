# add the required .NET assembly:
Add-Type -AssemblyName System.Windows.Forms
# show the MsgBox:
$result = [System.Windows.Forms.MessageBox]::Show('Do you want to restart?', 'Warning', 'YesNo', 'Warning')

# check the result:
if ($result -eq 'Yes')
{
  Restart-Computer -WhatIf
}
else
{
  Write-Warning 'Skipping Restart'
}
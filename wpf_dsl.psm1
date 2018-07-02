Using Namespace System.Windows.Controls
Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName System.Windows.Forms

Set-StrictMode -Version Latest

#Get public and private function definition files.
$Public  = @( Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue )

#Dot source the files
Foreach($import in @($Public + $Private))
{
    Try
    {
        . $import.fullname
    }
    Catch
    {
        Write-Error -Message "Failed to import function $($import.fullname): $_"
    }
}

# Here I might...
# Read in or create an initial config file and variable
# Export Public functions ($Public.BaseName) for WIP modules
# Set variables visible to the module and its functions only

Export-ModuleMember -Function $Public.Basename -alias 'Edit-Object'

$p=new-object System.Windows.Controls.StackPanel
if(-not ($p | get-member GEtControlByName)){
  Update-TypeData -TypeName System.Windows.Controls.Panel -MemberType ScriptMethod -MemberName GetControlByName -Value $function:GetControlByName
}
Remove-Variable -Name p
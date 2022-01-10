$EOLcred = Get-Credential

Add-Type -AssemblyName System.Windows.Forms

$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{ 
    InitialDirectory = [Environment]::GetFolderPath('Desktop') 
}
$null = $FileBrowser.ShowDialog()
$CSVpath = $FileBrowser.Filename
$mailboxes = import-csv -path $CSVpath

Connect-ExchangeOnline -Credential $EOLcred

$mailboxes.Email | ForEach-Object{
	Set-MailboxAutoReplyConfiguration -Identity $_ -AutoReplyState Enabled -InternalMessage "This is a test of OOO"
	echo "Set OOO for User:" $_
}
pause
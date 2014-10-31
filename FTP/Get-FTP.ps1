#FTP

$url = 'ftp.get.com'
$server = 'Name'
$username = 'Username'
$password = 'Password'


$cred = New-Object System.Management.Automation.PSCredential -ArgumentList @($username,(ConvertTo-SecureString -String $password -AsPlainText -Force))
set-ftpconnection -server $server -Credentials $cred -UseBinary -UsePassive

$Files = get-ftpchilditem -path $URL

#Teller filer
$files.count

$testUserAccountName = 'ansibletestuser'
$testUserAccountPassword = (ConvertTo-SecureString -String 'p@$$w0rd12' -AsPlainText -Force)
if (-not (Get-LocalUser -Name $testUserAccountName -ErrorAction Ignore)) {
    $newUserParams = @{
        Name                 = $testUserAccountName
        AccountNeverExpires  = $true
        PasswordNeverExpires = $true
        Password             = $testUserAccountPassword
    }
    $null = New-LocalUser @newUserParams
}

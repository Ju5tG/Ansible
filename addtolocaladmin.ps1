## Add the local user to the administrators group. If this step isn't doing, Ansible sees an "AccessDenied" error
Get-LocalUser -Name $testUserAccountName | Add-LocalGroupMember -Group 'Administrators'

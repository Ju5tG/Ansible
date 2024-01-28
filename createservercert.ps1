$hostname = hostname
$serverCert = New-SelfSignedCertificate -DnsName $hostName -CertStoreLocation 'Cert:\LocalMachine\My'

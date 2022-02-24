$source = 'https://secure.logmein.com/MsiGenerate/WKffJUcflfcMtosLR3bnzc9tTBqHJEZo/LogMeIn.msi'
$destination = 'C:/temp/LogMeIn.msi'
Invoke-WebRequest -Uri $source -OutFile $destination

msiexec /qn /L*V "C:\Temp\msilog_logmein.log" /i 'C:/temp/LogMeIn.msi' /qn

exit
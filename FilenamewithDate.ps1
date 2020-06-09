#While exporting a file, we may need to add the date and time to the file name. 
#Create the file suffix with date and time format
$filesuffix = Get-Date -Format "MM-dd-yyyy_HH-mm-SS"
#use it while giving the export file name. In this example, we are doing a get-chilitem to find all files and folders in a path. 
Get-ChildItem | Export-Csv c:\temp\Export_$filesuffix.csv -Append -NoTypeInformation

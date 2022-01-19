$FullPathtoAppxbundle = "YourPathtoAppxBundle" 
$DependencyFolderPath = "YourDepencyFolderPath" 
$Dependencies = Get-ChildItem -Path $DependencyFolderPath -Filter ".appx" | Select-Object -ExpandProperty FullName

Add-AppxPackage -Path $FullPathtoAppxbundle -DependencyPath $Dependencies
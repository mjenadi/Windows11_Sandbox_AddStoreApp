# Windows11_Sandbox_AddStoreApp
#Windows 11 : How to add Store App in Sandbox and enroll it

#https://answers.microsoft.com/en-us/windows/forum/all/how-to-enable-a-store-app-in-sandbox/392bacc6-5dbb-40fc-a62f-a70a983cff2a

#You are not able to add microsoft store in your sandbox and maybe you want to enroll your sandbox in Intune with Company Portal app, follow this steps : 

#1. Connect to your https://businessstore.microsoft.com/
#2. Shop your app (offline) and donwload appxbundle (here it will be company portal)
#3. Download all dependencies (required frameworks can be downloaded from this github) :
#4. Download script Add-StoreApp-Package.ps1 :

$FullPathtoAppxbundle = "YourPathtoAppxBundle"
$DependencyFolderPath = "YourDepencyFolderPath"
$Dependencies = Get-ChildItem -Path $DependencyFolderPath -Filter "*.appx*" | Select-Object -ExpandProperty FullName

Add-AppxPackage -Path $FullPathtoAppxbundle -DependencyPath $Dependencies


#5. copy all files and execute the script in the Windows 11 Sandbox

#6. Lanch Company portal and enroll your Sandbox


# Uninstall Blender
$app = Get-WmiObject -Class Win32_Product | Where-Object { 
    $_.Name -match "Blender"
}
$app.Uninstall()

# Uninstall Gimp
# $app = Get-WmiObject -Class Win32_Product | Where-Object { 
#     $_.Name -match "Gimp"
# }
# $app.Uninstall()

$app = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* |  Where-Object  DisplayName -match "^GIMP 2.10.12"
Start-Process $app.UninstallString "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"


# Uninstall Inkscape
$app = Get-WmiObject -Class Win32_Product | Where-Object { 
    $_.Name -match "Inkscape 0.92.4"
}
$app.Uninstall()


# Uninstall LibreOffice
$app = Get-WmiObject -Class Win32_Product | Where-Object { 
    $_.Name -match "LibreOffice 6.3.2.2"
}
$app.Uninstall()


#Uninstall Lightworks
$app = Get-ItemProperty HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* |  Where-Object  DisplayName -match "^Lightworks"
$unistallstr = $app.UninstallString
Start-Process -FilePath $unistallstr -Wait -ArgumentList "/S"


# end

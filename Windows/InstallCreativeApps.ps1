#region begin Install Blender
# $BlenderUrl = "http://127.0.0.1:8080/blender-2.80-windows64.msi"
$BlenderUrl = "https://ftp.nluug.nl/pub/graphics/blender/release/Blender2.80/blender-2.80-windows64.msi"
$BlenderMsi = 'c:\windows\temp\blender-2.80-windows64.msi'

Invoke-WebRequest $BlenderUrl -OutFile $BlenderMsi -UseBasicParsing
Start-Process msiexec.exe -Wait -ArgumentList "/I $BlenderMsi /quiet"
#endregion



#region begin Install Gimp
# $GimpUrL = "http://127.0.0.1:8080/gimp-2.10.12-setup-3.exe"
$GimpUrL = "https://www.mirrorservice.org/sites/ftp.gimp.org/pub/gimp/v2.10/windows/gimp-2.10.12-setup-3.exe"
$GimpExe = 'c:\windows\temp\gimp-2.10.12-setup-3.exe'

Invoke-WebRequest $GimpUrL -OutFile $GimpExe -UseBasicParsing
Start-Process $GimpExe  "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
#endregion


#region begin Install Inkscape
# $InkscapeUrl = "http://127.0.0.1:8080/inkscape-0.92.4-x64.msi"
$InkscapeUrl = "https://media.inkscape.org/dl/resources/file/inkscape-0.92.4-x64.msi"
$InkscapeMsi = 'c:\windows\temp\inkscape-0.92.4-x64.msi'

Invoke-WebRequest $InkscapeUrl -OutFile $InkscapeMsi -UseBasicParsing
Start-Process  msiexec.exe -Wait -ArgumentList "/I $InkscapeMsi /quiet"
#endregion

#region begin Install LibreOffice
# $LibreOfficeUrl = "http://127.0.0.1:8080/LibreOffice_6.3.2_Win_x64.msi"
$LibreOfficeUrl = "https://mirrors.estointernet.in/tdf/libreoffice/stable/6.3.2/win/x86_64/LibreOffice_6.3.2_Win_x64.msi"
$LibreOfficeMsi = 'c:\windows\temp\LibreOffice_6.3.2_Win_x64.msi'

Invoke-WebRequest $LibreOfficeUrl -OutFile $LibreOfficeMsi -UseBasicParsing
Start-Process  msiexec.exe -Wait -ArgumentList "/I $LibreOfficeMsi /quiet"
#endregion

#region begin Install LightWorks
# $lightworksUrl = "http://127.0.0.1:8080/lightworks_v14.5.0_full_64bit.exe"
$lightworksUrl = "http://cdn.lwks.com/lightworks_v14.5.0_full_64bit.exe"
$lightworksExe = 'c:\windows\temp\lightworks_v14.5.0_full_64bit.exe'

Invoke-WebRequest $lightworksUrl -OutFile $lightworksExe -UseBasicParsing
Start-Process -FilePath $lightworksExe -Wait -ArgumentList "/S"
#endregion

#region begin Install FreeCad
# $freecadUrl = "http://127.0.0.1:8000/FreeCAD-0.18.16131.3129ae4-WIN-x64-installer.exe"
$freecadUrl = "https://github.com/FreeCAD/FreeCAD/releases/download/0.18.3/FreeCAD-0.18.16131.3129ae4-WIN-x64-installer.exe"
$freecadExe = 'c:\windows\temp\FreeCAD-0.18.16131.3129ae4-WIN-x64-installer.exe'

Invoke-WebRequest $freecadUrl -OutFile $freecadExe -UseBasicParsing
# Start-Process -FilePath $freecadExe -Wait -ArgumentList "/S"
Start-Process $freecadExe  "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
#endregion

# brutforce script to make some organizational units

# you need to change "DC=ad,DC=dmew1,DC=lan" to match your domain and update the ST initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name DM_Computers -Path "ad=AD,ad=dmew1,ad=lan" -Description "DM Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=DM_Computers,ad=AD,ad=dmew1,ad=lan"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=DM_Computers,ad=AD,ad=dmew1,ad=lan"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=DM_Computers,ad=AD,ad=dmew1,ad=lan"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=DM_Computers,ad=AD,ad=dmew1,ad=lan"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=DM_Computers,ad=AD,ad=dmew1,ad=lan"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=DM_Computers,ad=AD,ad=dmew1,ad=lan"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=DM_Computers,ad=AD,ad=dmew1,ad=lan"
 New-ADOrganizationalUnit -Name Servers -Path "OU=DM_Computers,ad=AD,ad=dmew1,ad=lan"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=DM_Computers,ad=AD,ad=dmew1,ad=lan"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=DM_Computers,ad=AD,ad=dmew1,ad=lan"
New-ADOrganizationalUnit -Name DM_Groups -Path "ad=AD,ad=dmew1,ad=lan" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name DM_Privileged_Accounts -Path "ad=AD,ad=dmew1,ad=lan" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name DM_Users -Path "ad=AD,ad=dmew1,ad=lan" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=DM_Groups,ad=AD,ad=dmew1,ad=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=DM_Groups,ad=AD,ad=dmew1,ad=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=DM_Groups,ad=AD,ad=dmew1,ad=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=DM_Groups,ad=AD,ad=dmew1,ad=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=DM_Groups,ad=AD,ad=dmew1,ad=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=DM_Groups,ad=AD,ad=dmew1,ad=lan"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=DM_Groups,ad=AD,ad=dmew1,ad=lan"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""

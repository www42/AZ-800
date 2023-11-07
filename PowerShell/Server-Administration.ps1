# PowerShell
# -------------


# 5 oder 7?
$PSVersionTable

# Zeitzone?
Get-Date

# Verb-Noun Syntax

# Command = Cmdlet | Function | Alias | externe Befehle
Get-Command

# Pipeline
Get-Command | Measure-Object

# PowerShell Modules
Get-Module -ListAvailable | Measure-Object
Get-Module -ListAvailable -Name az*

# Aliases (Don't use Aliases!)
dir
Get-Command dir
get-command cd 
Get-Command pwd

cd /
cd \
pwd
dir


Get-Command | Group-Object -Property CommandType

# Functions sind in PowerShell geschrieben
# Cmdlets sind höheren Sprachen geschrieben (meist C#) und compiliert


# Internet?
get-command ping
ping 8.8.8.8

# Google DNS Server im Internet 8.8.8.8

nslookup  # geht nicht

# -------------------------------------
# PowerShell ist oo (Object Orientiert)
# -------------------------------------

# rund Klammmer = Instanziierung

# DayOfYear ist eine Property des Objects
(Get-Date).DayOfWeek
(Get-Date).DayOfYear

# Methods
(Get-Date).AddDays(21)

$Weihnachten = Get-Date -Day 24 -Month 12 -Year 2023 -Hour 19 -Minute 00
$Today       = Get-Date

$TageBisWeihnachten  = ($Weihnachten - $Today).Days

Write-Host "Noch $TageBisWeihnachten Tage bis Weihnachten."



# Server Admin mit PowerShell
# -------------------------------

# Roles and Features
Get-WindowsFeature


# Member = Properties und Methods
 Get-WindowsFeature | Get-Member

 Get-WindowsFeature | Group-Object -Property installstate

 Get-WindowsFeature -Name web-server

 Get-Command -Noun WindowsFeature

 Install-WindowsFeature -Name web-server
 # oder
 Get-WindowsFeature -Name web-server | Install-WindowsFeature

 # Auf welchem Server bin ich?
 hostname
 $env:COMPUTERNAME



 # PowerShell Remoting
 ping SEA-DC1

 # wie ping (ICMP)
 Test-NetConnection -ComputerName sea-dc1

 # ist ein Port erreichbar?
 Test-NetConnection -ComputerName sea-dc1 -Port 80    # http - nein
 Test-NetConnection -ComputerName sea-dc1 -Port 53    # DNS - ja
 Test-NetConnection -ComputerName sea-dc1 -Port 5985  # PowerShell remote - ja

 Enter-PSSession -ComputerName sea-dc1
 hostname
 Get-WindowsFeature -Name web-server
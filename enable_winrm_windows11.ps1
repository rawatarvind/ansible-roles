Write-Host "Checking network profile..." -ForegroundColor Cyan

# Change Public network to Private
Get-NetConnectionProfile |
Where-Object { $_.NetworkCategory -eq "Public" } |
ForEach-Object {
    Write-Host "Changing network '$($_.Name)' to Private..." -ForegroundColor Yellow
    Set-NetConnectionProfile -InterfaceIndex $_.InterfaceIndex -NetworkCategory Private
}

Write-Host "Enabling WinRM service..." -ForegroundColor Cyan

# Enable WinRM
winrm quickconfig -q

# Configure WinRM for Ansible
Write-Host "Configuring WinRM authentication..." -ForegroundColor Cyan
winrm set winrm/config/service/auth '@{Basic="true"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'

# Ensure WinRM service is running
Set-Service WinRM -StartupType Automatic
Start-Service WinRM

# Enable Firewall rule
Write-Host "Enabling WinRM firewall rule..." -ForegroundColor Cyan
Enable-NetFirewallRule -Name "WINRM-HTTP-In-TCP"

Write-Host "WinRM setup completed successfully ✅" -ForegroundColor Green


#    How to Make a Connection Between Windows and Ansible

The main goal of this setup is to automate day-to-day administrative tasks on Windows systems. These tasks usually include:

1:- Installing and uninstalling applications**

2:- Creating and managing local users

3:- Configuring system settings

4:- Performing routine maintenance activities

Manually performing these tasks on multiple Windows machines is time-consuming and error-prone. To solve this problem, Ansible is one of the best automation tools available.

#    Why Use Ansible for Windows Automation?

Ansible allows administrators to:

 Automate Windows configuration without logging in manually

 Maintain consistency across multiple systems

 Reduce human errors

 Save time by running tasks from a single control node

With Ansible, we can install applications, configure users, and manage Windows systems centrally

#      How Ansible Connects to Windows

Unlike Linux systems, Ansible does not use SSH to connect to Windows. Instead, it uses WinRM (Windows Remote Management).

Key Components:

1:- Ansible Control Node (Linux system where Ansible is installed)

2:- Windows Target Machine (Windows 10 / Windows 11 / Windows Server)

3:- WinRM (Communication protocol between Ansible and Windows)

Steps to Achieve Windows–Ansible Connectivity



1. Enable WinRM on Windows

WinRM must be enabled and configured on the Windows machine so that Ansible can communicate with it.

This allows:

* Remote command execution

* Secure communication

* Authentication using local or domain users

2. Configure Windows Firewall and Network Profile

* WinRM requires the network profile to be Private or Domain

* Firewall rules must allow WinRM traffic (port 5985 for HTTP or 5986 for HTTPS)

# Enabling WinRM on Windows 11 (For Testing Purpose Only)

To establish a connection between Ansible and Windows 11, WinRM must be enabled on the Windows system.

 #### Important Note:
 This method is not recommended for production environments.
 It is intended only for testing and lab purposes, as it enables WinRM over HTTP (port 5985) without encryption.

The same port and protocol are referenced in the Ansible inventory file (win_inventory).

## Steps to Enable WinRM on Windows 11

1. Run PowerShell as Administrator

Log in to the Windows 11 system and open PowerShell with Administrator privileges.

2. Execute the WinRM Enable Script

Run the following PowerShell script:
   
    enable_winrm_windows11.ps1

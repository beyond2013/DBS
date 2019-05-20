# Installing MySQL on Microsoft Windows

**Note: Contents presented here are taken from MySQL 8.0 Reference Manual**  

## Important: 

1. MySQL 8.0 Server requires Microsoft Visual C++ 2015 Redistributable Package to run on Windows platforms.	
2. MySQL is available for Microsoft Windows 64-bit operating systems only.

## Installation:
1. Download and install [Microsoft Visual C++ 2015 Redistributable Package](https://www.microsoft.com/en-us/download/details.aspx?id=53840)
2. Download MySQL Installer(mysql-installer-community-8.0.15.0.msi) from (https://dev.mysql.com/downloads/installer/) and execute it.
3. Choose the Custom in Setup Type, and click Next.  
![](./fig/Step1.png)
4. From the list of **Available Products** expand **MySQL Servers**, and select **MySQL Server 8.0.15 - X64**  
use arrows to move selection to **Products/Features to be Installed**. 
Repeat the same for the following :  
Expand **Applications** select **MySQL Workbench 8.0.15 - X64**, and **MySQL Shell 8.0.15 - X64**  
Expand **Documentation** select **MySQL Documentation 8.0.15 - X86** and **Samples and Examples 8.0.15 - X86**  
When your selection matches the snapshot below. Click Next.  
![](./fig/Step2.png)
5. Click Execute button.  
![](./fig/Step3.png)
6. When the Installation completes click Next.  
![](./fig/Step4.png)
7. Now Product Configuration will start click Next.  
![](./fig/Step5.png)
8. Stay with the default **Standalone MySQL Server / Classic MySQL Replication**, click Next.  
![](./fig/Step6.png)
9. Keep the defaults in Type and Networking and click Next.  
![](./fig/Step7.png)
10. Stay with default Use Strong Password Encryption for Authentication (RECOMMENDED), and click Next.  
![](./fig/Step8.png)
11. Type MySQL Root Password and Repeat the same and click Next.  
![](./fig/Step9.png)
12. Stay with defaults with Windows Service and click Next.  
![](./fig/Step10.png)
13. Click Execute for applying configuration.  
![](./fig/Step11.png)
14. Click Finish.  
![](./fig/Step12.png)
15. After MySQL Server configuration completes Samples and Examples configuration will start, click Next.  
![](./fig/Step13.png)
16. Connect to the server by typing the Password and click Check, when the connection succeeds click Next.  
![](./fig/Step14.png)
17. Click Execute.  
![](./fig/Step15.png)
18. Click Finish.  
![](./fig/Step16.png)
19. After both configurations have completed click Cancel and upon confirmation select Yes.  
![](./fig/Step17.png)

## Post Installation Configuration

1. Control Panel
2. System
3. Advanced System Settings
4. Environment Variables
5. Under System Variables choose Path, and click Edit 
6. New 
7. C:\Program Files\MySQL\MySQL Server 8.0\bin
8. Click OK











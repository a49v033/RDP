----

### Table of Contents  
[Info](#0)  
[How To Use](#1)  
[Optional](#2)

----

<a name="0"/>

# Google Colaboratory RDP Server
This is an RDP Server to connect to the Google Colaboratory machine(?) via RDP to make it easier to use.
You can use it anytime as long as it isn't deprecated yet because of google itself. Thanks to <a href="https://github.com/alok676875/">alok676875<a/> for the original code.

<a name="1"/>

# How To Use
0. Log in to your google account (if you aren't yet).
1. Go to https://colab.research.google.com
2. Click File > new Notebook.
3. Copy this script in the terminal(?).
```
! wget https://raw.githubusercontent.com/Tiramitzu/RDP/main/RDP.sh &> /dev/null
! chmod +x RDP.sh
! ./RDP.sh
```
4. Click the Run cell button (Play emoji like thingy).
5. Input your username and password there<br />
5.1. Wait for the RDP Server installing.
6. Just follow the rest of it okay.
7. Go to https://remotedesktop.google.com/headless,<br />
7.1. Click Begin > Next > Athorize > Select your google account > Copy Debian Linux > Start Over, then close the tab,<br />
7.2. Paste the command that you've copied in the terminal(?) then press enter,<br />
7.3. Enter a PIN at least six digits and then enter the same PIN again.
8. Wait for `Package upgrade has completed` show up.
9. Go to https://remotedesktop.google.com/access,<br/>
9.1. Select your remote device(s).

<a name="2"/>

# Script To At Least Keep The Machine(?) Online For 12 Hours
```js
function ConnectButton(){
    console.log("Connect pushed"); 
    document.querySelector("#top-toolbar > colab-connect-button").shadowRoot.querySelector("#connect").click() 
}
setInterval(ConnectButton,60000);
```
To use it just open the developer tools by press `F12` or `Ctrl + Alt + I on your Keyboard and open the console, copy the script and paste it there then press enter.

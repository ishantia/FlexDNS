# FlexDNS

**FlexDNS** is a simple and lightweight Linux CLI tool to manage DNS settings on your active network connection (Wi-Fi or Ethernet). It allows you to quickly set custom DNS servers, restore automatic DNS, or even manually enter DNS addresses.

---

## Features

- Detects the currently active network connection (Wi-Fi or Ethernet).  
- Set default custom DNS (`Shecan DNS`).  
- Enter your own DNS addresses manually.  
- Restore automatic DNS configuration.  
- Simple interactive menu for easy usage.  
- Works on most Linux distributions using **NetworkManager**.

---

## Requirements

- Linux system with **NetworkManager** installed.  
- `nmcli` command-line tool (comes with NetworkManager).  
- User with `sudo` privileges to apply DNS changes.

---

## Installation

1. Clone the repository:

```bash
git clone https://github.com/ishantia/FlexDNS
```

2. Go into the project directory:
```bash
cd FlexDNS
```

3. Make the script executable:
```bash
chmod +x flex.sh
```

---

## Usage

Run the script:
```bash
./flex.sh
```
You will see an interactive menu:

```vbnet
---------------------------
Active connection: <your-network>
1) Set default custom DNS (An Iranian DNS)
2) Enter custom DNS manually
3) Restore automatic DNS
4) Exit
---------------------------
Select an option: 
```
- Option 1: Applies the default custom DNS.

- Option 2: Allows you to type your own DNS addresses (separated by spaces).

- Option 3: Restores DNS to automatic (DHCP).

- Option 4: Exit the program.

## Notes

The script only works if there is an active network connection.

Applies DNS changes immediately; no full network restart required.

Compatible with both Wi-Fi and Ethernet connections.

Designed for Linux distributions using NetworkManager (Ubuntu, Fedora, Arch, etc.).

## Contribution

Contributions are welcome! You can:

Add more network management options.

Improve DNS detection for edge cases.

Add support for multiple simultaneous connections.

Feel free to fork the repository, make changes, and submit a pull request.

## License

This project is released under the MIT License.
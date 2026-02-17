# FlexDNS

**FlexDNS** is a simple and lightweight Linux CLI tool to manage DNS settings on your active network connection (Wi-Fi or Ethernet). It allows you to quickly set custom DNS servers, restore automatic DNS, or even manually enter DNS addresses.

---

## Features

- Detects the currently active network connection (Wi-Fi or Ethernet).  
- Set default custom DNS (`178.22.122.100`, `185.51.200.2`).  
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

2. Go into the project directory:
```bash
cd FlexDNS

3. Make the script executable:
```bash
chmod +x dns.sh

---

## Usage

Run the script:
```bash
./dns-menu.sh

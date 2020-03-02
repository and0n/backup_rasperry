# backup_raspberry

This script will automate the steps for raspberry pi remote backup.

## Prerequisites

- Copy SSH key to raspberry pi
```
ssh-copy-id -i ~/.ssh/mykey USER@IP-ADDRESS-RPI
```
- Create local folder /backup
```
sudo mkdir /backup
```

## Quick start

Clone the Github repository and navigate to folder backup_rasperry:
```
git clone https://github.com/donkodimov/backup_rasbperry.git
cd backup_rasperry
```

Make the script executable:
```
sudo chmod +x backup_raspberry.sh
```

Run the script:
```
./backup_raspberry.sh
```
## License

The contents of this repository are covered under the [GNU General Public License](LICENSE).

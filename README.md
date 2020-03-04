# backup_raspberry

This script will automate the steps for raspberry pi remote backup. 

## Prerequisites

- Copy SSH key to raspberry pi
```
ssh-copy-id -i ~/.ssh/mykey USER@IP-ADDRESS-RPI
```
- Create local folder /backup on the backup machine 
```
sudo mkdir /backup
```
- Find the block device name of the SD-card on the remote raspery pi:
```
ssh USER@IP-ADDRESSS_RPI
lsblk
```
- Make sure you have enough free space to copy the image of the SD-card
## Quick start

1. Clone the Github repository to your backup machine and navigate to folder backup_rasperry:
```
git clone https://github.com/donkodimov/backup_rasbperry.git
cd backup_rasperry
```
2. Replace `USER@IP-ADDRESS-RPI` and `/DEV/SDX` in `backup_raspi.sh` to match your environment.

3. Make the script executable:
```
sudo chmod +x backup_raspi.sh
```

4. Run the script from the backup machine:
```
./backup_raspi.sh
```
## License

The contents of this repository are covered under the [GNU General Public License](LICENSE).

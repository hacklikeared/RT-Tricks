### Use a Ubuntu machine with at least 50 GB of storage

### Installation on Ubuntu Device
sudo apt-get install git
git clone https://github.com/its-a-feature/Mythic
cd Mythic/
sudo ./install_docker_ubuntu.sh 
sudo ./mythic-cli start
sudo ./mythic-cli install github https://github.com/MythicC2Profiles/http
### Note: Athena requires an internet connection at start-up and restart
sudo ./mythic-cli install github https://github.com/MythicAgents/Athena
sudo ./mythic-cli install github https://github.com/MythicAgents/Apollo
sudo ./mythic-cli install github https://github.com/MythicAgents/tetanus
sudo ./mythic-cli install github https://github.com/MythicAgents/scarecrow_wrapper
sudo service docker restart
sudo ./mythic-cli restart

### Read USER PASS
cat .env | grep 'MYTHIC_ADMIN_'

### You can now login over "https" on port 7443 with the above credentails
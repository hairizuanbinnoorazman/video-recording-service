# Install vim text edit
# sudo apt-get update
# sudo apt-get install -y vim

##############################
# Installation Steps
##############################

# Install Google Chrome Stable
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install -y google-chrome-stable

# Install Chrome driver
sudo apt-get install -y unzip
wget https://chromedriver.storage.googleapis.com/2.31/chromedriver_linux64.zip
unzip chromedriver_linux64.zip

# Install python installer
sudo apt-get install -y python-pip

# Install avconv tool kit
sudo apt-get install -y libav-tools pulseaudio xvfb

# Install python packages
pip install selenium requests

##############################
# Setting up of Video Source
##############################

# Start xvfb virtual screen
Xvfb :0 -screen 0 1024x768x24 > /dev/null &

# Ensure that this is replicated into script
export DISPLAY=:0.0 

##############################
# Setting up of Audio Source
##############################

# Start the pulseaudio server
pulseaudio -D --exit-idle-time=-1

# Load the virtual sink and set it as default
pacmd load-module module-virtual-sink sink_name=v1
pacmd set-default-sink v1

# set the monitor of v1 sink to be the default source
pacmd set-default-source v1.monitor

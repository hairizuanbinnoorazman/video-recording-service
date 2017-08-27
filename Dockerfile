FROM python:3s

# Install chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get update
RUN apt-get install -y google-chrome-stable

# Install chromedriver
RUN apt-get install -y unzip
RUN wget https://chromedriver.storage.googleapis.com/2.31/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip

# Install Debian avconv command line toolkit
RUN apt-get update
RUN apt-get install -y libav-tools xvfb vim 

# Issues - Pulseaudio does not work on containers
# Need to use the dbus system which is not made available in docker containers.
RUN apt-get install -y pulseaudio consolekit

# Install python packages
RUN pip install selenium requests

FROM codercom/code-server:latest
RUN sudo chown -R root:root /var/lib/dpkg
RUN sudo chmod -R 755 /var/lib/dpkg
RUN sudo chmod 644 /var/lib/dpkg/lock
RUN sudo chmod 644 /var/lib/dpkg/lock-frontend
RUN sudo rm -rf /var/cache/apt/*
RUN sudo rm -rf /var/lib/apt/lists/*
RUN sudo apt-get update
RUN sudo apt install -y python3 python3-pip
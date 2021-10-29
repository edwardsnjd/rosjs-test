FROM ros:melodic

RUN apt-get update && apt-get upgrade --yes

WORKDIR /home/rosjs

COPY . .
RUN ./install.sh

RUN echo "source /opt/ros/melodic/setup.bash" > /root/.bashrc

EXPOSE 9090

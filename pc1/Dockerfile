FROM ubuntu:latest

RUN apt update

RUN apt install dnsutils -y
RUN apt install iputils-ping -y
RUN apt install links -y
RUN apt install nano
RUN adduser toto
RUN echo "toto:toto" | chpasswd
RUN apt update
RUN apt install mutt -y

COPY .muttrc /home/toto

CMD tail -f /dev/null
FROM instrumentisto/nmap
ADD ip-list /tmp/ip-list
WORKDIR /usr/bin
RUN ./nmap -sV -F -T20 -iL /tmp/ip-list -oG /tmp/nmap-$(date +%Y%m%d-%H%M%S).txt
RUN cat nmap-*.txt

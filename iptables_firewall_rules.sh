# IPTables script

#Accept
iptables -P INPUT ACCEPT

#Flush the iptables rules to start clean
iptables -F

#Accept all local traffic
iptables -A INPUT -i lo -j ACCEPT

#Keep established and related traffic flowing
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

#SSH, HTTP, HTTPS traffic
iptables -A INPUT -p tcp --match multiport --dports 22,443,80 -j ACCEPT


#DROP everything else
iptables -P INPUT DROP
iptables -P FORWARD DROP

#All output is accepted here. 
iptables -P OUTPUT ACCEPT

#List out verbose iptables rules
iptables -L -v



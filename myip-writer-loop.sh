:loop 
  if ip=$(curl -s ifconfig.me/ip); then echo "$ip" >> whatismyip.txt; else echo "$(date): Failed to fetch external IP." >> error.log; fi
  sleep 5
goto loop
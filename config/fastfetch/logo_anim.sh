
#!/bin/bash
# print a quick 3‑frame animation, then exit

echo -ne "\e[31m(>'-')>     "
sleep 0.2
echo -ne "\r\e[32m <('-'<)    "
sleep 0.2
echo -ne "\r\e[34m (>'-')>     "
sleep 0.2
echo -ne "\r"           # return cursor to start

# Then exit immediately
exit 0


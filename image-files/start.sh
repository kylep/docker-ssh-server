#!/bin/bash

if [[ "$PASSWORD" == "" ]]; then
  echo "ERROR: \$PASSWORD env var required"
  exit 1
fi

SSH_PORT=8022
if [[ "$PORT" == "" ]]; then
  SSH_PORT=$PORT
fi

echo "root:$PASSWORD" | chpasswd
echo "Starting SSH server on port $SSH_PORT"
/usr/sbin/sshd -p $SSH_PORT -E /var/log/ssh/ssh.log
tail -f /var/log/ssh/ssh.log

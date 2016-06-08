#!/bin/bash
SERVER=smtp.mydomain.com
PORT=25
(
  sleep 2
  echo "HELO "$SERVER
  sleep 2
  echo "auth login"
  sleep 2
  # User encoded to a Base64 string
  echo "anVsaWFuZ2RldkBnbWFpbC5jb20="
  sleep 2
  # Password encoded to a Base64 string
  echo "c2VuZG1haWxiYXNo"
  sleep 2
  echo "MAIL FROM:user@mydomain.com"
  sleep 2
  echo "RCPT TO:rcptuser@rcptdomain.com"
  sleep 2
  echo "DATA"
  sleep 1
  echo "SUBJECT:Hello World!"
  sleep 1
  echo "FROM:My name"
  sleep 1
  echo ""
  sleep 1
  echo ""
  sleep 1
  echo "Message body"
  sleep 1
  echo ""
  sleep 1
  echo "."
  sleep 2
  echo "QUIT"
) | telnet $SERVER $PORT

# sendmailbash
Bash code to send emails from an external mail server with authentication via telnet.

You need to send emails from bash file (.sh), but your linux server hasn't installed any mail server (or you don't want to use it). So, a good solution is to send your emails via telnet from an external mail server (like gmail or your own domain).

The code is so simple. The only caution you must have is **encode your user and your password to a Base64 string**. This web can help you: [Online Base64 decoder and encoder](http://www.motobit.com/util/base64-decoder-encoder.asp)

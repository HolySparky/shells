# Please change PROXY_URL and PROXY_PORT to your own proxy setting
PROXY_URL = 'myproxy.com'
PROXY_PORT = 8080

echo 'http_proxy="http://$PROXY_URL:$PROXY_PORT/"
https_proxy="http://$PROXY_URL:$PROXY_PORT/"
ftp_proxy="http://$PROXY_URL:$PROXY_PORT/"
HTTP_PROXY="http://$PROXY_URL:$PROXY_PORT/"
HTTPS_PROXY="http://$PROXY_URL:$PROXY_PORT/"
FTP_PROXY="http://$PROXY_URL:$PROXY_PORT/"'>> etc/environment
git config --global http.proxy http://$PROXY_URL:$PROXY_PORT/
export http_proxy="http://$PROXY_URL:$PROXY_PORT/"
export HTTP_PROXY="http://$PROXY_URL:$PROXY_PORT/"

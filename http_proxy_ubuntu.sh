echo 'http_proxy="http://jackfan.com:4000/"
https_proxy="http://jackfan.com:4000/"
ftp_proxy="http://jackfan.com:4000/"
HTTP_PROXY="http://jackfan.com:4000/"
HTTPS_PROXY="http://jackfan.com:4000/"
FTP_PROXY="http://jackfan.com:4000/"'>> etc/environment
git config --global http.proxy http://jackfan.com:4000/
export http_proxy="http://jackfan.com:4000/"
export HTTP_PROXY="http://jackfan.com:4000/"

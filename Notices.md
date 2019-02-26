# Troubleshooting

## Canot using gem install

With the old Mac on Capitain OS you canot using gem, because your openssl version is too old. And you canot compile ruby for a newer openssl version because this os version is not supported by ruby.

```test```

```bash

sudo gem install pry -n/usr/local/bin
# SSL_connect returned=1 errno=0 state=SSLv2/v3 read server hello A: tlsv1 alert protocol version

````

check the connection:

```bash
ruby -ropen-uri -e 'eval open("https://git.io/vQhWq").read'

## No rvm
sudo curl -L https://get.rvm.io | bash -s stable --ruby
```

tmux terminal multiplexer
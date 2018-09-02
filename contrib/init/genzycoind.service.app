[Unit]
Description=Genzy Coin's distributed currency daemon
After=network.target

[Service]
User=genzycoin
Group=genzycoin

Type=forking
PIDFile=/var/lib/genzycoind/genzycoind.pid

ExecStart=/usr/bin/genzycoind -daemon -pid=/var/lib/genzycoind/genzycoind.pid \
          -conf=/etc/genzycoin/genzycoin.conf -datadir=/var/lib/genzycoind

ExecStop=-/usr/bin/genzycoin-cli -conf=/etc/genzycoin/genzycoin.conf \
         -datadir=/var/lib/genzycoind stop

Restart=always
PrivateTmp=true
TimeoutStopSec=60s
TimeoutStartSec=2s
StartLimitInterval=120s
StartLimitBurst=5

[Install]
WantedBy=multi-user.target

sudo mkdir -p ./factorio

sudo chown 845:845 ./factorio

sudo docker run -d \
  -p 34197:34197/udp \
  -p 27015:27015/tcp \
  -v ./factorio:/factorio \
  --name factorio \
  --restart=unless-stopped \
  factoriotools/factorio

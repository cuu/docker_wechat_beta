# Run wechat-beta 

Run Linux wechat(native) in [x11docker](https://github.com/mviereck/x11docker) with fcitx input method

share clipboard

## How to build
```
docker build .
```

## Depends

I use xpra,so on the host machine, try install xpra
```
sudo apt install -y xpra
```

## How to run

```
x11docker --xpra -m --share ~/someplace/ -I --clipboard=altv --lang=en_US.UTF-8 [hashid form docker build]
```

after first running,when wechat window appears

use 
```
docker exec -it <container_name_or_id> /bin/bash
```
to run `fcitx5-configtool` to add input methods,like pinyin,then apply it

then we can use fcitx5 

fcitx5 needs to be configed everytime after docker build



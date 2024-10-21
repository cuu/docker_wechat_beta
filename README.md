# Run wechat-beta 

Run wechat-beta in [x11docker](https://github.com/mviereck/x11docker) with fcitx input method

share clipboard

## How to build
```
docker build .
```

## How to run

```
x11docker -m --share ~/someplace/ -I -c --lang=en_US.UTF-8 [hashid form docker build]
```

after first running,when wechat window appears

use 
```
docker exec -it <container_name_or_id> /bin/bash
```
to run `fcitx5-configtool` to add input methods,like pinyin,then apply it

then we can use fcitx5 



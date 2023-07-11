# Shared-Font
A Nintendo 3DS Shared Font

适合简体中文汉化游戏使用的混合字库


# 21px
- 字库规格：黑体字形，21px

- 字符范围：日版字库的全部字符 + 简中字库的全部字符 + 部分朝鲜语字符

- 适用环境：已集成在「[任天堂3DS系统中文化补丁](https://www.tekqart.com/thread-278107-1-1.html)」

- 字库缺陷：使用日版字库设计排版的软件、游戏，文字显示可以能会出问题

# 24px
- 字库规格：同日版字库，黑体字形，24px

- 字符范围：常用汉字

- 适用环境：CTRPF插件正常显示

- 字库缺陷：出现非常用汉字及符号不能正常显示，缺失的字符以「■？」显示


# citra使用shared_font.bin的方法

citra自带开源字库，需要添加System Archives以禁止使用开源字库，并互换中日字库使其调用shared_font.bin

- 打开目录 .\user\nand\00000000000000000000000000000000\title\0004009b\
- 将日文字库 00014002 与 中文字库 00014102 互换文件夹名或互换文件夹内的文件（目的是让模拟器读取到不完整的std字库而去使用shared font，只移除00014002会让模拟器默认使用开源字体。）
- 把 shared_font.bin 置放在目录 .\user\sysdata\
- 运行使用系统字库的软件（mii maker等）或游戏（符文工房4、第七龙神3等）查看实际效果

```
"System Archives"
└── nand
    └─── 00000000000000000000000000000000
        └── title
            ├── 0004009b
            │   ├── 00010202
            │   │   └── content
            │   │       └── 00000000.app.romfs
            │   ├── 00010402
            │   │   └── content
            │   │       └── 00000000.app.romfs
            │   ├── 00014002
            │   │   └── content
            │   │       └── 00000000.app.romfs
            │   ├── 00014102
            │   │   └── content
            │   │       └── 00000000.app.romfs
            │   ├── 00014202
            │   │   └── content
            │   │       └── 00000000.app.romfs
            │   └── 00014302
            │       └── content
            │           └── 00000000.app.romfs
            └── 000400db
                └── 00010302
                    └── content
                        └── 00000000.app.romfs
```
```
"User directory"
├── config
├── nand
│   ├── 00000000000000000000000000000000 (optional)
│   └── data
│       ├── sysdata
│       └── extdata
├── sdmc
│   └── Nintendo 3DS
│       ├── 00000000000000000000000000000000
│       |   └── 00000000000000000000000000000000
│       |       ├── title
│       |       └── extdata
│       └── Private
└── sysdata (optional)
    └── aes_keys.txt (optional)
    └── seeddb.bin (optional)
    └── shared_font.bin (optional)
```

# 资料参考
https://www.3dbrew.org/wiki/System_Font

https://github.com/dnasdw/3dsfont




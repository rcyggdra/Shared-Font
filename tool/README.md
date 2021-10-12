# shared_font.bin

3DS开机时会将字库转成shared_font.bin加载到内存中供系统使用，citra暂时无法实现

资料参考:https://www.3dbrew.org/wiki/System_Font

# bcfnt2sharedfont

shared_font.bin仅适合于3DS模拟器citra使用

关于生成bcfnt，请参考https://github.com/dnasdw/3dsfont

把*.bcfnt的字体文件置于bat的同级目录里，然后拖放到bat文件会自动生成shared_font.bin

# citra使用shared_font.bin的方法

citra自带开源字库，需要添加System Archives以禁止使用开源字库，并互换中日字库使其调用shared_font.bin

- 打开目录 .\user\nand\00000000000000000000000000000000\title\0004009b\
- 将日文字库 00014002 与 中文字库 00014102 互换文件夹名 或 互换文件夹内的文件
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

# bcfnt2sharedfont

shared_font.bin仅适合于3DS模拟器 citra 使用

关于创建bcfnt，请参考https://github.com/dnasdw/3dsfont

请把bcfnt格式的字体文件置于bat的同级目录里，然后拖放到bat文件会自动生成shared_font.bin

# citra 使用shared_font.bin的方法

citra 自带开源字库，在没有字库的情况下它会自行启用，所以我们需要添加系统字库

citra 在添加系统字库后仍然无法自制字体的shared_font.bin，这时候需要给系统造成“缺字库”的假象，让它调用shared_font.bin

- 打开目录 .\user\nand\00000000000000000000000000000000\title\0004009b\
- 将日文字库 00014002 与 中文字库 00014102 互换文件夹名 或 互换文件夹内的文件
- 把 shared_font.bin 置放在目录 .\user\sysdata\
- 运行使用系统的软件（mii maker等）或游戏（符文工房4、机战BX\UX等）查看实际效果

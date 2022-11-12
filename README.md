# 上海工程技术大学硕士学位论文latex模板
这是我根据学校研究生处给的docx硕士学位论文模板撰写的latex学位论文模板，欢迎大家使用。硕士学位论文模板当中包含有以下三个部分：
+ 开题报告模板
+ 学位论文模板
+ 答辩PPT模板

其中答辩PPT模板我分为三个阶段的模板，分别表示开题答辩、中期答辩和最终答辩，细微调整了一些模板，以供大家参考和使用。

如果在编译过程中遇到什么问题，可以在项目提交`issue`，`SUES-Thesis` 目前仅支持 `XeTeX`引擎，字符编码仅支持 UTF-8。

## 使用方法

项目包含有三个文件夹，分别是开题报告（`report`）、答辩ppt（`ppt`）和论文模板（`paper`），其中ppt模板分为开题答辩、中期答辩、结题答辩ppt。

### Linux/FreeBSD/MacOS用户使用用法
推荐使用`Makefile`对latex模板进行编译，具体提供了以下几条可用的命令：
```bash
make all                # 编译生成paper.pdf
make clean              # 删除编译所产生的中间文件
make cleanall           # 删除paper.pdf 和所有中间文件
make wordcount          # 论文字数统计
```

### Windows用户使用方法
对于Windows用户，这里也提供了编译的脚本文件`Compile.bat`。可以直接双击编译也可以在命令行进行编译
```bat
.\Compile.bat all    :: 编译生成paper.pdf
.\Compile.bat clean    :: 编译生成paper.pdf
.\Compile.bat cleanall    :: 编译生成paper.pdf
.\Compile.bat wordcount    :: 编译生成paper.pdf
```
更多模板使用方法，详细参考

### 下载模板
普通用户可以直接`clone`或者下载`master.zip`.
```bash
git clone https://github.com/mobtgzhang/sues-thsis.git
```

## overleaf 使用方法

点击 [OverLeaf SUES模板链接]()即可。
## 支持作者
本模板是本人按照学校提供的word模板修改而成，希望大家能在学习latex中进步，可以支持一下作者！
<center class="half">
    <img src="imgs/alipay.jpg" width="300"/>
    <img src="imgs/wechat.jpg" width="300"/>
</center>

## 参考

+ [GBT7714-2005标准下的BibTeX样式](https://github.com/Haixing-Hu/GBT7714-2005-BibTeX-Style)
+ [上海交通大学latex模板](https://github.com/sjtug/SJTUThesis)

%依赖的Latex版本
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{suesppt}[2022/11/15 v3.1 update  https://github.com/mobtgzhang/sues-thsis]
%使用xelex进行编译
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{suesppt}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi
% 初始化latex代码
\newif\if@suesppt@bwprint\@suesppt@bwprintfalse
\newif\if@suesppt@preface\@suesppt@prefacetrue

\DeclareOption{colorprint}{\@suesppt@bwprintfalse}
\DeclareOption{bwprint}{\@suesppt@bwprinttrue}
\DeclareOption{withoutpreface}{\@suesppt@prefacefalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
 
\ExecuteOptions{colorprint}
\ProcessOptions\relax
% ---------------------------------------------------------------
\newcommand{\yihao}{\fontsize{26pt}{39pt}\selectfont}
\newcommand{\xiaoyi}{\fontsize{24pt}{36pt}\selectfont}   
\newcommand{\erhao}{\fontsize{22pt}{33pt}\selectfont}          
\newcommand{\xiaoer}{\fontsize{18pt}{27pt}\selectfont}          
\newcommand{\sanhao}{\fontsize{16pt}{24pt}\selectfont}        
\newcommand{\xiaosan}{\fontsize{15pt}{22.5pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{21pt}\selectfont}            
\newcommand{\xiaosi}{\fontsize{12pt}{18pt}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{15.75pt}\selectfont}
\newcommand{\xiaowu}{\fontsize{9pt}{13.5pt}\selectfont}    
\newcommand{\liuhao}{\fontsize{7.5pt}{11.25pt}\selectfont}

\LoadClass[UTF8,xcolor=dvipsnames]{beamer}
\RequirePackage{graphicx,epstopdf}
\RequirePackage{fancyhdr}
\RequirePackage{cite}
\RequirePackage{ctex}

% -----------------------------------------------------------------
\RequirePackage{setspace}
\RequirePackage{fontspec}
%设置英文字体 Times New Roman
\setmainfont{Times New Roman}
\setmonofont{Courier New}
\setsansfont{Arial}
 % 设置字体
% 设置中文字体 宋体
% 设置数字、英文字体加粗
% 注意这里在MacOS上SimSun 会出现错误，需要改成STSongti-SC-Regular字体
\setCJKmainfont[AutoFakeBold = {2.15},ItalicFont={KaiTi}]{SimSun}

%\RequirePackage[T1]{fontenc}
% 每行缩进两个汉字
\setlength\parindent{2em}
% 设置段与段之间的垂直距离 \parskip默认橡皮长度是0pt plus 1pt
\setlength{\parskip}{0pt}
%-----------------------------------------



\RequirePackage{graphicx, epstopdf}
\RequirePackage{amsmath}
\RequirePackage{array}
\RequirePackage{epsfig}
\RequirePackage{amssymb}
\RequirePackage{subfigure}
\RequirePackage[ruled, lined,linesnumbered]{algorithm2e}
\RequirePackage{algorithmic}
\RequirePackage{tabularx}
\RequirePackage{rotating, boxedminipage}
\RequirePackage{rotating,multirow}
\RequirePackage{float}
\RequirePackage{wrapfig}
\RequirePackage{algorithm2e}
\usetheme{Boadilla}
\usecolortheme[named=Blue]{structure}
\setbeamertemplate{items}[square]
\setbeamertemplate{caption}[numbered]
\setbeamertemplate{caption}[small]
\RequirePackage[absolute,overlay]{textpos}
\newenvironment{reference}[2]{%
  \begin{textblock*}{\textwidth}(#1,#2)
     \bgroup\fontsize{6pt}{\baselineskip}\selectfont\color[RGB]{0,112,192}}{\egroup\end{textblock*}}

%-----------------------------------------
% 设置链接引用格式
\RequirePackage{url,hyperref}
% URL换行
\def\UrlBreaks{\do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J
\do\K\do\L\do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V
\do\W\do\X\do\Y\do\Z\do\[\do\\\do\]\do\^\do\_\do\`\do\a\do\b
\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m\do\n
\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z
\do\.\do\@\do\\\do\/\do\!\do\_\do\ \do\;\do\>\do\]\do\)\do\,
\do\?\do\'\do+\do\=\do\#}
\def\UrlAlphabet{%
      \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j%
      \do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t%
      \do\u\do\v\do\w\do\x\do\y\do\z\do\A\do\B\do\C\do\D%
      \do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M\do\N%
      \do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X%
      \do\Y\do\Z}
\def\UrlDigits{\do\1\do\2\do\3\do\4\do\5\do\6\do\7\do\8\do\9\do\0}
\hypersetup{
    colorlinks=true,
    linkcolor=blue
}
%-----------------------------------------




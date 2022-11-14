%依赖的Latex版本
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{suesreport}[2022/11/11 v3.0 update  https://github.com/mobtgzhang/sues-thsis]
%使用xelex进行编译
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{suesreport}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi
% 初始化latex代码
\newif\if@suesreport@bwprint\@suesreport@bwprintfalse
\newif\if@suesreport@preface\@suesreport@prefacetrue
\LoadClass[UTF8,a4paper,cs4size,zihao=5,linespread=1.25,space=auto]{ctexart}
% 正文内容要求：宋体，五号，1.25倍行间距，首行缩进2字符，5000字左右
% -----------------------------------------------------------------
% 定义字号大小
%设置字号

\RequirePackage{ctexsize,type1cm}
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
% -----------------------------------------------------------------
% 设置页边距
% 页面设置装订线留1厘米，位置在左边，页边距左右均为2厘米。
\RequirePackage{geometry}
\geometry{
    a4paper,
    top=3cm,
    bottom=2.5cm,
    left=3cm,
    right=2cm
}
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
% 设置章节中列表
\RequirePackage{enumitem}
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
%------------------------------------------------------
% 设置文章格式
% 小节标题，黑体，小四号，左对齐
% 1.图：图题字体为五号楷体。引用图应在图题右上角标出文献来源。
% 图号按顺序全文通排，如图1，图2等。如果图中含有几个不同部分，应将分图号标注在分图的左上角，并在图题下列出各部分内容。
% 绘图必须工整、清晰、规范。其中机械零件图按机械制图规格要求；示意图应能清楚反映图示内容；照片应在右下角给出放大标尺；实验结果曲线图应制成方框图。
% 2.表格：表格按顺序全文通排，如表1，表2等。表应有标题，字体为五号楷体，表内必须按规定的符号标注单位。
% 3.公式：公式书写应在文中另起一行。公式后应注明序号，该序号按顺序全文通排。
\ctexset {
    contentsname={目\quad 录},
    listfigurename={插图},
    listtablename={表格}, 
    figurename={图},
    tablename={表},
    bibname={参考文献},
    appendixname={附\quad 录},
    section={
        format={\heiti\xiaosi},
    },
    subsection={
        format={\heiti\xiaosi},
    },
    subsubsection={
        format={\heiti\xiaosi},
    }
}
%---------------------------------
% 使用数学公式
\RequirePackage{mathtools,amsmath,amsfonts,amssymb,amsthm,bm,mathrsfs}
% 表格
\RequirePackage{tabularx,array,caption}
%% 长表格
\RequirePackage{longtable}
%% booktabs 提供了\toprule 等命令.三线表
\RequirePackage{booktabs}
\RequirePackage{makecell}                 % 三线表-竖线
% 支持跨行和跨列
\RequirePackage{multirow}
\RequirePackage{multicol}
%% 插入图
\RequirePackage{graphicx}

%% 如果插入的图片没有指定扩展名，那么依次搜索下面的扩展名所对应的文件
\DeclareGraphicsExtensions{.pdf,.eps,.png,.jpg,.jpeg}
\graphicspath{{figures/}}

%% 并列子图
\RequirePackage{subfigure}
%---------------------------------
% 使用tikz进行画图
\RequirePackage{tikz}
% pgfplots画图处理
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.18}
%------------------------------------------------------
% 设置页眉页脚
%% 设置章节前的页码格式
\RequirePackage[pagestyles]{titlesec}
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{\songti\xiaowu \thepage }
}
%------------------------------------------------------
% 载入参考文献宏包，设置引用格式
\RequirePackage{natbib}
\setcitestyle{square,super}
%------------------------------------------------------
% 设置代码环境
\RequirePackage{listings,color}
\lstnewenvironment{Matlab}[1]{
\lstset{language=matlab,               % choose the language of the code
  xleftmargin=20pt,
  xrightmargin=20pt,
  frame=tlbr,framesep=4pt,framerule=0.5pt, % sets the frame style
  %frame=shadowbox,rulesepcolor=\color{red!20!green!20!blue!20},
  basicstyle=\small\fontspec{Courier New},
  keywordstyle={\color{mKeyword}},     % sets color for keywords
  stringstyle={\color{mString}},       % sets color for strings
  commentstyle={\color{mComment}},     % sets color for comments
  backgroundcolor=\color{gray!5},%\color{pBackground}, % choose the background color
  rulecolor=\color{gray!50},
  title=#1,                            % \lstname show the filename of files
  keywords={break,case,catch,classdef,continue,else,elseif,end,for,
  function,global,if,otherwise,parfor,persistent,return,spmd,switch,try,while},
  showspaces=false,                    % show spaces adding particular underscores
  showstringspaces=false,              % underline spaces within strings
  showtabs=false,                      % show tabs within strings adding particular underscores
  tabsize=4,                           % sets default tabsize to 2 spaces
  captionpos=t,                        % sets the caption-position to bottom
  breaklines=true,                     % sets automatic line breaking
}}{}

\lstnewenvironment{Python}[1]{
\lstset{language=python,               % choose the language of the code
  xleftmargin=20pt,
  xrightmargin=20pt,
  frame=single,framesep=4pt,framerule=0.5pt, % sets the frame style
  %frame=shadowbox,rulesepcolor=\color{red!20!green!20!blue!20},
  basicstyle=\small\ttfamily,          % sets font style for the code
  %basicstyle=\footnotesize\fontspec{Consolas},
  keywordstyle=\color{pKeyword},       % sets color for keywords
  stringstyle=\color{pString},         % sets color for strings
  commentstyle=\color{pComment},       % sets color for comments
  backgroundcolor=\color{gray!5},%\color{pBackground}, % choose the background color
  rulecolor=\color{gray!50},
  title=#1,                            % \lstnames how the filename of files
  emph={format_string,eff_ana_bf,permute,eff_ana_btr},
  emphstyle=\color{pIdentifier}
  showspaces=false,                    % show spaces adding particular underscores
  showstringspaces=false,              % underline spaces within strings
  showtabs=false,                      % show tabs within strings adding particular underscores
  tabsize=4,                           % sets default tabsize to 2 spaces
  captionpos=t,                        % sets the caption-position to bottom
  breaklines=true,                     % sets automatic line breaking
}}{}

%------------------------------------------------------------
%% 定义摘要环境
\renewenvironment{abstract}{%
    \if@twocolumn
        \section*{\abstractname}%
    \else
        \begin{center}%
            {\sanhao\heiti{摘 \qquad 要:}\vspace{\z@}}%
            
            \wuhao\qquad
        \end{center}%
        \quotation
    \fi}
  {\if@twocolumn\else\endquotation\newpage\null\fi}

%定义标签的默认值
\def\suesreport@value@facultyname{电子电气工程学院}
\def\suesreport@value@subjectname{学~~科}
\def\suesreport@value@classnumber{学~~号}
\def\suesreport@value@studentname{学生姓名}
\def\suesreport@value@supervisor{导师姓名}
\def\suesreport@value@datetime{\today}
\def\suesreport@value@contenttitle{开题论文题目}
\def\suesreport@value@keywords{关键词1，关键词2，关键词3}

%定义用户填写上述标签对应值的命令,需要用户在主文档自行调用
\newcommand\facultyname[1]{\def\suesreport@value@facultyname{#1}}
\newcommand\classnumber[1]{\def\suesreport@value@classnumber{#1}}
\newcommand\studentname[1]{\def\suesreport@value@studentname{#1}}
\newcommand\subjectname[1]{\def\suesreport@value@subjectname{#1}}
\newcommand\supervisor[1]{\def\suesreport@value@supervisor{#1}}
\newcommand\datetime[1]{\def\suesreport@value@datetime{#1}}
\newcommand\contenttitle[1]{\def\suesreport@value@contenttitle{#1}}

%------------------------------------------------
% 设置关键词
% 宋体，五号，关键词数量4-6个，用逗号分隔，末尾不打标点符号
\newcommand\keywords[1]{
    \renewcommand{\suesreport@value@keywords}{#1}
    
    \wuhao\qquad

    {\noindent\sihao\heiti{关键词：}}~{\songti\wuhao\suesreport@value@keywords}
}

%% 自定义论文的封面
\newcommand{\makecover}{
	\thispagestyle{empty}
	\begin{center}
        \begin{figure*}
            \centering
            \includegraphics[height=1.46cm,width=10.77cm]{logo.png}
        \end{figure*}
        
        \xiaoyi\qquad
        
        \begin{center}
            \linespread{1.0}
            \heiti\xiaoyi\bfseries{
            硕士研究生学位论文\\
                开题报告
            }
        \end{center}

        \xiaoyi\qquad

        \xiaoyi\qquad

        \begin{center}
            \heiti\bfseries\xiaoer{题目：} \heiti\sanhao\bfseries{\suesreport@value@contenttitle}
        \end{center}

        \erhao\qquad

        \xiaoyi\qquad

        \xiaoyi\qquad

        \begin{table}[hbpt]
            \centering
            \linespread{1.2}
            %仿宋CB2312，四号，加粗
            \fangsong\sihao\bfseries{
                \begin{tabular}{p{3.28cm}<{\centering}p{5.86cm}<{\centering}}
                
                    学\qquad 院： & \suesreport@value@facultyname\\
                    学\qquad 科： & \suesreport@value@subjectname\\
                    学\qquad 号： & \suesreport@value@classnumber\\
                    姓\qquad 名： & \suesreport@value@studentname\\
                    导\qquad 师： & \suesreport@value@supervisor\\
                    日\qquad 期： & \suesreport@value@datetime
                \end{tabular}
            }
            
            
        \end{table}

        \sihao

        \begin{center}
            \songti\sihao\bfseries{研~究~生~处~制}
        \end{center}
    \end{center}
    \newpage
}

% --------------------------------------
% 载入参考文献宏包，设置引用格式
\RequirePackage{natbib}
\setcitestyle{square,super}

\endinput


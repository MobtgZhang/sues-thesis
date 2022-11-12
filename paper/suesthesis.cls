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
\LoadClass[UTF8,a4paper,cs4size,zihao=-4,linespread=1.5,space=auto]{ctexbook}
% 正文中文为宋体，非中文为Times New Roman字体，小四，1.5倍行间距，首行缩进2字符。
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

\RequirePackage{fontspec}
%设置英文字体 Times New Roman
\setmainfont{Times New Roman}
\setmonofont{Courier New}
\setsansfont{Arial}
 % 设置字体

% 设置中文字体 宋体
% 设置数字、英文字体加粗
\setCJKmainfont[AutoFakeBold = {2.15}]{SimSun}
\setCJKsansfont{SimSun}
\setCJKmonofont{SimSun}
% 每行缩进两个汉字
\setlength\parindent{2em}
% 页面设置装订线留1厘米，位置在左边。页边距上下分别为3厘米、2.5厘米，左右分别为2厘米、2.5厘米。本模板已按要求设置好页面。
% 设置页边距
\RequirePackage{geometry}
\geometry{
    a4paper,
    top=3cm,
    bottom=2.5cm,
    left=3cm,
    right=2.5cm
}
% 采用80克A4规格纸输出，从中文摘要页开始双面打印。
% -----------------------------------------------------------------

% 设置页眉页脚
%% 设置章节前的页码格式
\RequirePackage[pagestyles]{titlesec}
\RequirePackage{fancyhdr}
\newpagestyle{AbstractStyle}{
  \sethead{}{}{}
  \setfoot{}{\Roman{page}}{}
}
%重新设置plain
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{\songti\xiaowu 第 \thepage 页}
    \fancyhead[L]{\songti\xiaowu 上海工程技术大学硕士学位论文}
    \fancyhead[R]{\songti\xiaowu 第 \zhnum{chapter} 章 \quad }
}
%设置双线页眉
\makeatletter
\def\headrule{
    {\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi%
    \hrule\@height 2.0pt \@width\headwidth\vskip1pt%上面线为1pt粗
    \hrule\@height 0.5pt \@width\headwidth  %下面0.5pt粗
    \vskip-2\headrulewidth\vskip-1.2pt}    %两条线的距离1pt
    \vspace{6mm}}     %双线与下面正文之间的垂直间距
\makeatother

%设置双线页脚
\makeatletter
\def\footrule{
    {\if@fancyplain\let\footrulewidth\plainfootrulewidth\fi%
    \hrule\@height 0.5pt \@width\headwidth          %上面0.5pt粗
    \vskip 1pt
    \hrule\@height 2.0pt \@width\headwidth %下面线为1pt粗
    \vskip-2\headrulewidth\vskip-1.2pt}    %两条线的距离1pt
    \vspace{8mm}}     %双线与下面正文之间的垂直间距
\makeatother
% -----------------------------------------------------------------
% 设置每一个章节目录字体大小
% 每章标题前空一行，以三号黑体居中打印。
% “章”下空一行为“节”，以四号黑体左起打印。 
% “小节”以小四号黑体左起打印。换行后打印论文正文。
% “节”和“小节”标题的段前、段后各空0.5行。
%设置文章格式
\ctexset {
    contentsname={目\quad 录},
    listfigurename={插图},
    listtablename={表格},
    figurename={图},
    tablename={表},
    bibname={参考文献},
    appendixname={附\quad 录},
    chapter={
        beforeskip={0pt},
        nameformat={\heiti\sanhao\centering},
        titleformat={\heiti\sanhao\centering},
    },
    section={
        format={\heiti\sihao},
    },
    subsection={
        format={\heiti\xiaosi},
    },
    subsubsection={
        format={\heiti\xiaosi},
    }
}
% -----------------------------------------------------------------
% 数学环境, 定理等设置
\newtheorem{definition}{定义}
\newtheorem{theorem}{定理}
\newtheorem{lemma}{引理}
\newtheorem{corollary}{推论}
\newtheorem{assumption}{假设}
\newtheorem{conjecture}{猜想}
\newtheorem{axiom}{公理}
\newtheorem{principle}{定律}
\newtheorem{problem}{问题}
\newtheorem{example}{例}
\newtheorem{proof}{证明}
\newtheorem{solution}{解}
% -----------------------------------------------------------------
% 设置目录的格式
% 目录中的章加点
\makeatletter
\let\c@lofdepth\relax
\let\c@lotdepth\relax
\makeatother
\RequirePackage[titles]{tocloft}
\renewcommand{\cftdot}{$\cdot$}
\renewcommand{\cftdotsep}{1.5}
\setlength{\cftbeforechapskip}{10pt}

\renewcommand{\cftchapleader}{\cftdotfill{\cftchapdotsep}}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\makeatletter
\renewcommand{\numberline}[1]{%
\settowidth\@tempdimb{#1\hspace{0.5em}}%
\ifdim\@tempdima<\@tempdimb%
  \@tempdima=\@tempdimb%
\fi%
\hb@xt@\@tempdima{\@cftbsnum #1\@cftasnum\hfil}\@cftasnumb}
\makeatother

% 设置目录字体尺寸
\renewcommand{\cftchapfont}{\heiti\xiaosi}
\renewcommand{\cftsecfont}{\heiti\wuhao}
\renewcommand{\cftsubsecfont}{\heiti\wuhao}

%-----------------------------------------
% 设置引用格式
\RequirePackage{url,hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue
}
%-----------------------------------------
% 设置脚标注格式
\RequirePackage{xunicode-addon}

% 在圆圈当中使用特定的字体 \textcircled
\AtBeginUTFCommand[\textcircled]{\begingroup\EnclosedNumbers}
\AtEndUTFCommand[\textcircled]{\endgroup}

% 为圆圈数字设置字符类和字体
% ref: https://stone-zeng.github.io/2019-02-09-circled-numbers
\xeCJKDeclareCharClass{Default}{"24EA, "2460->"2473, "3251->"32BF}
\newfontfamily\EnclosedNumbers{Source Han Serif SC}

% 接着，把脚注的输出样式调整为带圈数字
\renewcommand\thefootnote{\textcircled{\@arabic\c@footnote}}

% 第二步，在页面底部的脚注内容中，取消编号的上标样式

\RequirePackage{xpatch}

% 取消在脚注当中商标的样式
\xpatchcmd\@makefntext
  {{\hss\@makefnmark}}
  {{\hss\@makefnmark@nosuperscript}\space}
  {}{\fail}

% old: superscript style
% \def\@makefnmark{\hbox{\@textsuperscript{\normalfont\@thefnmark}}}

% new: normal style, lower baseline
% 设置新的脚标注样式
\def\@makefnmark@nosuperscript{\lower .3ex \hbox{\normalfont\@thefnmark}}
% 第三步，减小分隔正文和脚注的横线长度
% shorten footnote rule
\xpatchcmd\footnoterule
  {.4\columnwidth}
  {1in}
  {}{\fail}

% ----------------------------------------------
% 设置插入的数学公式
\RequirePackage{mathtools,amsmath,amsfonts,amssymb,amsthm,bm,mathrsfs}
\RequirePackage{float}
% 设置浮动体的标题
\RequirePackage{caption}
% 设置插入的表格
\RequirePackage{tabularx,array}
%% 长表格
\RequirePackage{longtable}
% 设置插入的三线表
\RequirePackage{booktabs}
\RequirePackage{makecell}                 % 三线表-竖线
%% 支持在表格中跨行、跨列
\RequirePackage{multirow}
\RequirePackage{multicol}
%% 调整间隔, 让表格更好看些
\RequirePackage{bigstrut}
%% 在跨行表格中输入定界符
\RequirePackage{bigdelim}
% 保护脆落命令
\RequirePackage{cprotect}
%% 设置插入的图片
\RequirePackage{graphicx}
\RequirePackage{}
%% 如果插入的图片没有指定扩展名，那么依次搜索下面的扩展名所对应的文件
\DeclareGraphicsExtensions{.pdf,.eps,.png,.jpg,.jpeg}
\graphicspath{{figures/}}
%% 并列子图
\RequirePackage{subfigure}
% 设置颜色
\RequirePackage{xcolor,color}
% 载入自动引用宏包
\RequirePackage{cleveref}
\crefname{figure}{图}{图}
\crefname{table}{表}{表}
\crefname{equation}{式}{式}
\renewcommand{\eqref}[1]{\labelcref{#1}~\namecref{#1}}
%---------------------------------
% 使用tikz进行画图
%\def\pgfsysdriver{pgfsys -dvipdfmx.def}
\RequirePackage{tikz}
% pgfplots画图处理
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.18}
% 设置插入的列表信息
\RequirePackage{enumitem}

%-----------------------------------------
% 载入参考文献宏包，设置引用格式
\RequirePackage{natbib}
\setcitestyle{square,super}
%-----------------------------------------
% 设置代码插入格式
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



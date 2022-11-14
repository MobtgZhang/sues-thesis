%依赖的Latex版本
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{suesthesis}[2022/11/11 v3.0 update  https://github.com/mobtgzhang/sues-thsis]
%使用xelex进行编译
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{suesthesis}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi
% 初始化latex代码
\newif\if@suesthesis@bwprint\@suesthesis@bwprintfalse
\newif\if@suesthesis@preface\@suesthesis@prefacetrue
% 定义字号大小
%设置字号

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
\LoadClass[UTF8,a4paper,cs4size,zihao=-4,linespread=1.5,space=auto,oneside]{ctexbook}
% 正文中文为宋体，非中文为Times New Roman字体，小四，1.5倍行间距，首行缩进2字符。

\RequirePackage{fontspec}
%设置英文字体
\setmainfont{Times New Roman}[
    BoldFont = Times New Roman Bold,
    ItalicFont = Times New Roman Italic,
    BoldItalicFont = Times New Roman Bold Italic
]

\setsansfont{Times New Roman}[
    BoldFont = Times New Roman Bold,
    ItalicFont = Times New Roman Italic,
    BoldItalicFont = Times New Roman Bold Italic
]

\setmonofont{Times New Roman}[
    BoldFont = Times New Roman Bold,
    ItalicFont = Times New Roman Italic,
    BoldItalicFont = Times New Roman Bold Italic
]
 % 设置字体

% 设置中文字体 宋体
% 设置数字、英文字体加粗
\setCJKmainfont{SimSun}
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
\newpagestyle{MyStyle}{
  \sethead[][][]{}{}{}
  \setfoot[][\Roman{page}][]{}{\Roman{page}}{}
}

%重新设置plain
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{\songti\xiaowu 第 \thepage 页}
    \fancyhead[L]{\songti\xiaowu 上海工程技术大学硕士学位论文}
    \fancyhead[R]{\songti\xiaowu 第 \zhnum{chapter} 章 \quad\chaptertitle }
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
    chapter={
        format={\bf\heiti\sihao},
    },
    section={
        format={\bf\heiti\xiaosi},
    },
    subsection={
        format={\bf\heiti\xiaosi},
    },
    subsubsection={
        format={\bf\heiti\xiaosi},
    }
}

% -----------------------------------------------------------------
% 设置目录当中的格式
% 目录中的章加点
\usepackage[titles]{tocloft}
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
% -----------------------------------------------
% 设置交叉引用的包
\RequirePackage{catchfilebetweentags}


% ----------------------------------------------
% 设置插入的数学公式
\RequirePackage{mathtools,amsmath,amsfonts,amssymb,amsthm,bm,mathrsfs}
% 载入自动引用宏包
\RequirePackage{cleveref}
\crefname{figure}{图}{图}
\crefname{table}{表}{表}
\crefname{equation}{式}{式}
\renewcommand{\eqref}[1]{\labelcref{#1}~\namecref{#1}}
% 定公式、图、表编号为"3-1"的形式，即分隔符由.变为短杠
\renewcommand\theequation{\arabic{section}-\arabic{equation}}
\renewcommand\thefigure{\arabic{section}-\arabic{figure}}
\renewcommand\thetable{\arabic{section}-\arabic{table}}

%各个章节重新引用定义
%\crefname{section}{se}{}
% -----------------------------------------------------------------
% 数学环境, 定理等设置
\newtheorem{definition}{定义}
\crefname{definition}{定义}{定义}

\newtheorem{theorem}{定理}
\crefname{theorem}{定理}{定理}

\newtheorem{lemma}{引理}
\crefname{lemma}{引理}{引理}

\let\proof\relax
\let\endproof\relax
\newtheorem{proof}{证明}
\crefname{proof}{证明}{证明}

\newtheorem{corollary}{推论}
\crefname{corollary}{推论}{推论}

\newtheorem{assumption}{假设}
\crefname{assumption}{假设}{假设}

\newtheorem{conjecture}{猜想}
\crefname{conjecture}{猜想}{猜想}

\newtheorem{axiom}{公理}
\crefname{axiom}{公理}{公理}

\newtheorem{principle}{定律}
\crefname{principle}{定律}{定律}

\newtheorem{problem}{问题}
\crefname{problem}{问题}{问题}

\newtheorem{example}{例}
\crefname{example}{例}{例}

\newtheorem{solution}{解}
\crefname{solution}{解}{解}
%-----------------------------------------
\RequirePackage{float}
% 设置浮动体的标题
\RequirePackage{caption}
% 设置插入的表格
\RequirePackage{tabularx,array}
%% 长表格
\RequirePackage{longtable}
% 用于插入表格当中斜线
\RequirePackage{diagbox}
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

%% 如果插入的图片没有指定扩展名，那么依次搜索下面的扩展名所对应的文件
\DeclareGraphicsExtensions{.pdf,.eps,.png,.jpg,.jpeg}
\graphicspath{{figures/}}
%% 并列子图
\RequirePackage{subfig}
% 设置颜色
\RequirePackage{xcolor,color}
% 用于设置
\usepackage{pifont}       % \ding{xx}
\usepackage{bbding}       % \Checkmark,\XSolid,... (需要和pifont宏包共同使用)
\usepackage{fontawesome}  % \faCheck,\faTimes
% 采用如下宏定义更方便
\newcommand{\cmark}{\ding{51}}
\newcommand{\xmark}{\ding{55}}
\newcommand{\crossmark}{\ding{53}}

%---------------------------------
% 使用tikz进行画图
%\def\pgfsysdriver{pgfsys -dvipdfmx.def}
\RequirePackage{tikz}
% pgfplots画图处理
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.18}
% 设置插入的列表信息
\RequirePackage{enumitem}
%--------------------------------
% 设置算法
\RequirePackage[noend]{algpseudocode}
\RequirePackage{algorithmicx,algorithm}
\floatname{algorithm}{算法}
\renewcommand{\algorithmicrequire}{\textbf{输入:}}
\renewcommand{\algorithmicensure}{\textbf{输出:}}
%-----------------------------------------
% 生成指定长度的下划线，默认是4cm
\makeatletter
\newcommand\dlmu[2][4cm]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\makeatother
%-----------------------------------------
% 载入参考文献宏包，设置引用格式
\RequirePackage{natbib}
\setcitestyle{square,super}
%-----------------------------------------
% 设置代码插入格式
% 设置代码环境
% 定义常见的一些代码颜色，关键字信息
\definecolor{mKeyword}{rgb}{0,0,1.0}
\definecolor{mString}{rgb}{0.75,0,0.75}
\definecolor{mComment}{rgb}{0.58,0,0.82}
\RequirePackage{listings,color}
% 设置matlab代码环境
\lstnewenvironment{Matlab}[1][]{
	\lstset{
		language=Matlab,
        backgroundcolor=\color{lightgray},	
		keywordstyle=\color{mKeyword},% 设置关键词样式
		stringstyle=\color{mString},% 设置字符串样式
		commentstyle=\songti\color{mComment},% 设置注释样式
        basicstyle=\footnotesize\fontspec{Consolas}, % 设置代码字体
        frame=shadowbox, % 阴影效果
        rulesepcolor= \color{ red!20!green!20!blue!20} ,
		#1
	}
}{}
% 设置python代码环境
% 定义常见的一些代码颜色，关键字信息
\definecolor{pKeyword}{rgb}{1.0,0.46,0}
\definecolor{pString}{rgb}{0,0.66,0}
\definecolor{pComment}{rgb}{0.86,0,0}
\definecolor{pBuiltins}{rgb}{0.56,0,0.56}
\lstnewenvironment{Python}[1][]{
	\lstset{
		language=Python,
        backgroundcolor=\color{lightgray},
		keywordstyle=\color{pKeyword},% 设置Keywords样式
		morekeywords={as},% 将特定单词加入Kewords中
		deletekeywords={print},%从 keywords中去除特定单词
		keywordstyle=[2]\color{pBuiltins},% 设置Builtins样式
		morekeywords=[2]{print},% 将特定单词加入Builtins中
		stringstyle=\color{pString},% 设置字符串样式
		commentstyle=\songti\color{pComment},% 设置注释样式	
        basicstyle=\footnotesize\fontspec{Consolas}, % 设置代码字体
        frame=shadowbox, % 阴影效果
        rulesepcolor= \color{ red!20!green!20!blue!20} ,
		#1
        % 
	}
}{}

% 设置C/C++代码环境
\lstnewenvironment{CPlusPlus}[1][]{
	\lstset{
		language=C++,
        backgroundcolor=\color{lightgray},
		keywordstyle=\color{blue}\bfseries,
		morekeywords={*,define,*,include...},% 将特定单词加入Kewords中
		keywordstyle=[2]\color{pBuiltins},% 设置Builtins样式
		morekeywords=[2]{print},% 将特定单词加入Builtins中
		stringstyle=\color{purple},% 设置字符串样式
		commentstyle=\songti\color{pComment},% 设置注释样式	
        basicstyle=\footnotesize\fontspec{Consolas}, % 设置代码字体
        frame=shadowbox, % 阴影效果
        rulesepcolor= \color{ red!20!green!20!blue!20} ,
        tabsize=4,
        title=\lstname
		#1
        % 
	}
}{}
\lstnewenvironment{CLanguage}[1][]{
	\lstset{
		language=C,
        backgroundcolor=\color{lightgray},
		keywordstyle=\color{blue}\bfseries,
		morekeywords={*,define,*,include...},% 将特定单词加入Kewords中
		keywordstyle=[2]\color{pBuiltins},% 设置Builtins样式
		morekeywords=[2]{print},% 将特定单词加入Builtins中
		stringstyle=\color{purple},% 设置字符串样式
		commentstyle=\songti\color{pComment},% 设置注释样式	
        basicstyle=\footnotesize\fontspec{Consolas}, % 设置代码字体
        frame=shadowbox, % 阴影效果
        rulesepcolor= \color{ red!20!green!20!blue!20} ,
        tabsize=4,
        title=\lstname
		#1
        % 
	}
}{}
\lstnewenvironment{Java}[1][]{
	\lstset{
		language=Java,
        backgroundcolor=\color{lightgray},
		keywordstyle=\color{blue}\bfseries,
		keywordstyle=[2]\color{pBuiltins},% 设置Builtins样式
		stringstyle=\color{purple},% 设置字符串样式
		commentstyle=\songti\color{pComment},% 设置注释样式	
        basicstyle=\footnotesize\fontspec{Consolas}, % 设置代码字体
        frame=shadowbox, % 阴影效果
        rulesepcolor= \color{ red!20!green!20!blue!20} ,
        tabsize=4,
        title=\lstname
		#1
        % 
	}
}{}

%---------------------------------------------------------
% 加入一个圆圈的脚注
\makeatletter
\newskip\@footindent
\@footindent=1em
\renewcommand\footnoterule{\kern-3\p@ \hrule width 0.4\columnwidth \kern 2.6\p@}

\long\def\@makefntext#1{\@setpar{\@@par\@tempdima \hsize
\advance\@tempdima-\@footindent
\parshape \@ne \@footindent \@tempdima}\par
\noindent \hbox to \z@{\hss\@thefnmark\hspace{0.2em}}#1}
\renewcommand\thefootnote{\myfootnotestyle{\arabic{footnote}}}

%以下选项选一
\def\@makefnmark{\hbox{\textsuperscript{\@thefnmark}}}%正文中脚注标签采取上标形式
%\def\@makefnmark{\hbox{\@thefnmark}}%正文中脚注标签与正文平齐
%\def\@makefnmark{\hbox{【\@thefnmark{}】}}%正文中脚注标签加一个全角的方括号【】
%数字单纯带圈，正常数字
\newcommand\myfootnotestyle[1]{\ifcase#1 \or \ding{192}\or \ding{193}\or
\ding{194}\or \ding{195}\or \ding{196}\or \ding{197}%
\or \ding{198}\or \ding{199}\or \ding{200}\or \ding{201}\else *\fi\relax}

%---------------------------------------------------------
% 文档开始导入默认配置
\AtBeginDocument{\makeatletter\input{suesthesis.cfg}\makeatother}

\endinput





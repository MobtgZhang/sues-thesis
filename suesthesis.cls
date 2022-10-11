%依赖的Latex版本
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{suesthesis}[2022/10/11 v2.2 update  https://github.com/zhanwen/MathModel]
%---------------------------------编译器设置
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{suesthesis}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi
%\LoadClass[UTF8,a4paper,zihao=-4,space=auto]{ctexart}
\LoadClass[UTF8,twoside,zihao=-4,space=auto]{ctexbook}
%----------------------- 设置行间距
%% 内容文字为小四，宋体，1.5倍行距。注意句首缩进和两端对齐。
\RequirePackage{setspace}
\onehalfspacing %1.5倍行距

% 设置页边距
\RequirePackage{geometry}
\geometry{
    a4paper,
    top=3cm,
    bottom=2.5cm,
    left=3cm,
    right=2.5cm
}
\RequirePackage{ctex}
% 数字、英文字体加粗
\RequirePackage[T1]{fontenc}
% 设置段与段之间的垂直距离 \parskip默认橡皮长度是0pt plus 1pt
\setlength{\parskip}{0pt}
% \setlength{\parindent}{0pt}
%--------------------------------设置算法
% 算法
\RequirePackage[noend]{algpseudocode}
\RequirePackage{algorithmicx,algorithm}
\floatname{algorithm}{算法}
\renewcommand{\algorithmicrequire}{\textbf{输入:}}
\renewcommand{\algorithmicensure}{\textbf{输出:}}

%---------------------------------设置字体
% 设置英文字体
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
%设置中文字体
% 设置
\setCJKmainfont[
    AutoFakeBold,
    ItalicFont = {SimSun}
]{SimSun}
\setCJKsansfont{SimSun}%对应sf无衬线
\setCJKmonofont{SimSun}%对应tt打字机im

\setCJKfamilyfont{xw}{STXinwei}
\ifx\lishu\undefined%
    \setCJKfamilyfont{zhli}{LiSu}
    \newcommand*{\lishu}{\CJKfamily{zhli}} %% Do this if it is undefined
\else
    %% Do this if it is defined
\fi
\newcommand*{\xinwei}{\CJKfamily{xw}}

% 设置字号大小

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
%------------------------------------------------------设置插入的数学公式
%使用公式，表格，图片
\RequirePackage{mathtools,amsmath,amsfonts,amssymb,amsthm,bm,mathrsfs}
\RequirePackage{float}
% 每行缩进两个汉字
\setlength\parindent{2em}
% 表格
\RequirePackage{tabularx,array,caption}
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
%---------------------------------使用tikz进行画图
%\def\pgfsysdriver{pgfsys -dvipdfmx.def}
\RequirePackage{tikz}
% pgfplots画图处理
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.18}
%----------------------------------------定义一些字段名
% 作者姓名
%\def\sues@tokens@authorname{}
% 指导老师
%\def\sues@tokens@authorteacher{}
% 专业
%\def\sues@tokens@authorprofessional{}
% 学院
%\def\sues@tokens@authordepartment{}
% 完成时间
%\def\sues@tokens@authorfinishtime{}

%\newcommand\authorname[1]{\def\sues@tokens@authorname{#1}}
%\newcommand\authorteacher[1]{\def\sues@tokens@authorteacher{#1}}
%\newcommand\authorprofessional[1]{\def\sues@tokens@authorprofessional{#1}}
%\newcommand\authordepartment[1]{\def\sues@tokens@authordepartment{#1}}
%\newcommand\authorfinishtime[1]{\def\sues@tokens@authorfinishtime{#1}}
%----------------------------------------------页眉页脚
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

%-----------------------------------------设置引用格式
\RequirePackage{url,hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue
}
%-----------------------------------------设置代码插入格式
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

\RequirePackage{enumitem}


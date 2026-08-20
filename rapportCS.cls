\LoadClass[a4paper,12pt]{report} % Classe du document

%--------------------- Packages ------------------------

\RequirePackage[french]{babel} %Langue du document
\RequirePackage[utf8]{inputenc} %Caractères spéciaux
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\RequirePackage{mathtools} %Paquet pour des équations et symboles mathématiques
\RequirePackage{siunitx} %Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} %Pour placement d'images
\RequirePackage{graphicx} %Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} %Pour les légendes centralisées
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
%\makenomenclature
\RequirePackage{fancyhdr}
%\pagestyle{fancy}
%\fancyheadoffset{1cm}
%\setlength{\headheight}{2cm}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}%Paquet pour insérer légendes dans des sous-figures comme Figure 1a, 1b
\RequirePackage[left=3cm,right=3cm,top=3cm,bottom=5cm,headheight=15mm]{geometry} %Configuration de la page


%-------------------- Informations sur le rapport ----------------------

\newcommand{\mention}[1]{\renewcommand{\mention}{#1}}
\newcommand{\trigrammemention}[1]{\renewcommand{\trigrammemention}{#1}}
\newcommand{\master}[1]{\renewcommand{\master}{#1}}
\newcommand{\filiere}[1]{\renewcommand{\filiere}{#1}}

\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}

\newcommand{\eleve}[1]{\renewcommand{\eleve}{#1}}

\newcommand{\tuteuruniv}[1]{\renewcommand{\tuteuruniv}{#1}}
\newcommand{\tuteurentreprise}[1]{\renewcommand{\tuteurentreprise}{#1}}
\newcommand{\tuteurjury}[1]{\renewcommand{\tuteurjury}{#1}}
\newcommand{\logoentreprise}[1]{\renewcommand{\logoentreprise}{#1}}

\newcommand{\dates}[1]{\renewcommand{\dates}{#1}}

\newcommand{\fairemarges}{
\makenomenclature
\pagestyle{fancy}
\fancyheadoffset{0.5cm}


\lhead{\includegraphics[scale=0.1]{logos/emsi.png}} %Affichage de l'image au top de la page
\rhead{\nouppercase{\leftmark}}
\rfoot{\thepage}
\fancyfoot{}             % Vide tous les pieds de page
\cfoot{\thepage}         % Numéro de page au centre uniquement
\lfoot{\trigrammemention}

}

\newcommand{\fairepagedegarde}{
\begin{titlepage}

\ThisLRCornerWallPaper{0.3}{logos/coin bas.png}
\ThisULCornerWallPaper{0.3}{logos/coin haut.png}

\centering %Centraliser le contenu

% Logo Entreprise x IC2
\begin{figure}
    \begin{subfigure}{.5\textwidth}
        \centering
        \includegraphics[width=0.6\textwidth]{\logoentreprise}\par\vspace{1cm}
    \end{subfigure}%
    \begin{subfigure}{.5\textwidth}
        \centering
        \includegraphics[width=0.6\textwidth]{logos/emsi.png}\par\vspace{2cm} %Insertion du logo IC2
    \end{subfigure}
\end{figure}

% Titre du rapport
\rule{\linewidth}{0.2 mm} \\[0.4 cm]
{\huge\bfseries \titre \par} \
\rule{\linewidth}{0.2 mm} \\[1.0 cm]

% Nom de l'étudiant
{\scshape\LARGE \eleve \par} 
\vspace{0.5cm}

% Parcours de l'étudiant
{\scshape \mention \\ \filiere \\ \master \par} 
\vspace{0.5cm}

% Dates
{\large \dates \par} 

\vspace{1cm}
% Représentants de l'étudiant
\begin{minipage}{0.4\textwidth}
	\begin{flushleft} 
	\emph{\textbf{Tuteur EMSI :}}\\ 
    \tuteuruniv \\ 
	\end{flushleft}
\end{minipage}
~
\begin{minipage}{0.4\textwidth}
	\begin{flushright} 
	\emph{\textbf{Tuteur Entreprise :}} \\
	 \tuteurentreprise \\
	\end{flushright}
\end{minipage}\\[1cm]
~
    \begin{minipage}{0.4\textwidth}
    \begin{center}
        \emph{\textbf{Membres du Jury :}} \\[0.1cm]
        \tuteurjury
    \end{center}
\end{minipage}
\vspace{0.65cm}\\
\begin{center}
{\Large\textbf{Année universitaire 2025 -- 2026}}
\end{center}
	.
	

\end{titlepage}
\newpage
}

\newcommand{\tabledematieres}{
\tableofcontents
%\newpage
}
\newcommand{\listedesfigures}{
  \listoffigures
}

\newcommand{\listedestableaux}{
  \listoftables
}

\newcommand{\insererfigure}[4]{
\begin{figure}[ht]
\centering
\includegraphics[height=#2]{#1}
\caption{#3}
\label{fig: #4}
\end{figure}
}




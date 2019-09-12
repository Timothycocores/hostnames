{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf600
{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red115\green0\blue2;\red242\green242\blue242;\red0\green0\blue0;
\red83\green85\blue2;\red16\green121\blue2;\red0\green0\blue117;\red82\green0\blue83;\red38\green38\blue38;
}
{\*\expandedcolortbl;;\cssrgb\c53333\c0\c0;\cssrgb\c96078\c96078\c96078;\cssrgb\c0\c0\c0;
\cssrgb\c40000\c40000\c0;\cssrgb\c0\c53333\c0;\cssrgb\c0\c0\c53333;\cssrgb\c40000\c0\c40000;\cssrgb\c20000\c20000\c20000;
}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl480\partightenfactor0

\f0\fs34 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 #!/bin/bash\cf4 \strokec4 \
\
serial\cf5 \strokec5 =\cf6 \strokec6 `/usr/sbin/system_profiler SPHardwareDataType | /usr/bin/awk '/Serial\\ Number\\ \\(system\\)/ \{print $NF\}'`\cf4 \strokec4 \
\pard\pardeftab720\sl480\partightenfactor0
\cf5 \strokec5 /\cf4 \strokec4 usr\cf5 \strokec5 /\cf4 \strokec4 sbin\cf5 \strokec5 /\cf4 \strokec4 scutil \cf5 \strokec5 --\cf7 \strokec7 set\cf4 \strokec4  \cf8 \strokec8 ComputerName\cf4 \strokec4  \cf6 \strokec6 "$\{base\}$\{serial\}"\cf4 \strokec4 \
\cf5 \strokec5 /\cf4 \strokec4 usr\cf5 \strokec5 /\cf4 \strokec4 sbin\cf5 \strokec5 /\cf4 \strokec4 scutil \cf5 \strokec5 --\cf7 \strokec7 set\cf4 \strokec4  \cf8 \strokec8 LocalHostName\cf4 \strokec4  \cf6 \strokec6 "$\{base\}$\{serial\}"\cf4 \strokec4 \
\cf5 \strokec5 /\cf4 \strokec4 usr\cf5 \strokec5 /\cf4 \strokec4 sbin\cf5 \strokec5 /\cf4 \strokec4 scutil \cf5 \strokec5 --\cf7 \strokec7 set\cf4 \strokec4  \cf8 \strokec8 HostName\cf4 \strokec4  \cf6 \strokec6 "$\{base\}$\{serial\}"\cf4 \strokec4 \
\
\pard\pardeftab720\sl480\partightenfactor0
\cf8 \strokec8 HDDName\cf5 \strokec5 =\cf6 \strokec6 `/usr/sbin/diskutil list | grep "Macintosh HD" | grep disk0`\cf4 \strokec4 \
\cf8 \strokec8 HDDCSName\cf5 \strokec5 =\cf6 \strokec6 `/usr/sbin/diskutil list | grep "Macintosh HD" | grep disk1`\cf4 \strokec4 \
\cf8 \strokec8 UntName\cf5 \strokec5 =\cf6 \strokec6 `/usr/sbin/diskutil list | grep "Untitled 1" | grep disk0`\cf4 \strokec4 \
\cf8 \strokec8 Unt2Name\cf5 \strokec5 =\cf6 \strokec6 `/usr/sbin/diskutil list | grep "Untitled 1" | grep disk1`\cf4 \strokec4 \
\
\
\pard\pardeftab720\sl480\partightenfactor0
\cf7 \strokec7 if\cf4 \strokec4  \cf5 \strokec5 [\cf4 \strokec4  \cf6 \strokec6 "$HDDName"\cf4 \strokec4  \cf5 \strokec5 !=\cf4 \strokec4  \cf6 \strokec6 ""\cf4 \strokec4  \cf5 \strokec5 ];\cf4 \strokec4  \cf7 \strokec7 then\cf4 \strokec4 \
    diskutil rename disk0s2 \cf6 \strokec6 "$\{base\}$\{serial\}"\cf4 \strokec4 \
\cf7 \strokec7 elif\cf4 \strokec4  \cf5 \strokec5 [\cf4 \strokec4  \cf6 \strokec6 "$HDDCSName"\cf4 \strokec4  \cf5 \strokec5 !=\cf4 \strokec4  \cf6 \strokec6 ""\cf4 \strokec4  \cf5 \strokec5 ];\cf4 \strokec4  \cf7 \strokec7 then\cf4 \strokec4 \
    diskutil rename disk1 \cf6 \strokec6 "$\{base\}$\{serial\}"\cf4 \strokec4 \
\cf7 \strokec7 elif\cf4 \strokec4  \cf5 \strokec5 [\cf4 \strokec4  \cf6 \strokec6 "$UntName"\cf4 \strokec4  \cf5 \strokec5 !=\cf4 \strokec4  \cf6 \strokec6 ""\cf4 \strokec4  \cf5 \strokec5 ];\cf4 \strokec4  \cf7 \strokec7 then\cf4 \strokec4 \
    diskutil rename disk0s2 \cf6 \strokec6 "$\{base\}$\{serial\}"\cf4 \strokec4 \
\cf7 \strokec7 elif\cf4 \strokec4  \cf5 \strokec5 [\cf4 \strokec4  \cf6 \strokec6 "$Unt2Name"\cf4 \strokec4  \cf5 \strokec5 !=\cf4 \strokec4  \cf6 \strokec6 ""\cf4 \strokec4  \cf5 \strokec5 ];\cf4 \strokec4  \cf7 \strokec7 then\cf4 \strokec4 \
    diskutil rename disk1 \cf6 \strokec6 "$\{base\}$\{serial\}"\cf4 \strokec4 \
\cf7 \strokec7 fi\cf9 \strokec9 \
}
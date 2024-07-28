Easily compile XMRig on Linux. Specifically made for Termux/Linux CLI emulation within Android.

Step by step:
1) Allow non-playstore downloads
2) Download F-Droid
3) Allow F-Droid to install programs
4) Download Termux
5) Open Termux and enter "git clone https://github.com/terafyde873/scripts.git"
6) Enter "cd scripts"
7) Enter "chmod u+x script.sh"
8) Enter "./setup.sh" and allow to finish.
9) Once finished, enter "cd"
10) Enter "cd xmrig/build"
11) Enter "nano config.json", here, modify the basic config file. (CTRL+X, Y, Enter, to exit out of nano)
12) Finally, enter "./xmrig" and you should be mining.

Tested on a lot of phones, sometimes CMake cannot complile, mostly on older ones.
I do not recommend mining on devices that do not have a 64bit Chipset and OS. Without both, expect single digits.

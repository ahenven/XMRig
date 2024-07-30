Easily compile XMRig on Linux. Specifically made for Termux/Linux CLI emulation within Android.

Step by step:
1) Allow non-playstore downloads
2) Download F-Droid
3) Allow F-Droid to install programs
4) Download Termux
5) Open Termux and enter "pkg install git"
6) Next enter "git clone https://github.com/ahenven/scripts.git"
7) Then enter "cd scripts"
8) Following that, enter "chmod u+x script.sh"
9) To run, enter "./setup.sh" and allow to finish.
10) Once finished, enter "cd"
11) Enter "nano config.json", here, modify the basic config file. (CTRL+X, Y, Enter, to exit out of nano)
12) Finally, enter "./xmrig" and you should be mining.

Tested on a lot of phones, sometimes CMake cannot complile, mostly on older ones.
I do not recommend mining on devices that do not have a 64bit Chipset and OS. Without both, expect single digits.

You might experience frequent crashing, this can be due to overheating, too much CPU usage or not enough system resources.
The solution to all is to go into the config.json file and remove cores starting from the left side. Mobile phone processors usually have slower units in the first numbers.

In the config.json, the coin is manually set to "xmr". This is to prevent errors on some pools. If mining other coins, you can remove.

You can modify the shell.sh to point git to clone MO and compile this instead. You will likely need to disable at least Panthera. Also, set the algo bench time to 20+ seconds to allow for accurate benchmarking.

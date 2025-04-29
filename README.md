# Expedition 33 Clair Obscur XeSS 2.0.1.41
XeSS 2.0.1.41 Installer batch script for Expedition 33 Clair Obscur

Usage:

Download the batch file from latest release [here](https://github.com/morpheasgr/Expedition33CO_XeSS_2.0.1/releases/latest/download/xess_upd.bat) or via cloning/zipping the repo.

1. Place xess_upd.bat into the following game subdirectory:

Expedition 33\Engine\Plugins\Marketplace\XeSS\Binaries\ThirdParty\Win64

2. Run xess_upd.bat


Notes:

This tiny script (<2kB) initially fetches and uses 7zip's 7zr & 7za CLIs to unpack archives,
both files are downloaded from the official GitHub repo.
Then it fetches XeSS 2.0.1.41 (or whatever future subversion is in the 2.0.1 release) from Intel's GitHub, backing up and replacing the older one shipped with the game.

In other words, it is a miniature XeSS swapper which would actually work if you put it in any directory with XeSS DLLs...


Regards,

DaedalusGR

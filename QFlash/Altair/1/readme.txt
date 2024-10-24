

    ---------- USAGE ----------

    GUI Run:ImageBurnTool.exe
    Silent One-Time Run (with console window output): ImageBurnTool.exe -v <version's path> [chip type/product type] <options>
    ImageBurnTool.exe -h  Shows this usage message (help).


    OPTIONS: 

    Honeynut/Fruitloop Versions (HN/FL):
    /0        burns SPL
    /1        burns U-Boot + Env
    /2        burns Linux (Burning both banks)
    /3        burns File System (Burning both banks)
    /4        burns Modem FW (Burning both banks)
    /5        burns DTB - need to specify DTB file's path after the flag
    /6        burns NVM
    /7        burns Linux Bank 1 Only
    /8        burns Linux Bank 2 Only
    /9        burns File System Bank 1 Only
    /10       burns File System Bank 2 Only
    /11       burns Modem FW Bank 1 Only
    /12       burns Modem FW Bank 2 Only
    /13       burns DTB - Bank 1 Only. Need to specify DTB file path right after the flag
    /14       burns DTB - Bank 2 Only. Need to specify DTB file path right after the flag

    (*) User can specify an image path right after the above flags in order to use it in the burning process


    Cinimini/Nesquik Versions (CM/NQ):
    /0        burns System Header
    /1        burns U-Boot + Env
    /2        burns Linux
    /3        burns File System
    /4        burns Modem FW
    /5        burns DTB - need to specify DTB file's path after the flag
    /6        burns NVM

    (*) User can specify an image path right after the above flags in order to use it in the burning process


    RiceKrispies Versions (RK_01):
    /0        burns System Header
    /1        burns U-Boot + Env
    /3        burns Application FW
    /4        burns Modem FW
    /6        burns Configuration FS 

    (*) User can specify an image path right after the above flags in order to use it in the burning process


    RiceKrispies Versions (RK_02):
    /0        burns System Header
    /1        burns U-Boot + Env
    /2        burns Flexible Partition Map
    /3        burns Application FW
    /4        burns Modem FW
    /6        burns Configuration FS 
    /7        burns Modem FW2
    /8        burns ISE 1
    /9        burns ISE 2
    /10       burns Generic Partition (followed by partition's name and an image path. See examples)
    /11       burns Config Records (followed by an image path. See examples) - Secure Mode
    /12       burns PUK1 (followed by an image path. See examples) - Secure Mode
    /13       burns Modem System Header (followed by an image path. See examples) - Secure Mode

    (*) User can specify an image path right after the above flags in order to use it in the burning process


    RiceKrispies Versions (RK_03 with ChipType/ProductType):
    -v        version is followed by the ChipType_ProductType string (D0_TG, D0_BZ, E0_TG, E0_BZ, E0_SB, E0_ST) - See example below
    /0        burns System Header
    /1        burns U-Boot + Env
    /2        burns Flexible Partition Map
    /3        burns Application FW
    /4        burns Modem FW
    /6        burns Configuration FS 
    /7        burns Modem FW2
    /10       burns Generic Partition (followed by partition's name and an image path. See examples)
    /11       burns Config Records
    /12       burns PMP
    /13       burns MCU System Header (followed by an image path. See examples)
    /14       burns MCU (followed by an image path. See examples)
    /15       burns MCU public key (followed by an image path. See examples)
    /16       burns ROM public key (followed by an image path. See examples)
    /17       burns Modem public key (followed by an image path. See examples)
    /18       burns IO Par
    /19       burns Modem System Header

    (*) User can specify an image path right after the above flags in order to use it in the burning process


    Example:
    ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\RiceKrispies\RK_03_00_00_00_44" D0_TG /3 /12 "C:\temp\pmp.bin" -uartparams 0 12 3000000 1 - Burns /3 and /12 with custom image using version RK_03_00_00_00_44 of D0_TG ChipType/ProductType


    HubbaBubba Versions (HB):
    /0        burns System Header
    /1        burns U-Boot + Env
    /2        burns Flexible Partition Map
    /3        burns Application FW
    /4        burns Modem FW
    /6        burns Configuration FS 
    /7        burns Modem FW2
    /10       burns Generic Partition (followed by partition's name and an image path. See examples)
    /11       burns Config Records
    /12       burns PMP
    /13       burns MCU System Header (followed by an image path. See examples)
    /14       burns MCU
    /15       burns MCU public key (followed by an image path. See examples)
    /17       burns Modem public key (followed by an image path. See examples)
    /18       burns IO Par
    /19       burns Modem System Header

    (*) User can specify an image path right after the above flags in order to use it in the burning process


    Example:
    ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\HubbaBubba\HB_01_00_02122" /3 /14 -uartparams 0 4 921600 0 - Burns /3 and /14


    CocoPops Versions:
    -v        version is followed by the ProductType string (TG, BZ, SB, ST) - See example below
    /0        burns System Header
    /1        burns U-Boot + Env
    /2        burns Flexible Partition Map
    /3        burns Application FW
    /4        burns Modem FW
    /5        burns Generic Partition (followed by partition's name and an image path. See examples)
    /6        burns Configuration FS 
    /11       burns Config Records
    /12       burns PMP
    /13       burns MCU System Header (followed by an image path. See examples)
    /14       burns MCU (followed by an image path. See examples)
    /15       burns MCU public key (followed by an image path. See examples)
    /16       burns ROM public key (followed by an image path. See examples)
    /17       burns Modem public key (followed by an image path. See examples)
    /18       burns IO Par
    /19       burns Modem System Header

    (*) User can specify an image path right after the above flags in order to use it in the burning process


    Example:
    ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\CocoPops\CP_01_00_00_00_02951_003" TG /4 /18 " -uartparams 0 9 921600 0 - Burns /4 and /18


    Golden Image Burning:
    -g        special case which allows user to burn a 'Golden' image (CM/NQ/RK versions)
              ('-g' is followed by the 'Golden Image Path')
              (in case of two golden images '-g' is followed by the 'Golden Image 1' Path and 'Golden Image 2' Path)
              Example:
              ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\Cinimini\CM_01_00_00_20_43" -g "C:\Users\avikl\Desktop\full_img_1160.bin"  Burns the specified image.

    Recovery mode:
    -r        ('-r' is followed by the COM number and board info file name) or
              (RK versions: '-r' is followed by the COM number and recovery baudrate)
              Example:
              ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\Cinimini\CM_01_00_00_00_63" /0 /1 -r 95 "FMD8C16LAL-30E1"

    Using 'Location Path':
    -l        ('-l' is followed by the 'Location Path' string)
              Example:
              ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\Honeynut\HN_02_01_08_01_06" -l "PCIROOT(0)#PCI(1D00)#USBROOT(0)#USB(1)#USB(1)" /0 /1 /3

    Burning Via Uart:
    -uartparams    allows user to burn via UART ports. Require the following params in this order:
                   uart type    - 0 or 1 for the uart type (RK versions should use 0)
                   port number  - number representing the COM port's number
                   baud rate    - number representing the required baud rate
                   flow control - 0 or 1 for the required flow control (0 - none , 1- RTS_CTS)
                   (*) Note that you will have to immediately reset your device after executing !!  
                   Example:
                   ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\Cinimini\CM_01_00_00_00_59" /3 -uartparams 1 39 921600 0   - Burns component 3 to COM 39 of type 1 with baud rate of 921600 and flow control off.

    Reset device upon completion:
    -s        ('-s' is followed by 0 (false) or 1 (true))
              Example:
              ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\Cinimini\CM_02_00_00_00_25" /2 -s 1  - Burns component 2 and reset the device after completion

    Burning customize board info (XML file):
    -b        ('-b' is followed by an absolute path to the XML file (generated by 'BoardInfoCreator'))
              Currently supports only CM/NQ versions
              Example:
              ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\Cinimini\CM_01_00_00_00_89" /0 /1 -r 14 -b "C:\Board Info XML Files\MyBdInfo.xml" - Execute recovery on port 14, burning /0 /1 and the specified board info XML file

    Customize log file:
    -f        ('-f' is followed by an absolute path to the log file)
              Example:
              ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\Nesquik\NQ_01_01_00_00_11" /0 /1 -f "C:\ImageBurnTool logs\burn_123.txt"" - Burn /0 /1 and add logs to the specified file


    Uboot's stop character:
    -p        ('-p' is followed by a single character)
              Example:
              ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\RiceKrispies\RK_02_01_00_00_20" /2 /3 -p t" - Burns /2 /3 and stops uboot countdown using "t" character


    Skip erase instructions (used on empty flash):
    -e        ('-e' is followed by 0 (false) or 1 (true))
              Example:
              ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\Cinimini\CM_02_01_00_00_114" /2 /3 /4 -e 1" - Burns /2 /3 /4 and don't use any erase operations


    Avoid using the 'ENTER' key (when burning completes, the application won't return to prompt):
    -n        ('-n' is followed by 0 (false) or 1 (true))
              Example:
              ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\Cinimini\CM_02_01_00_00_112"  /3 -n 1" - Burns /3 (application doesn't send ENTER at the end of the burning process) 


    Reset device automatically (device must be stopped in uboot state):
    -t        ('-t' is followed by 0 (false) or 1 (true) and port's 'Location Path' string)
              Example:
              ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\Cinimini\CM_02_00_00_00_80"  /0 /1 /4 -t 1 "PCIROOT(0)#PCI(1D00)#USBROOT(0)#USB(1)#USB(1)" - Burns /0 /1 /4 and performs the reset device automatically when application asks for one (device must be stuck in uboot state) 


    Customize default uboot baudrate (default is 115200):
    -u        ('-u' is followed by uboot's default baudrate)
              Example:
              ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\RiceKrispies\RK_02_02_00_00_08" /3 -uartparams 0 12 3000000 1 -r 12 460800 -u 57600 - Burns in recovery mode /0 /1 /2 /3 using uboot's default baudrate (customized to 57600) 


    Examples:
    ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\Cinimini\CM_01_00_00_00_23" /0 /1   Burns components 1 and 2.
    ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\Honeynut\HN_02_00_01_00_14" /1 /2 /5 "C:\Program Files (x86)\Altair Semiconductor\Honeynut\HN_01_00_00_00\Images\AltairDevBoard_ETHGW.dtb"  Burns components 1,2 and 5.

    ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\Honeynut\HN_02_00_01_00_14" /8 /13 "C:\Program Files (x86)\Altair Semiconductor\Honeynut\HN_01_00_00_00\Images\AltairDevBoard_ETHGW.dtb"  Burns components 8 and 13.

    ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\Cinimini\CM_02_00_00_00_15" /0 /1 /3 "C:\Program Files (x86)\Altair Semiconductor\Cinimini\CM_01_02_00_00_32\Images\rootfs.jffs2.img" Burns /0 /1 and /3 with a costume image

    ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\Honeynut\HN_02_01_08_01_08" -l "PCIROOT(0)#PCI(1D00)#USBROOT(0)#USB(1)#USB(1)" /7 "C:\Program Files (x86)\Altair Semiconductor\Honeynut\HN_02_01_08_01_06_uboot\Images\uImage" -r 189 "FMN2SD1SBK"    burns in 'Recovery Mode' and continues to linux (bank 1) using physical address port

    ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\RiceKrispies\RK_02_00_00_00_28" /10 my_partition "C:\Avi\img.bin" -uartparams 0 8 3000000 1 - Burns component 10 followed by partition's name and its image path

    ImageBurnTool.exe -v "C:\Program Files (x86)\Altair Semiconductor\RiceKrispies\RK_02_01_01_00_50" /11  "C:\configuration_record.bin"  /12 "C:\rom_puk1.bin" /13  "C:\configuration_record.bin"-uartparams 0 9 921600 0 - Burns component 11, 12 and 13 followed by their image paths



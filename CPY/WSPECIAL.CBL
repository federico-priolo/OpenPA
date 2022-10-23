                SYMBOLIC CONSTANT

           POW-CUARROW                 is "POW-CUARROW"
           POW-CUCROSS                 is "POW-CUCROSS"
           POW-CUIBEAM                 is "POW-CUIBEAM"
           POW-CUICON                  is "POW-CUICON"
           POW-CUSIZE                  is "POW-CUSIZE"
           POW-CUSIZENESW              is "POW-CUSIZENESW"
           POW-CUSIZENS                is "POW-CUSIZENS"
           POW-CUSIZENWSE              is "POW-CUSIZENWSE"
           POW-CUSIZEWE                is "POW-CUSIZEWE"
           POW-CUUPARROW               is "POW-CUUPARROW"
           POW-CUWAIT                  is "POW-CUWAIT"
           POW-CUNO                    is "POW-CUNO"
           POW-CUAPPSTART              is "POW-CUAPPSTART"

           POW-ICAPP                   is "POW-ICAPP"
           POW-ICINFO                  is "POW-ICINFO"
           POW-ICEXCLM                 is "POW-ICEXCLM"
           POW-ICSTOP                  is "POW-ICSTOP"
           POW-ICQUESTION              is "POW-ICQUESTION"

      *****POW-DMXXXXXXX  DEFINE STYLE FOR DISPLAYMESSAGE METHOD

           POW-DMDEFAULT                is 0          *> 0x0000

           POW-DMOK                     is 0          *> 0x0000
           POW-DMOKCANCEL               is 1          *> 0x0001
           POW-DMABORTRETRYIGNORE       is 2          *> 0x0002
           POW-DMYESNOCANCEL            is 3          *> 0x0003
           POW-DMYESNO                  is 4          *> 0x0004
           POW-DMRETRYCANCEL            is 5          *> 0x0005

           POW-DMNOICON                 is 0          *> 0x0000
           POW-DMICONSTOP               is 16         *> 0x0010
           POW-DMICONHAND               is 16         *> 0x0010
           POW-DMICONERROR              is 16         *> 0x0010
           POW-DMICONQUESTION           is 32         *> 0x0020
           POW-DMICONEXCLAMATION        is 48         *> 0x0030
           POW-DMICONWARNING            is 48         *> 0x0030
           POW-DMICONINFORMATION        is 64         *> 0x0040
           POW-DMICONASTERISK           is 64         *> 0x0040

           POW-DMDEFBUTTON1             is 0          *> 0x0000
           POW-DMDEFBUTTON2             is 256        *> 0x0100
           POW-DMDEFBUTTON3             is 512        *> 0x0200

           POW-DMAPPLMODAL              is 0          *> 0x0000
           POW-DMSYSTEMMODAL            is 4096       *> 0x1000
           POW-DMTASKMODAL              is 8192       *> 0x2000

      *****POW-DMRXXXXXX    DEFINE RETURN CODE FROM DISPLAY-MSG METHOD

           POW-DMRNOMEMORY              is 0
           POW-DMROK                    is 1
           POW-DMRCANCEL                is 2
           POW-DMRABORT                 is 3
           POW-DMRRETRY                 is 4
           POW-DMRIGNORE                is 5
           POW-DMRYES                   is 6
           POW-DMRNO                    is 7

      *****POW-SWXXXXXXX    DEFINE WINEXEC PARM

           POW-SWHIDE                   is 0
           POW-SWSHOWNORMAL             is 1
           POW-SWNORMAL                 is 1
           POW-SWSHOWMINIMIZED          is 2
           POW-SWSHOWMAXIMIZED          is 3
           POW-SWMAXIMIZED              is 3
           POW-SWSHOWNOACTIVATE         is 4
           POW-SWSHOW                   is 5
           POW-SWMINIMIZED              is 6
           POW-SWSHOWMINNOACTIVE        is 7
           POW-SWSHOWNA                 is 8
           POW-SWRESTORE                is 9
           POW-SWMSHOWDEFAULT           is 10
           POW-SWMAX                    is 10

      *****POW-CDXXXXXXX  DEFINE STYLE FOR GETFILENAME METHOD

           POW-CDOPEN                   is 0          *> 0x0000
           POW-CDSAVE                   is 1          *> 0x0001
           POW-CDLFNAME                 is 4          *> 0x0004

           POW-CDCHANGEDIR              is 0          *> 0x0000
           POW-CDNOCHANGEDIR            is 2          *> 0x0002

      *****POW-CDXXXXXX    DEFINE RETURN CODE FROM GETFILENAME METHOD

           POW-CDOK                     is 1
           POW-CDCANCEL                 is 2

      *****POW-MBXXXXXX    DEFINE ALARM TYPE FOR ALARM METHOD

           POW-MBOK                     is 0
           POW-MBHAND                   is 16         *>0x0010
           POW-MBSTOP                   is 16         *>0x0010
           POW-MBERROR                  is 16         *>0x0010
           POW-MBQUESTION               is 32         *>0x0020
           POW-MBEXCLAMATION            is 48         *>0x0030
           POW-MBWARNING                is 48         *>0x0030
           POW-MBASTERISK               is 64         *>0x0040
           POW-MBINFORMATION            is 64         *>0x0040
           POW-MBSTANDARD               is -1         *>0xFFFFFFFF

      *****pow-mp-xxxx  define mousepointer type for mousepointer property
           pow-mp-default                is 0
           pow-mp-arrow                  is 1
           pow-mp-cross                  is 2
           pow-mp-ibeam                  is 3
           pow-mp-icon                   is 4
           pow-mp-size                   is 5
           pow-mp-sizenesw               is 6
           pow-mp-sizens                 is 7
           pow-mp-sizenwse               is 8
           pow-mp-sizewe                 is 9
           pow-mp-uparrow                is 10
           pow-mp-wait                   is 11
           pow-mp-appstarting            is 12
           pow-mp-no                     is 13
           pow-mp-sizeall                is 14
           pow-mp-help                   is 15
           pow-mp-custom                 is 99

      *****pow-icon-xxxx  define icon type for icon property
           pow-icon-default              is 0
           pow-icon-application          is 1
           pow-icon-hand                 is 2
           pow-icon-question             is 3
           pow-icon-exclamation          is 4
           pow-icon-asterisk             is 5
           pow-icon-winlogo              is 6
           pow-icon-custom               is 99

      *****pow-size-xxxx  define size type for resized event
           pow-size-restored             is 0
           pow-size-minimized            is 1
           pow-size-maximized            is 2

                DECIMAL-POINT IS COMMA.
      *
      ** end copy
      *


# Maîtrise de poste : Day 1

> First Day

## 1 : Self-footprinting


### Host OS :

Nom de la machine ->

```
PS C:\Users\DIRECTEUR_PC2> hostname

DIRECTEUR-PC2
```
Version de l'OS :
```
C:\Users\DIRECTEUR_PC2>ver

Microsoft Windows [version 10.0.19041.508]
```
Architecture : 
```
PS C:\Users\DIRECTEUR_PC2> wmic os get osarchitecture

OSArchitecture
64 bits
```
Informations RAM :
```
PS C:\Users\DIRECTEUR_PC2> wmic memorychip get partnumber,capacity

Capacity     PartNumber
17179869184  CM4X16GE2666C18S4
```

### Devices :

Informations CPU (I7 10th Gen (H->for laptops)):
```
PS C:\Users\DIRECTEUR_PC2> wmic cpu get name,numberofcores

Name                                       NumberOfCores
Intel(R) Core(TM) i7-10750H CPU @ 2.60GHz  6
```
Informations GPU :
```
PS C:\Users\DIRECTEUR_PC2> wmic path win32_VideoController get name

Name
NVIDIA GeForce GTX 1650
Intel(R) UHD Graphics
```
Informations Disque :

Volume 0 = Fichiers système et personnels
Volume 1 = Partition de boot (BOOTMGR)
```
PS C:\Users\DIRECTEUR_PC2> DISKPART

Microsoft DiskPart version 10.0.19041.1

Copyright (C) Microsoft Corporation.
Sur l’ordinateur : DIRECTEUR-PC2

DISKPART> list volume

  N° volume   Ltr  Nom          Fs     Type        Taille   Statut     Info
  ----------  ---  -----------  -----  ----------  -------  ---------  --------
  Volume 0         Réservé au   NTFS   Partition     50 M   Sain       Système
  Volume 1     C                NTFS   Partition    953 G   Sain       Démarrage
```
```
PS C:\Users\DIRECTEUR_PC2> wmic diskdrive get model,size,mediaType

MediaType              Model                 Size
Fixed hard disk media  1TB PCS PCIe M.2 SSD  1024203640320
```
### Users :
Liste des utilisatuers :
```
PS C:\Users\DIRECTEUR_PC2> net user

Comptes d’utilisateurs de \\DIRECTEUR-PC2

-------------------------------------------------------------------------------
Administrateur           DefaultAccount           DIRECTEUR_PC2
Invité                   WDAGUtilityAccount
La commande s’est terminée correctement.
```
Nom du compte full admin -> LocalSystem
## Processus :

Liste des taches :
```
PS C:\Users\DIRECTEUR_PC2> tasklist /v

Nom de l’image                 PID Nom de la session  Numéro de s  Utilisation  État         Nom d’utilisateur                                  Temps proces Titre de la fenêtre
========================= ======== ================ =========== ============ =============== ================================================== ============ ====================================================
System Idle Process              0 Services                   0         8 Ko Unknown         AUTORITE NT\Système                                   130:55:16 N/A
System                           4 Services                   0     2 108 Ko Unknown         N/A
                             0:14:15 N/A
Secure System                   88 Services                   0    40 536 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
Registry                       156 Services                   0   102 156 Ko Unknown         AUTORITE NT\Système                                     0:00:01 N/A
smss.exe                       556 Services                   0     1 152 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
csrss.exe                      804 Services                   0     5 864 Ko Unknown         AUTORITE NT\Système                                     0:00:16 N/A
wininit.exe                    920 Services                   0     6 544 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
csrss.exe                      928                            1     6 452 Ko Unknown         AUTORITE NT\Système                                     0:00:32 N/A
services.exe                   992 Services                   0     9 872 Ko Unknown         AUTORITE NT\Système                                     0:00:11 N/A
LsaIso.exe                    1000 Services                   0     2 260 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
lsass.exe                     1020 Services                   0    26 240 Ko Unknown         AUTORITE NT\Système                                     0:00:16 N/A
svchost.exe                   1116 Services                   0     1 980 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   1160 Services                   0    35 316 Ko Unknown         AUTORITE NT\Système                                     0:00:17 N/A
fontdrvhost.exe               1204 Services                   0     3 080 Ko Unknown         Font Driver Host\UMFD-0                                 0:00:00 N/A
svchost.exe                   1308 Services                   0    21 460 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:33 N/A
svchost.exe                   1356 Services                   0     8 360 Ko Unknown         AUTORITE NT\Système                                     0:00:01 N/A
svchost.exe                   1552 Services                   0     3 640 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   1580 Services                   0     6 140 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
svchost.exe                   1588 Services                   0    10 568 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
svchost.exe                   1596 Services                   0     9 228 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
svchost.exe                   1688 Services                   0     9 660 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   1696 Services                   0    10 876 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
svchost.exe                   1740 Services                   0    14 184 Ko Unknown         AUTORITE NT\Système                                     0:00:05 N/A
svchost.exe                   1832 Services                   0     7 388 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   1880 Services                   0    14 028 Ko Unknown         AUTORITE NT\Système                                     0:00:02 N/A
svchost.exe                   1896 Services                   0     5 168 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   1928 Services                   0     4 504 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
svchost.exe                   1028 Services                   0    17 776 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:02 N/A
svchost.exe                   1576 Services                   0     9 800 Ko Unknown         AUTORITE NT\Système                                     0:00:04 N/A
svchost.exe                   2168 Services                   0     8 608 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:01 N/A
svchost.exe                   2244 Services                   0     6 492 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:01 N/A
svchost.exe                   2344 Services                   0     6 864 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
NVDisplay.Container.exe       2352 Services                   0    14 744 Ko Unknown         AUTORITE NT\Système                                     0:00:01 N/A
svchost.exe                   2428 Services                   0    11 912 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:02 N/A
dasHost.exe                   2468 Services                   0     8 396 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
svchost.exe                   2504 Services                   0     5 880 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
svchost.exe                   2568 Services                   0    12 368 Ko Unknown         AUTORITE NT\Système                                     0:00:49 N/A
svchost.exe                   2576 Services                   0     4 240 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   2584 Services                   0     6 408 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
svchost.exe                   2648 Services                   0     9 668 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:04 N/A
Memory Compression            2736 Services                   0   166 488 Ko Unknown         AUTORITE NT\Système                                     0:00:15 N/A
svchost.exe                   2776 Services                   0    10 816 Ko Unknown         AUTORITE NT\Système
                             0:00:03 N/A
svchost.exe                   2796 Services                   0     7 740 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
igfxCUIService.exe            2876 Services                   0     8 024 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   2888 Services                   0    15 368 Ko Unknown         AUTORITE NT\Système                                     0:00:37 N/A
svchost.exe                   2952 Services                   0     7 024 Ko Unknown         AUTORITE NT\Système                                     0:00:01 N/A
svchost.exe                   2960 Services                   0     8 912 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:03 N/A
svchost.exe                   3012 Services                   0    11 288 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   2852 Services                   0     5 524 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   3124 Services                   0    17 888 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:03 N/A
svchost.exe                   3216 Services                   0     5 960 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   3424 Services                   0     7 692 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
svchost.exe                   3464 Services                   0    20 292 Ko Unknown         AUTORITE NT\Système                                     0:00:12 N/A
svchost.exe                   3524 Services                   0    14 112 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:03 N/A
WmiPrvSE.exe                  3660 Services                   0    27 820 Ko Unknown         AUTORITE NT\Système                                     0:00:18 N/A
svchost.exe                   3824 Services                   0     5 392 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
svchost.exe                   3832 Services                   0     8 324 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:10 N/A
svchost.exe                   3840 Services                   0     8 676 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:01 N/A
svchost.exe                   4048 Services                   0     6 928 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:03 N/A
svchost.exe                   3040 Services                   0    18 760 Ko Unknown         AUTORITE NT\Système                                     0:00:03 N/A
svchost.exe                   4116 Services                   0     7 532 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
svchost.exe                   4168 Services                   0    12 892 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
spoolsv.exe                   4228 Services                   0    14 484 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   4336 Services                   0     6 680 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:00 N/A
dasHost.exe                   4384 Services                   0     3 168 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:00 N/A
svchost.exe                   4512 Services                   0    28 136 Ko Unknown         AUTORITE NT\Système                                     0:00:05 N/A
svchost.exe                   4532 Services                   0     7 452 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
GCUBridge.exe                 4556 Services                   0    64 188 Ko Unknown         AUTORITE NT\Système                                     0:00:08 N/A
svchost.exe                   4564 Services                   0    13 196 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:01 N/A
AnyDesk.exe                   4548 Services                   0    26 384 Ko Unknown         AUTORITE NT\Système                                     0:00:01 N/A
svchost.exe                   4572 Services                   0    51 784 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:27 N/A
IntelCpHDCPSvc.exe            4580 Services                   0     6 276 Ko Unknown         AUTORITE NT\Système
                             0:00:00 N/A
EwServer.exe                  4588 Services                   0     4 780 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
firebird.exe                  4596 Services                   0    19 924 Ko Unknown         AUTORITE NT\Système                                     0:28:21 N/A
FNPLicensingService64.exe     4604 Services                   0    10 424 Ko Unknown         AUTORITE NT\Système                                     0:00:02 N/A
svchost.exe                   4612 Services                   0     9 888 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
FNPLicensingService.exe       4632 Services                   0    10 744 Ko Unknown         AUTORITE NT\Système                                     0:00:02 N/A
LMS.exe                       4656 Services                   0    11 724 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
OfficeClickToRun.exe          4664 Services                   0    47 376 Ko Unknown         AUTORITE NT\Système                                     0:00:03 N/A
sqlservr.exe                  4776 Services                   0   100 024 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:17:18 N/A
remotesolverdispatcherser     4792 Services                   0     4 124 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
PsiService_2.exe              4820 Services                   0     5 496 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   4856 Services                   0     7 832 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   4864 Services                   0     4 776 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
RtkAudUService64.exe          4944 Services                   0     8 348 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
RstMwService.exe              4960 Services                   0     5 736 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
Altium.DxpAppServer.SrvPn     4972 Services                   0    50 924 Ko Unknown         AUTORITE NT\Système                                     0:00:09 N/A
svnserve.exe                  5008 Services                   0     6 864 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   5032 Services                   0    11 356 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:01 N/A
svchost.exe                   5064 Services                   0     6 008 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
svchost.exe                   5096 Services                   0     4 440 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
SWVisualize.Queue.Server.     5104 Services                   0    40 788 Ko Unknown         AUTORITE NT\Système                                     0:00:11 N/A
sqlwriter.exe                 5116 Services                   0     6 580 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
SWVisualize.BoostService.     5128 Services                   0    99 048 Ko Unknown         AUTORITE NT\Système                                     0:00:42 N/A
sqlbrowser.exe                5152 Services                   0     4 396 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
VSSrv.exe                     5164 Services                   0     7 688 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   5176 Services                   0    21 640 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   5184 Services                   0    10 116 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
MsMpEng.exe                   5192 Services                   0   210 868 Ko Unknown         AUTORITE NT\Système                                     0:07:58 N/A
svchost.exe                   5268 Services                   0     3 872 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
jhi_service.exe               5316 Services                   0     3 872 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
wlanext.exe                   5468 Services                   0     4 688 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
dispatcher.exe                5604 Services                   0     5 080 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
conhost.exe                   5624 Services                   0     4 460 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
IntelCpHeciSvc.exe            5652 Services                   0     5 776 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
conhost.exe                   5864 Services                   0     6 668 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
lmgrd.exe                     6044 Services                   0     6 564 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   6068 Services                   0    11 336 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
conhost.exe                   6516 Services                   0     6 768 Ko Unknown         AUTORITE NT\Système                                     0:00:01 N/A
lmgrd.exe                     6652 Services                   0     8 512 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   6616 Services                   0     6 116 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:00 N/A
NisSrv.exe                    8256 Services                   0     9 472 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:01 N/A
w3wp.exe                      8440 Services                   0    33 052 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:07 N/A
w3wp.exe                      8596 Services                   0    16 820 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:00 N/A
w3wp.exe                      8824 Services                   0    25 204 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:14:54 N/A
w3wp.exe                      9064 Services                   0    32 816 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:07:17 N/A
w3wp.exe                      9400 Services                   0    51 472 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:05 N/A
svchost.exe                   4500 Services                   0    10 952 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
w3wp.exe                      4484 Services                   0    90 228 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:08 N/A
dllhost.exe                   2268 Services                   0    10 232 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
w3wp.exe                     11256 Services                   0    56 112 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:05 N/A
w3wp.exe                     10712 Services                   0    59 100 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:04 N/A
w3wp.exe                     11164 Services                   0    86 288 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:14 N/A
w3wp.exe                     10848 Services                   0    55 432 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:05 N/A
svchost.exe                   5856 Services                   0    21 704 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:01 N/A
svchost.exe                   3160 Services                   0    16 836 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:04 N/A
svchost.exe                   6104 Services                   0    11 088 Ko Unknown         AUTORITE NT\Système                                     0:00:03 N/A
IAStorDataMgrSvc.exe          4844 Services                   0    55 940 Ko Unknown         AUTORITE NT\Système                                     0:00:01 N/A
SgrmBroker.exe                8604 Services                   0     8 244 Ko Unknown         AUTORITE NT\Système                                     0:00:02 N/A
svchost.exe                   2732 Services                   0    19 308 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   9344 Services                   0    11 588 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
SearchIndexer.exe             2204 Services                   0    60 624 Ko Unknown         AUTORITE NT\Système                                     0:00:58 N/A
PresentationFontCache.exe     8456 Services                   0    18 096 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
svchost.exe                   4752 Services                   0    16 492 Ko Unknown         AUTORITE NT\Système                                     0:00:13 N/A
svchost.exe                   1960 Services                   0     8 044 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
SecurityHealthService.exe     9280 Services                   0    17 376 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                  15980 Services                   0    12 424 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                  15056 Services                   0    12 800 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
svchost.exe                  16416 Services                   0    12 156 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   3600 Services                   0    17 764 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                   8148 Services                   0    12 172 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
svchost.exe                  12144 Services                   0    23 628 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
csrss.exe                     6784                            2     6 464 Ko Unknown         AUTORITE NT\Système                                     0:00:07 N/A
csrss.exe                    15700 Console                    3     7 040 Ko Running         AUTORITE NT\Système                                     0:02:47 N/A
winlogon.exe                 12584 Console                    3    11 380 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
fontdrvhost.exe              18004 Console                    3    12 944 Ko Unknown         Font Driver Host\UMFD-3                                 0:00:00 N/A
dwm.exe                      12080 Console                    3   167 312 Ko Running         Window Manager\DWM-3                                    0:09:11 DWM Notification Window
NVDisplay.Container.exe      13964 Console                    3    37 228 Ko Running         AUTORITE NT\Système                                     0:00:04 UxdService
VSHelper.exe                 17380 Console                    3     8 764 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
sihost.exe                   20252 Console                    3    30 492 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:03 N/A
svchost.exe                   9844 Console                    3    28 432 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:12 N/A
svchost.exe                  18284 Console                    3     8 496 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
igfxEM.exe                    6696 Console                    3    26 148 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 The Event Manager Dashboard
svchost.exe                   7840 Console                    3    36 840 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:03 Windows Push Notifications Platform
taskhostw.exe                 5828 Console                    3    19 240 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 Task Host Window
ctfmon.exe                    9008 Console                    3    39 936 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:20 N/A
svchost.exe                   6404 Console                    3    34 824 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:01 OLEChannelWnd
RuntimeBroker.exe             8708 Console                    3    26 080 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:02 N/A
RuntimeBroker.exe            14772 Console                    3    45 908 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:03 N/A
sw_d.exe                     10024 Services                   0    12 248 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
SettingSyncHost.exe          16812 Console                    3     8 904 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:01 N/A
svchost.exe                  19132 Services                   0    11 184 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
GCUService.exe               20344 Console                    3   112 744 Ko Running         AUTORITE NT\Système                                     0:00:05 N/A
RuntimeBroker.exe             6924 Console                    3    25 136 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:02 N/A
svchost.exe                  13140 Services                   0     5 836 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
RuntimeBroker.exe            14692 Console                    3    14 868 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
OSDTpDetect.exe              11464 Console                    3    37 308 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 SystemResourceNotifyWindow
OSDTpDetect.exe               5436 Console                    3    45 320 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:01 SystemResourceNotifyWindow
svchost.exe                  16656 Console                    3    21 684 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
YourPhone.exe                14872 Console                    3    12 432 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
RuntimeBroker.exe             3264 Console                    3    27 400 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
SecurityHealthSystray.exe    19272 Console                    3     9 488 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
RtkAudUService64.exe          8792 Console                    3     8 828 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 RealtekAudioBackgroundProcessClass
OneDrive.exe                 16352 Console                    3    66 504 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:08 GDI+ Window (OneDrive.exe)
CCleaner64.exe               18868 Console                    3    11 876 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:01 CCleaner - FREE FOR HOME USE
Teams.exe                     1156 Console                    3   149 668 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:25 Réunion démo Outils | Microsoft Teams
Discord.exe                   8328 Console                    3    76 692 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:15 #su-25 - Discord
Discord.exe                   2224 Console                    3   122 628 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:18 N/A
Discord.exe                  18252 Console                    3    40 700 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:04 N/A
Teams.exe                     4828 Console                    3    85 612 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
Teams.exe                     4756 Console                    3    58 008 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
Teams.exe                     8920 Console                    3   454 836 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:29 N/A
chrome.exe                   13700 Console                    3   324 640 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:08:18 Maîtrise de poste : Day 1 - HackMD - Google Chrome
chrome.exe                   17068 Console                    3     7 268 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
chrome.exe                   11964 Console                    3   312 500 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:03:42 N/A
chrome.exe                     644 Console                    3    42 092 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:27 N/A
Discord.exe                     32 Console                    3    51 812 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
chrome.exe                    4980 Console                    3   121 620 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:47 N/A
chrome.exe                   10428 Console                    3   174 992 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:19 N/A
chrome.exe                   13260 Console                    3    47 308 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:02 N/A
chrome.exe                   19708 Console                    3    39 548 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
chrome.exe                   18908 Console                    3   127 204 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:06:15 N/A
Discord.exe                   8484 Console                    3   259 264 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:03:52 OLEChannelWnd
Discord.exe                    264 Console                    3    57 220 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
Teams.exe                    11056 Console                    3   139 580 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2
                             0:00:05 wndProcClass
Cortana.exe                  12864 Console                    3    71 928 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
RuntimeBroker.exe            11956 Console                    3    23 436 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
sldworks_fs.exe              16600 Console                    3    58 736 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:02 sldworks_fs
sldBgDwld.exe                20384 Console                    3    21 096 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:30 N/A
jusched.exe                   7984 Console                    3     7 788 Ko Not Responding  DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 OleMainThreadWndName
OUTLOOK.EXE                   4132 Console                    3   188 548 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:16 Boîte de réception - fabian.ingremeau@outlook.com - Outlook
Teams.exe                     7748 Console                    3   174 840 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:04 N/A
SpeechRuntime.exe            11448 Console                    3    18 328 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 CSpThreadTask Window
IAStorIcon.exe               17840 Console                    3    39 980 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
RuntimeBroker.exe            11352 Console                    3    14 388 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
ApplicationFrameHost.exe     21228 Console                    3    45 492 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:01 Boîte de réception - Outlook ‎- Courrier
WinStore.App.exe             16012 Console                    3     2 824 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:01 Microsoft Store
RuntimeBroker.exe            17264 Console                    3    21 100 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
svchost.exe                  15560 Services                   0    15 688 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
Time.exe                     15100 Console                    3     2 260 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 Alarmes et horloge
Calculator.exe               18388 Console                    3     2 252 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 Calculatrice
SystemSettings.exe           19248 Console                    3     2 112 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 Paramètres
dllhost.exe                  20524 Console                    3    17 240 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2
                             0:00:00 OleMainThreadWndName
WINWORD.EXE                   2332 Console                    3   206 196 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:04:12 TP1.md - Word
FileCoAuth.exe               11740 Console                    3    21 276 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:01 OleMainThreadWndName
svchost.exe                  20620 Services                   0     6 292 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
vds.exe                      12056 Services                   0    12 788 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
explorer.exe                  4892 Console                    3    69 556 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:38 N/A
TextInputHost.exe            20816 Console                    3    50 380 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:01 Microsoft Text Input Application
StartMenuExperienceHost.e     4724 Console                    3    63 472 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:01 Démarrer
SearchApp.exe                15848 Console                    3   276 224 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:12 Recherche
ShellExperienceHost.exe      13576 Console                    3    94 248 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:04 Nouvelle notification
chrome.exe                   18504 Console                    3    15 088 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
svchost.exe                  11752 Console                    3     8 968 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
SystemSettingsBroker.exe     21240 Console                    3    32 000 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
UserOOBEBroker.exe            5460 Console                    3     8 968 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
HxOutlook.exe                19900 Console                    3     1 504 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 Courrier
RuntimeBroker.exe             7324 Console                    3    18 936 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
HxTsr.exe                     7824 Console                    3     9 552 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
dllhost.exe                  19980 Console                    3     8 628 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 OleMainThreadWndName
vmcompute.exe                 2856 Services                   0    10 888 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
mspaint.exe                   3680 Console                    3     2 008 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:10 Sans titre - Paint
WindowsTerminal.exe          15052 Console                    3    15 128 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:23 Administrateur : Windows PowerShell
svchost.exe                    876 Services                   0    10 496 Ko Unknown         AUTORITE NT\Système                                     0:00:00 N/A
OpenConsole.exe              14104 Console                    3       952 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
powershell.exe               12796 Console                    3     1 396 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:02 OleMainThreadWndName
chrome.exe                   12460 Console                    3   175 152 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:03:23 N/A
chrome.exe                   21396 Console                    3    49 652 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
WindowsTerminal.exe           7188 Console                    3    41 860 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:10 Administrateur : Windows PowerShell
OpenConsole.exe              13808 Console                    3     1 536 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
powershell.exe               15764 Console                    3    25 740 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:01 OleMainThreadWndName
OpenConsole.exe               4256 Console                    3     1 964 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
cmd.exe                      16864 Console                    3     2 440 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
smartscreen.exe              16816 Console                    3    22 652 Ko Running         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 OleMainThreadWndName
audiodg.exe                  10488 Services                   0    17 312 Ko Unknown         AUTORITE NT\SERVICE LOCAL                               0:00:00 N/A
Teams.exe                    11004 Console                    3    70 304 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
chrome.exe                    5744 Console                    3    85 264 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:02 N/A
chrome.exe                    4364 Console                    3    22 048 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
tasklist.exe                 15648 Console                    3    10 304 Ko Unknown         DIRECTEUR-PC2\DIRECTEUR_PC2                             0:00:00 N/A
WmiPrvSE.exe                 21120 Services                   0     9 892 Ko Unknown         AUTORITE NT\SERVICE RÉSEAU                              0:00:00 N/A
```

explorer.exe -> Gestionnaire de fichiers
csrss.exe -> Gestion de la console win32
svchost.exe -> Lien vers les bibliothèques windows (.dll)
wininit.exe -> Service d’initialisation de windows
winlogon.exe -> Service de connexion de l’utilisaeur

Les processus full admin sont ceux qui ont AUTORITE NT\ dans la collone Nom d'utilisateur

## Network :

```
PS C:\Users\DIRECTEUR_PC2> Get-NetAdapter

Name                      InterfaceDescription                    ifIndex Status       MacAddress             LinkSpeed
----                      --------------------                    ------- ------       ----------             ---------
Ethernet                  Realtek PCIe GbE Family Controller           10 Disconnected XX-XX-XX-XX-XX-XX          0 bps
Connexion réseau Bluet... Bluetooth Device (Personal Area Netw...       9 Disconnected XX-XX-XX-XX-XX-XX         3 Mbps
vEthernet (WSL)           Hyper-V Virtual Ethernet Adapter             43 Up           XX-XX-XX-XX-XX-XX        10 Gbps
Wi-Fi                     Intel(R) Wi-Fi 6 AX201 160MHz                 7 Up           XX-XX-XX-XX-XX-XX       400 Mbps
```
1.Port Ethernet / 2.Bluetooth / 3.Connexion WSL / 4.Carte Wifi

Liste des ports :
```
PS C:\Users\DIRECTEUR_PC2> netstat -p udp -a -n -b

Connexions actives

  Proto  Adresse locale         Adresse distante       État
  UDP    0.0.0.0:53             *:*
  SharedAccess
 [svchost.exe]
  UDP    0.0.0.0:1434           *:*
 [sqlbrowser.exe]
  UDP    0.0.0.0:3702           *:*
 [dashost.exe]
  UDP    0.0.0.0:3702           *:*
 [dashost.exe]
  UDP    0.0.0.0:5050           *:*
  CDPSvc
 [svchost.exe]
  UDP    0.0.0.0:5353           *:*
  Dnscache
 [svchost.exe]
  UDP    0.0.0.0:5353           *:*
 [chrome.exe]
  UDP    0.0.0.0:5353           *:*
 [chrome.exe]
  UDP    0.0.0.0:5353           *:*
 [chrome.exe]
  UDP    0.0.0.0:5353           *:*
 [chrome.exe]
  UDP    0.0.0.0:5355           *:*
  Dnscache
 [svchost.exe]
  UDP    0.0.0.0:8991           *:*
 [SWVisualize.BoostService.exe]
  UDP    0.0.0.0:8995           *:*
  UDP    0.0.0.0:50001          *:*
 [AnyDesk.exe]
  UDP    0.0.0.0:50798          *:*
 [Teams.exe]
  UDP    0.0.0.0:54764          *:*
 [dashost.exe]
  UDP    0.0.0.0:62712          *:*
 [Teams.exe]
  UDP    0.0.0.0:65124          *:*
  SharedAccess
 [svchost.exe]
  UDP    0.0.0.0:65125          *:*
  SharedAccess
 [svchost.exe]
  UDP    10.33.1.164:137        *:*
 Impossible d’obtenir les informations de propriétaire
  UDP    10.33.1.164:138        *:*
 Impossible d’obtenir les informations de propriétaire
  UDP    10.33.1.164:1900       *:*
  SSDPSRV
 [svchost.exe]
  UDP    10.33.1.164:64521      *:*
  SSDPSRV
 [svchost.exe]
  UDP    127.0.0.1:1900         *:*
  SSDPSRV
 [svchost.exe]
  UDP    127.0.0.1:49668        *:*
  iphlpsvc
 [svchost.exe]
  UDP    127.0.0.1:50478        *:*
  NlaSvc
 [svchost.exe]
  UDP    127.0.0.1:63137        *:*
 [WINWORD.EXE]
  UDP    127.0.0.1:64522        *:*
  SSDPSRV
 [svchost.exe]
  UDP    172.28.208.1:137       *:*
 Impossible d’obtenir les informations de propriétaire
  UDP    172.28.208.1:138       *:*
 Impossible d’obtenir les informations de propriétaire
  UDP    172.28.208.1:1900      *:*
  SSDPSRV
 [svchost.exe]
  UDP    172.28.208.1:64523     *:*
  SSDPSRV
 [svchost.exe]
  UDP    192.168.1.32:60691     *:*
 [SWVisualize.BoostService.exe]
```
svchost.exe -> Hote pour les bibliothèques de liens dynamiques (.dll)
sqlbrowser.exe -> Hote de serveur SQL
dashost.exe -> Connexions périphériques
chrome.exe -> Navigateur chrome
SWVisualize.BoostService.exe -> Logiciel Solidworks
AnyDesk.exe -> AnyDesk (https://anydesk.com/fr)
Teams.exe ->  Teams (https://www.microsoft.com/fr-fr/microsoft-365/microsoft-teams/group-chat-software)
WINWORD.EXE -> Microsoft Word

```
PS C:\Users\DIRECTEUR_PC2> netstat -p tcp -a -n -b

Connexions actives

  Proto  Adresse locale         Adresse distante       État
  TCP    0.0.0.0:80             0.0.0.0:0              LISTENING
 Impossible d’obtenir les informations de propriétaire
  TCP    0.0.0.0:135            0.0.0.0:0              LISTENING
  RpcSs
 [svchost.exe]
  TCP    0.0.0.0:445            0.0.0.0:0              LISTENING
 Impossible d’obtenir les informations de propriétaire
  TCP    0.0.0.0:3690           0.0.0.0:0              LISTENING
 [svnserve.exe]
  TCP    0.0.0.0:5040           0.0.0.0:0              LISTENING
  CDPSvc
 [svchost.exe]
  TCP    0.0.0.0:7070           0.0.0.0:0              LISTENING
 [AnyDesk.exe]
  TCP    0.0.0.0:7680           0.0.0.0:0              LISTENING
 Impossible d’obtenir les informations de propriétaire
  TCP    0.0.0.0:8000           0.0.0.0:0              LISTENING
 Impossible d’obtenir les informations de propriétaire
  TCP    0.0.0.0:8028           0.0.0.0:0              LISTENING
 Impossible d’obtenir les informations de propriétaire
  TCP    0.0.0.0:8996           0.0.0.0:0              LISTENING
 Impossible d’obtenir les informations de propriétaire
  TCP    0.0.0.0:8998           0.0.0.0:0              LISTENING
 [SWVisualize.BoostService.exe]
  TCP    0.0.0.0:9780           0.0.0.0:0              LISTENING
 Impossible d’obtenir les informations de propriétaire
  TCP    0.0.0.0:9785           0.0.0.0:0              LISTENING
 Impossible d’obtenir les informations de propriétaire
  TCP    0.0.0.0:13688          0.0.0.0:0              LISTENING
 [GCUBridge.exe]
  TCP    0.0.0.0:25734          0.0.0.0:0              LISTENING
 [lmgrd.exe]
  TCP    0.0.0.0:26666          0.0.0.0:0              LISTENING
 [EwServer.exe]
  TCP    0.0.0.0:30950          0.0.0.0:0              LISTENING
 [dispatcher.exe]
  TCP    0.0.0.0:49664          0.0.0.0:0              LISTENING
 [lsass.exe]
  TCP    0.0.0.0:49665          0.0.0.0:0              LISTENING
 Impossible d’obtenir les informations de propriétaire
  TCP    0.0.0.0:49666          0.0.0.0:0              LISTENING
  EventLog
 [svchost.exe]
  TCP    0.0.0.0:49667          0.0.0.0:0              LISTENING
  Schedule
 [svchost.exe]
  TCP    0.0.0.0:49668          0.0.0.0:0              LISTENING
 [spoolsv.exe]
  TCP    0.0.0.0:49692          0.0.0.0:0              LISTENING
 Impossible d’obtenir les informations de propriétaire
  TCP    0.0.0.0:49827          0.0.0.0:0              LISTENING
 [sqlservr.exe]
  TCP    0.0.0.0:59163          0.0.0.0:0              LISTENING
 [SW_D.exe]
  TCP    10.33.1.164:139        0.0.0.0:0              LISTENING
 Impossible d’obtenir les informations de propriétaire
  TCP    10.33.1.164:49459      151.101.129.69:443     ESTABLISHED
 [chrome.exe]
  TCP    10.33.1.164:49492      198.252.206.25:443     ESTABLISHED
 [chrome.exe]
  TCP    10.33.1.164:49533      52.113.199.114:443     ESTABLISHED
 [Teams.exe]
  TCP    10.33.1.164:49539      13.107.42.12:443       ESTABLISHED
 [OneDrive.exe]
  TCP    10.33.1.164:49540      20.150.36.228:443      ESTABLISHED
 [OneDrive.exe]
  TCP    10.33.1.164:51572      52.113.199.199:443     ESTABLISHED
 [Teams.exe]
  TCP    10.33.1.164:52412      74.125.71.188:5228     ESTABLISHED
 [chrome.exe]
  TCP    10.33.1.164:52413      52.113.199.211:443     ESTABLISHED
 [Teams.exe]
  TCP    10.33.1.164:52572      18.179.225.220:443     ESTABLISHED
 [chrome.exe]
  TCP    10.33.1.164:52592      40.67.251.132:443      ESTABLISHED
 [OneDrive.exe]
  TCP    10.33.1.164:59163      10.33.1.164:62266      ESTABLISHED
 [SW_D.exe]
  TCP    10.33.1.164:59174      116.202.208.24:80      ESTABLISHED
 [AnyDesk.exe]
  TCP    10.33.1.164:59179      40.67.251.132:443      ESTABLISHED
  WpnService
 [svchost.exe]
  TCP    10.33.1.164:59236      162.159.133.234:443    ESTABLISHED
 [Discord.exe]
  TCP    10.33.1.164:59259      35.186.224.47:443      ESTABLISHED
 [Discord.exe]
  TCP    10.33.1.164:62205      23.57.5.23:443         CLOSE_WAIT
 [WinStore.App.exe]
  TCP    10.33.1.164:62206      23.57.5.23:443         CLOSE_WAIT
 [WinStore.App.exe]
  TCP    10.33.1.164:62207      23.57.5.23:443         CLOSE_WAIT
 [WinStore.App.exe]
  TCP    10.33.1.164:62211      23.57.6.200:80         CLOSE_WAIT
 [WinStore.App.exe]
  TCP    10.33.1.164:62213      23.57.5.23:443         CLOSE_WAIT
 [WinStore.App.exe]
  TCP    10.33.1.164:62214      23.57.5.23:443         CLOSE_WAIT
 [WinStore.App.exe]
  TCP    10.33.1.164:62215      23.57.5.23:443         CLOSE_WAIT
 [WinStore.App.exe]
  TCP    10.33.1.164:62234      23.57.5.23:443         CLOSE_WAIT
 [WinStore.App.exe]
  TCP    10.33.1.164:62266      10.33.1.164:59163      ESTABLISHED
 [SWVisualize.BoostService.exe]
  TCP    127.0.0.1:3050         0.0.0.0:0              LISTENING
 [firebird.exe]
  TCP    127.0.0.1:6463         0.0.0.0:0              LISTENING
 [Discord.exe]
  TCP    127.0.0.1:25734        127.0.0.1:59167        ESTABLISHED
 [lmgrd.exe]
  TCP    127.0.0.1:59165        127.0.0.1:59166        ESTABLISHED
 [SW_D.exe]
  TCP    127.0.0.1:59166        127.0.0.1:59165        ESTABLISHED
 [SW_D.exe]
  TCP    127.0.0.1:59167        127.0.0.1:25734        ESTABLISHED
 [SW_D.exe]
  TCP    172.28.208.1:139       0.0.0.0:0              LISTENING
 Impossible d’obtenir les informations de propriétaire
  TCP    192.168.1.32:8995      0.0.0.0:0              LISTENING
 [SWVisualize.BoostService.exe]
  TCP    192.168.1.32:10000     0.0.0.0:0              LISTENING
 [SWVisualize.BoostService.exe]
  TCP    192.168.1.32:10001     0.0.0.0:0              LISTENING
 [SWVisualize.BoostService.exe]
```

svnserve.exe -> Collabnet Subversion Server
GCUBridge.exe -> Builtin PC Control Software
lmgrd.exe -> Gestionnaire de license Solidworks
EwServer.exe -> SolidWorks Electrical
dispatcher.exe -> SolidWorks Flow Simulation
lsass.exe -> Authentification des utilisateurs
spoolsv.exe -> Service spooler d'impression
SW_D.exe -> Solidworks (https://www.solidworks.com/fr)
OneDrive.exe -> One Drive
Discord.exe -> Discord (https://discord.com/)
WinStore.App.exe -> Une application Windows Store
firebird.exe -> Base de données SQL (https://www.firebirdsql.org/en/firebird-3-0/)

## Scripting : 

Script 1 : .\script.ps1
Script 2 : .\script.bat

## Gestion de softs :

Un gestionnnaire de paquets sert à automatiser l'installation et la désinstallation de logiciels. Tout est beaucoup plus rapide, les paquets ont vérifiés et donc dépourvus de logiciels malveilants.

Liste des paquets : 
```
PS C:\Users\DIRECTEUR_PC2> choco list -l
Chocolatey v0.10.15
chocolatey 0.10.15
1 packages installed.
```

Provenance des paquets : 
```
PS C:\Users\DIRECTEUR_PC2> choco source
Chocolatey v0.10.15
chocolatey - https://chocolatey.org/api/v2/ | Priority 0|Bypass Proxy - False|Self-Service - False|Admin Only - False.
```

## Virtual Machine :

Connection SSH : 

```
PS C:\Users\DIRECTEUR_PC2> ssh neva@192.168.34.3
neva@192.168.34.3's password:
Last login: Mon Nov  9 17:18:59 2020 from 192.168.34.1
[neva@centos7v2003 ~]$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:88:3a:0b brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global noprefixroute dynamic enp0s3
       valid_lft 86222sec preferred_lft 86222sec
    inet6 fe80::f7f6:fd98:6c5e:3090/64 scope link noprefixroute
       valid_lft forever preferred_lft forever
3: enp0s8: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:e9:38:14 brd ff:ff:ff:ff:ff:ff
    inet 192.168.34.3/24 brd 192.168.34.255 scope global noprefixroute dynamic enp0s8
       valid_lft 448sec preferred_lft 448sec
    inet6 fe80::7476:ce87:9036:4237/64 scope link noprefixroute
       valid_lft forever preferred_lft forever
[neva@centos7v2003 ~]$
```

Partage de fichier : 

```
PS C:\Users\DIRECTEUR_PC2> ssh neva@192.168.34.3
neva@192.168.34.3's password:
Last login: Mon Nov  9 17:21:01 2020 from 192.168.34.1
[neva@centos7v2003 ~]$ sudo mount -t cifs -o username=DIRECTEUR_PC2,password=***** //192.168.120.2/nevaShare /opt/partage
[sudo] password for neva:
[neva@centos7v2003 ~]$ cd /opt/partage
[neva@centos7v2003 partage]$ ls
file.txt
[neva@centos7v2003 partage]$ cat file.txt
UN PARTAGE DE FICHIER ![neva@centos7v2003 partage]$
```
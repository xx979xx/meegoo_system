��    [      �     �      �     �     �  -   �  4     <   E     �     �     �  9   �  "   	  $   2	  %   W	  +   }	  (   �	     �	     �	     
     
     )
     ?
     W
  
   j
  4   u
     �
  6   �
     �
  "        %     *     1  B   P  &   �     �  -   �     �  *   �  (     L   H  M   �  .   �  =        P     m     �     �  ;   �     �            #   6  :   Z  $   �  &   �  ,   �          '     F     c     �     �      �     �     �          $  !   B  '   d  '   �  8   �      �           /     3  A   6  9   x     �  !   �     �     �  &     `   -     �  #   �     �     �  ,     >   3     r     �     �  �  �     w  /   y  4   �  D   �  X   #     |     �  !   �  F   �  '     )   G  *   q  8   �  5   �  #     2   /     b     ~  -   �  #   �     �       C        \  K   r     �  8   �  
          >   *  h   i  J   �       K   )     u  E   �  ?   �  �   
  �   �  Q   #  f   u  :   �  !        9     Y  P   y  &   �  $   �  '     Q   >  C   �  H   �  K      K   i   +   �   <   �   5   !  I   T!  2   �!  +   �!  F   �!  '   D"  0   l"  +   �"  4   �"  /   �"  >   .#  H   m#  e   �#  C   $  =   `$     �$     �$  \   �$  i   %  -   �%  B   �%     �%     	&  0    &  �   Q&  ;   �&  5   8'  5   n'  &   �'  =   �'  a   	(     k(     �(  2   �(         P      <   '             F      C   Y              U   J       *       K   2       +   T      
       &           5          7      $           Q   .           M   :   >   8   O          !   B      3       0   %   G   D      L   6   =             -                  R   #   ,           I   (              )      A                    Z   V          [      "                      E   S   9   X          /      4      @          ;       ?   W   N   H   1       	              
 
error reading choice
                     [--initscript <service>]
                     [--slave <link> <name> <path>]*
                 --altdir <directory> --admindir <directory>
          %s --add <name>
          %s --del <name>
          %s --override <name>
          %s [--level <levels>] [--type <type>] <name> %s
        alternatives --auto <name>
        alternatives --config <name>
        alternatives --display <name>
        alternatives --remove <name> <path>
        alternatives --set <name> <path>
   Selection    Command
  link currently points to %s
  slave %s: %s
 %s - priority %d
 %s - status is auto.
 %s - status is manual.
 %s already exists
 %s empty!
 %s has not been configured as an alternative for %s
 %s version %s
 %s version %s - Copyright (C) 1997-2000 Red Hat, Inc.
 (would remove %s
 --type must be 'sysv' or 'xinetd'
 Back Cancel Current `best' version is %s.
 Enter to keep the current selection[+], or type selection number:  No services may be managed by ntsysv!
 Ok Press <F1> for more information on a service. Services There are %d programs which provide '%s'.
 There is %d program that provides '%s'.
 This may be freely redistributed under the terms of the GNU Public License.
 This may be freely redistributed under the terms of the GNU Public License.

 What services should be automatically started? You do not have enough privileges to perform this operation.
 You must be root to run %s.
 admindir %s invalid
 altdir %s invalid
 alternatives version %s
 alternatives version %s - Copyright (C) 2001 Red Hat, Inc.
 bad argument to --levels
 bad mode on line 1 of %s
 bad primary link in %s
 cannot determine current run level
 common options: --verbose --test --help --usage --version
 error reading from directory %s: %s
 error reading info for service %s: %s
 error reading information on service %s: %s
 failed to create %s: %s
 failed to glob pattern %s: %s
 failed to link %s -> %s: %s
 failed to make symlink %s: %s
 failed to open %s/init.d: %s
 failed to open %s: %s
 failed to open directory %s: %s
 failed to read %s: %s
 failed to read link %s: %s
 failed to remove %s: %s
 failed to remove link %s: %s
 failed to replace %s with %s: %s
 link %s incorrect for slave %s (%s %s)
 link changed -- setting mode to manual
 link points to no alternative -- setting mode to manual
 missing path for slave %s in %s
 numeric priority expected in %s
 off on only one of --list, --add, --del, or --override may be specified
 only one runlevel may be specified for a chkconfig query
 path %s unexpected in %s
 path to alternate expected in %s
 reading %s
 running %s
 service %s does not support chkconfig
 service %s supports chkconfig, but is not referenced in any runlevel (run 'chkconfig --add %s')
 slave path expected in %s
 the primary link for %s must be %s
 unexpected end of file in %s
 unexpected line in %s: %s
 usage:   %s [--list] [--type <type>] [name]
 usage: alternatives --install <link> <name> <path> <priority>
 would link %s -> %s
 would remove %s
 xinetd based services:
 Project-Id-Version: chkconfig
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2009-01-22 14:20-0500
PO-Revision-Date: 2009-01-10 20:49+0100
Last-Translator: Miloš Komarčević <kmilos@gmail.com>
Language-Team: Serbian (sr) <fedora-trans-sr@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
 
 
грешка при читању избора
                       [--initscript <сервис>]
                       [--slave <веза> <име> <путања>]*
               --altdir <директоријум> --admindir <директоријум>
           %s --add <име>
           %s --del <име>
           %s --override <име>
           %s [--level <нивои>] [--type <врста>] <име> %s
           alternatives --auto <име>
           alternatives --config <име>
           alternatives --display <име>
           alternatives --remove <име> <путања>
           alternatives --set <име> <путања>
    Избор       Наредба
  веза тренутно указује на %s
  подређени %s: %s
 %s - првенство %d
 %s - статус је самосталан.
 %s - статус је ручни.
 %s већ постоји
 празан %s!
 %s није подешено као алтернатива за %s
 %s верзија %s
 %s верзија %s - Ауторска права 1997-2000 Red Hat, Inc.
 (уклонило би %s
 --type мора бити „sysv“ или „xinetd“
 Назад Откажи Тренутна „најбоља“ верзија је %s.
 <Enter> задржава тренутни избор[+], или укуцајте број избора:  Ниједним сервисом не сме да управља ntsysv!
 У реду Притисните <F1> за више података о сервису. Сервиси Постоји %d програма који пружају „%s“.
 Постоји %d програм који пружа „%s“.
 Ово се сме слободно раздељивати у складу са одредбама ГНУ Опште јавне лиценце.
 Ово се сме слободно делити у складу са одредбама ГНУ Опште јавне лиценце.

 Који сервиси треба самостално да се покрећу? Немате довољне повластице за извршавање ове операције.
 Морате бити root да би извршили %s.
 admindir %s неисправан
 altdir %s неисправан
 alternatives верзија %s
 alternatives верзија %s - Ауторска права 2001 Red Hat, Inc.
 лош аргумент за --levels
 лош режим у 1. реду %s
 лоша основна веза у %s
 не могу да одредим тренутни ниво извршавања
 опште опције: --verbose --test --help --usage --version
 грешка при читању из директоријума %s: %s
 грешка при читању података о сервису %s: %s
 грешка при читању података о сервису %s: %s
 неуспешно стварање %s: %s
 неуспешно поклапање обрасца %s: %s
 неуспешно повезивање %s -> %s: %s
 неуспешно прављење симболичке везе %s: %s
 неуспешно отварање %s/init.d: %s
 неуспешно отварање %s: %s
 неуспешно отварање директоријума %s: %s
 неуспешно читање %s: %s
 неуспешно читање везе %s: %s
 неуспешно уклањање %s: %s
 неуспешно уклањање везе %s: %s
 неуспешна замена %s са %s: %s
 %s веза нетачна за подређени %s (%s %s)
 промењена веза -- постављам ручни режим
 веза не указује на алтернативу -- постављам ручни режим
 недостаје путања за подређеног %s у %s
 бројчано првенство очекивано у %s
 искључено укључено можете навести само један од --list, --add, --del или --override
 само један ниво извршавања сме бити наведен у chkconfig упиту
 %s путања неочекивана у %s
 путања до алтернативе очекивана у %s
 читам %s
 извршавам %s
 сервис %s не подржава chkconfig
 сервис %s подржава chkconfig, али није познат ни у једном нивоу извршавања (извршите „chkconfig --add %s“)
 путања подређеног очекивана у %s
 основна веза за %s мора бити %s
 неочекиван крај датотеке у %s
 неочекиван ред у %s: %s
 употреба: %s [--list] [--type <врста>] [име]
 употреба: alternatives --install <веза> <име> <путања> <првенство>
 повезало би %s -> %s
 би уклонило %s
 сервиси засновани на xinetd-у:
 
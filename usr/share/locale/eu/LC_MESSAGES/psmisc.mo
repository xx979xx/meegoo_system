��    4      �  G   \      x  0   y  p   �  k     #   �     �     �  )   �  	              .  ,   O  $   |     �  #   �      �     �       #   :  !   ^     �     �  <   �  <   �  %   '     M     l     �     �     �     �     �  &   	     4	     S	     h	  �   	     b
     y
     �
     �
  H   �
  (     E  /  �   u  -  n  F   �  -   �          $     8     L  �  k  1   �  �      ~   �  $   :      _     �  3   �     �     �  (   �  8   &  1   _  !   �  ,   �  $   �  -        3  1   S  #   �     �  '   �  <   �  <   +  %   h  !   �      �     �     �       !        <  %   Y  '        �  )   �  �   �     �     �            Y   6  .   �  f  �    &  k  D  M   �   7   �      6!     I!     ]!  (   q!            $   	   1   ,   !      
                 '   3          "   %                .       *   2              )                         +      &                                         -                           0   #          4   /              (      -Z     show         SELinux security contexts
   -Z,--context REGEXP kill only process(es) having context
                      (must precede other arguments)
   PID    start at this PID; default is 1 (init)
  USER   show only trees rooted at processes of this user

 %*s USER        PID ACCESS COMMAND
 %s is empty (not mounted ?)
 %s: no process found
 %s: unknown signal; %s -l lists signals.
 (unknown) Bad regular expression: %s
 Can't get terminal capabilities
 Cannot allocate memory for matched proc: %s
 Cannot find socket's device number.
 Cannot find user %s
 Cannot get UID from process status
 Cannot open /proc directory: %s
 Cannot open /proc/net/unix: %s
 Cannot open a network socket.
 Cannot open protocol file "%s": %s
 Cannot resolve local port %s: %s
 Cannot stat %s: %s
 Cannot stat file %s: %s
 Copyright (C) 1993-2005 Werner Almesberger and Craig Small

 Copyright (C) 1993-2009 Werner Almesberger and Craig Small

 Copyright (C) 2007 Trent Waddington

 Could not kill process %d: %s
 Error attaching to pid %i
 Invalid namespace name Kill %s(%s%d) ? (y/N)  Kill process %d ? (y/N)  Killed %s(%s%d) with signal %d
 Maximum number of names is %d
 Namespace option requires an argument. No process specification given No processes found.
 No such user name: %s
 PSmisc comes with ABSOLUTELY NO WARRANTY.
This is free software, and you are welcome to redistribute it under
the terms of the GNU General Public License.
For more information about these matters, see the files named COPYING.
 Press return to close
 Signal %s(%s%d) ? (y/N)  TERM is not set
 Unknown local port AF %d
 Usage: killall [-Z CONTEXT] [-u USER] [ -eIgiqrvw ] [ -SIGNAL ] NAME...
 Usage: killall [OPTION]... [--] NAME...
 Usage: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 output 8 bit clean streams.
    -n don't display read/write from fd headers.
    -c peek at any new child processes too.
    -d remove duplicate read/writes from the output.
    -V prints version info.
    -h prints this help.

  Press CTRL-C to end output.
 Usage: pidof [ -eg ] NAME...
       pidof -V

    -e      require exact match for very long names;
            skip if the command line is unavailable
    -g      show process group ID instead of process ID
    -V      display version information

 Usage: pstree [ -a ] [ -c ] [ -h | -H PID ] [ -l ] [ -n ] [ -p ] [ -u ]
              [ -A | -G | -U ] [ PID | USER ]
       pstree -V
Display a tree of processes.

  -a, --arguments     show command line arguments
  -A, --ascii         use ASCII line drawing characters
  -c, --compact       don't compact identical subtrees
  -h, --highlight-all highlight current process and its ancestors
  -H PID,
  --highlight-pid=PID highlight this process and its ancestors
  -G, --vt100         use VT100 line drawing characters
  -l, --long          don't truncate long lines
  -n, --numeric-sort  sort output by PID
  -p, --show-pids     show PIDs; implies -c
  -u, --uid-changes   show uid transitions
  -U, --unicode       use UTF-8 (Unicode) line drawing characters
  -V, --version       display version information
 You cannot search for only IPv4 and only IPv6 sockets at the same time all option cannot be used with silent option. fuser (PSmisc) %s
 peekfd (PSmisc) %s
 pstree (PSmisc) %s
 skipping partial match %s(%d)
 Project-Id-Version: psmisc 22.8rc1
Report-Msgid-Bugs-To: csmall@small.dropbear.id.au
POT-Creation-Date: 2010-01-04 21:42+1100
PO-Revision-Date: 2009-09-14 15:54+0100
Last-Translator: Mikel Olasagasti <hey_neken@mundurat.net>
Language-Team: Basque <translation-team-eu@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
   -Z     SELinux segurtasun kontestuak bistaratu
   -Z,--context REGEXP hil kontestua duten prozesuak bakarrikkill only process(es)
                      (beste argumentu batzuk aurretik izan behar ditu)
     PID    zein PID-etan hasi, lehenetsia 1 (init)
    ERABILTZAILEA   erakutsi erabiltzaile honen zuahitz prozesuen adarrak

 %*s ERAB.      PID SARRERA KOMANDOA
 %s hutsik dago (muntatu gabea?)
 %s: ez da prozesurik aurkitu
 %s: seinale ezezaguna; %s -l seinaleak zerrendatu.
 (ezezaguna) Expresio erregular okerra: %s
 Ezin dira terminalaren gaitasunak lortu
 Ezin da memoria esleitu aurkitutako prozesuarentzat: %s
 Ezin izan da socket-aren gailu zenbakia aurkitu.
 Ezin da %s erabiltzailea aurkitu
 Ezin da UID-a lortu prozesuaren egoeragatik
 Ezin da /proc direktorioa ireki: %s
 Ezin da /proc/net/unix direktorioa ireki: %s
 Ezin da sare socket bat ireki.
 Ezin izan da "%s" protokolo fitxategia ireki: %s
 Ezin da %s ataka lokala ebatzi: %s
 Ezin da %s identifikatu: %s
 Ezin da %s fitxategia identifikatu: %s
 Copyright (C) 1993-2005 Werner Almesberger eta Craig Small

 Copyright (C) 1993-2009 Werner Almesberger and Craig Small

 Copyright (C) 2007 Trent Waddington

 Ezin izan da %d prozesua hil: %s
 Errorea %i prozesura atxikitzen
 Baliogabeko namespace izena %s(%s%d) hil? (y/N)  %d prozesua hil? (y/N)  %s(%s%d) hil da %d seinalearekin
 Izen kopuru gehiengoa %d da
 Namespace aukerak argumentua behar du Ez da prozesuaren espezifikaziorik eman Ez da prozesurik aurkitu.
 Ez dago honelako erabiltzaile izenik: %s
 PSmisc-k ez du INONGO BERMERIK.
Software librea da, eta berriro bana daiteke GNU Lizentzia Publiko Orokorrak
ezarritako baldintzak betez.
Gai honi buruzko informazio gehiagorako, ikusi COPYING izena duten fitxategiak.
 Sakatu 'return' itxitzeko
 Seinala bidali %s(%s%d)? (b/E)  TERM ez dago ezarrita
 AF ataka lokal ezezaguna %d
 Erabilera: killall [-Z KONTESTUA] [-u ERABILTZAILEA] [ -egiqvw ] [ -SEINALEA ] IZENA ...
 erabilera: killall [AUKERAK ] [ -- ] IZENA...
 Erabilera: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 8 bit-eko irteera jario garbiak.
    -n ez bistaratu fd goiburuen irakurketa/idazketak.
    -c seme-prozesu berriak ere begiratu.
    -d ezabatu irteerako irakurketa/idazketa bikoiztuak.
    -V bistaratu bertsioaren informazioa.
    -h laguntza hau bistaratu.

  Sakatu CTR-C amaitzeko.
 Erabilera: pidof [ -eg ] IZENA ...
       pidof -V

    -e      izen oso luzeentzat berdin-berdin idaztea behar da;
            jauzi komandoa-lerroa eskuragarri ez badago
    -g      erakutsi prozesu taldearen IDa prozesuearenaren ordez
    -V      bertsioaren informazioa bistaratu

 Erabilera: pstree [ -a ] [ -c ] [ -h | -H PID ] [ -l ] [ -n ] [ -p ] [ -u ]
              [ -A | -G | -U ] [ PID | ERABILTZAILEA]
       pstree -V
Bistaratu prozesu zuhaitz bat.

  -a, --arguments     erakutsi komando lerroaren argumentoak
  -A, --ascii     erabili ASCII karaktereak
  -c, --compact     ez trinkotu azpi-zuhaitz berdinak
  -h, --highlight-all     nabarmentu uneko prozesuak eta honen aurrekoak
  -H PID,
  --highlight-pid=PID nabarmendu "pid" prozesua eta honen aurrekoak
  -G, --vt100     erabili VT100 karaktereak
  -l, --long     ez moztu lerro luzeak
  -n, --numeric-sort     sailkatu irteera PIDaren arabera PID
  -p, --show-pids     erakutsi PIDak; -c erabiltzea esan nahi du
  -u, --uid-changes     erakutsi uid transizioak
  -U, --unicode       erabili  UTF-8 (Unicode) lerro marrazketa karaktereak
  -V, --version       erakutsi bertsio informazioa
 Ezin dituzu IPv4 socket-ak soilik eta IPv6 socket-ak soilik bilatu une berean aukera guztiak ezin dira ixiltasun aukerarekin erabili. fuser (PSmisc) %s
 peekfd (PSmisc) %s
 pstree (PSmisc) %s
 baterakuntza partziala saltatzen %s(%d)
 
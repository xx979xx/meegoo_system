��    4      �  G   \      x  0   y  p   �  k     #   �     �     �  )   �  	              .  ,   O  $   |     �  #   �      �     �       #   :  !   ^     �     �  <   �  <   �  %   '     M     l     �     �     �     �     �  &   	     4	     S	     h	  �   	     b
     y
     �
     �
  H   �
  (     E  /  �   u  -  n  F   �  -   �          $     8     L  �  k  9   �  �   '  �   �  $   8  !   ]       G   �  
   �  "   �  &     E   6  +   |     �  &   �     �  #         ,  )   M  .   w  #   �  +   �  <   �  ;   3  %   o      �  #   �     �      �       -   ,     Z  ,   z  )   �     �  "   �  �        �  *     *   ,     W  M   u  E   �  f  	    p  �  s      !      !     @!     S!     g!  0   {!            $   	   1   ,   !      
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
 Project-Id-Version: psmisc-22.8rc1
Report-Msgid-Bugs-To: csmall@small.dropbear.id.au
POT-Creation-Date: 2010-01-04 21:42+1100
PO-Revision-Date: 2009-07-28 15:57+0100
Last-Translator: Erwin Poeze <erwin.poeze@gmail.com>
Language-Team: Dutch <vertaling@vrijschrift.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
     -Z    toon        SELinux-veiligheidscontexten tonen
   -Z,--context REGEXP alleen processen met deze context afbreken
                      (dient aan andere argumenten vooraf te gaan)
   PID     bij dit proces-ID beginnen; standaard is 1 (init)
  NAAM    alleen de bomen tonen die beginnen bij processen van deze gebruiker

 %*s GEBRUIKER   PID SOORT PROGRAMMA
 %s is leeg -- niet aangekoppeld?
 %s: geen proces gevonden
 Onbekend signaal: %s -- '%s -l' toont een lijst van mogelijke signalen
 (onbekend) Ongeldige reguliere expressie: %s
 Kan terminalcapaciteiten niet bepalen
 Onvoldoende geheugen beschikbaar om gevonden proces te verwerken: %s
 Kan apparaatnummer van socket niet vinden.
 Kan gebruiker %s niet vinden
 Kan uit processtatus geen UID bepalen
 Kan /proc niet openen: %s
 Kan /proc/net/unix niet openen: %s
 Kan netwerk-socket niet openen.
 Kan protocolbestand '%s' niet openen: %s
 Kan lokale poort %s nergens toe herleiden: %s
 Kan status van %s niet bepalen: %s
 Kan status van bestand %s niet bepalen: %s
 Copyright (C) 1993-2005 Werner Almesberger and Craig Small

 Copyright (C) 1993-2009 Werner Almesberger en Craig Small

 Copyright (C) 2007 Trent Waddington

 Kan proces %d niet afbreken: %s
 Fout tijdens aanhechten aan PID %i
 Ongeldige naamsruimte Proces %s(%s%d) afbreken? (j/N)  Proces %d afbreken? (j/N)  Proces %s(%s%d) is afgebroken met signaal %d
 Het maximum aantal namen is %d
 De naamsruimte-optie -n vereist een argument Geen naam van bestand of socket opgegeven Geen processen gevonden.
 Geen bestaande gebruikersnaam: %s
 PSmisc kent GEEN ENKELE GARANTIE.
Dit is vrije software en mag vrijelijk verspreid worden,
onder de voorwaarden van de GNU General Public License.
Zie voor meer informatie hierover het bestand genaamd COPYING.
 Druk op Enter om af te sluiten
 Proces %s(%s%d) een signaal sturen? (j/N)  omgevingsvariabele TERM heeft geen waarde
 Onbekende lokale poort AF %d
 Gebruik:  killall [-Z CONTEXT] [-egIiqrvw] [-SIGNAAL] [-u GEBRUIKER] NAAM...
 Gebruik:  killall [-egIiqrvw] [-SIGNAAL] [-u GEBRUIKER] [--] NAAM...
 Gebruik:  peekfd [-8cdn] [-Vh] <PID> [<bestandsdescriptor>...]

    -8  8-bits schone uitvoer produceren
    -c  nieuwe dochterprocessen ook bekijken
    -d  dubbele vermeldingen onderdrukken
    -n  het lezen en schrijven van descriptorkoppen niet tonen
    -V  de programmaversie tonen
    -h  deze hulptekst tonen

Typ Ctrl-C om het programma te stoppen.
 Gebruik:  pidof [-eg] NAAM...
          pidof -V

    -e    zeer lange namen moeten exact overeenkomen
          (genegeerd als de opdrachtregel niet beschikbaar is)
    -g    procesgroeps-ID tonen in plaats van proces-ID
    -V    de programmaversie tonen

 Gebruik:  pstree [-a] [-c] [-h|-H PID] [-l] [-n] [-p] [-u]
                  [-A|-G|-U] [ PID | NAAM ]
          pstree -V

Huidige processen tonen in een boomstructuur.

    -a, --arguments      argumenten van de opdrachtregel tonen
    -A, --ascii          ASCII-karakters voor lijntekening gebruiken
    -c, --compact        identieke subbomen niet compacteren
    -h, --highlight-all  huidig proces en zijn voorganger accentueren
    -G, --vt100          VT100-tekens voor lijntekening gebruiken
    -H PID,
    --highlight-pid=PID  dit proces en zijn voorgangers accentueren
    -l, --long           lange regels niet afkappen
    -n, --numeric-sort   uitvoer sorteren naar PID
    -p, --show-pids      PIDs tonen (dit impliceert -c)
    -u, --uid-changes    UID-overgangen tonen
    -U, --unicode        Unicode-tekens (UTF-8) voor lijntekening gebruiken
    -V, --version        programmaversie tonen
 Opties -4 en -6 gaan niet samen Opties -a en -s gaan niet samen fuser (PSmisc) %s
 peekfd (PSmisc) %s
 pstree (PSmisc) %s
 overgeslagen: gedeeltelijke overeenkomst %s(%d)
 
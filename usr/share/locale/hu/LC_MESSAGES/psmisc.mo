��    4      �  G   \      x  0   y  p   �  k     #   �     �     �  )   �  	              .  ,   O  $   |     �  #   �      �     �       #   :  !   ^     �     �  <   �  <   �  %   '     M     l     �     �     �     �     �  &   	     4	     S	     h	  �   	     b
     y
     �
     �
  H   �
  (     E  /  �   u  -  n  F   �  -   �          $     8     L  �  k  H   +  �   t  �     -   �  &   �     $  <   B       !   �  +   �  ?   �  *     &   E  H   l  )   �  2   �  &     /   9  (   i     �  "   �  <   �  <   
  %   G  -   m  ;   �     �     �  "     %   4     Z  +   x  $   �     �  "   �  �   
     �  (   �          6  Z   T  0   �  �  �  V  �  �  �  @   �"  <   �"     #     ##     7#  '   K#            $   	   1   ,   !      
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
PO-Revision-Date: 2009-07-19 03:53+0200
Last-Translator: Gabor Kelemen <kelemeng@gnome.hu>
Language-Team: Hungarian <translation-team-hu@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms:  nplurals=2; plural=(n != 1);
   -Z     show         a SELinux biztonsági kontextusok megjelenítése
   -Z,--context REGEXP csak a kontextussal rendelkező folyamatok kilövése
                      (meg kell előznie az egyéb argumentumokat)
     PID               kezdés ezzel a PID-del; az alapértelmezés az 1 (init)
    FELHASZNÁLÓ       csak az adott felhasználó folyamataiból kiinduló fák
                        megjelenítése

 %*s FELHASZNÁLÓ  PID HOZZÁFÉRÉS PARANCS
 a(z) %s üres (nincs csatlakoztatva?)
 %s: nem található folyamat
 %s: ismeretlen szignál; a %s -l felsorolja a szignálokat.
 (ismeretlen) Hibás reguláris kifejezés: %s
 A terminál képességei nem kérhetők le
 Nem foglalható memória az illeszkedő folyamat részére: %s
 Nem található a foglalat eszközszáma.
 A(z) %s felhasználó nem található
 Nem kérhető le a felhasználói azonosító a folyamat állapotából
 A /proc könyvtár nem nyitható meg: %s
 A /proc/net/unix könyvtár nem nyitható meg: %s
 Nem nyitható meg hálózati foglalat
 Nem nyitható meg a(z) "%s" protokollfájl: %s
 A(z) %s helyi port nem oldható fel: %s
 %s nem érhető el: %s
 A(z) %s fájl nem érhető el: %s
 Copyright (C) 1993-2005 Werner Almesberger és Craig Small

 Copyright (C) 1993-2009 Werner Almesberger és Craig Small

 Copyright (C) 2007 Trent Waddington

 A(z) %d folymat kilövése nem sikerült: %s
 Hiba a csatlakozás közben a(z) %i folyamatazonosítóhoz
 Érvénytelen névtérnév Kilövi ezt: %s(%s%d) ? (i/N)  Kilövi a(z) %d folyamatot? (i/N)  %s(%s%d) kilőve a(z) %d szignállal
 A nevek maximális száma %d
 A névtér kapcsoló argumentumot igényel. Nincs megadva folyamatmeghatározás Nem találhatók folyamatok.
 Nincs ilyen felhasználónév: %s
 A PSmisc csomagra nem vonatkozik ABSZOLÚT SEMMILYEN GARANCIA
Ez egy szabad szoftver, a GNU General Public License feltételei mellett
bármikor továbbíthatja, a részletekért lásd a COPYING fájlt.
 A bezáráshoz nyomj entert
 Elküldi a(z) %s(%s%d) szignált? (i/N)  A TERM nincs beállítva
 Ismeretlen helyi port AF: %d
 Használat: killall [-Z KONTEXTUS] [-u FELHASZNÁLÓ] [ -eIgiqrvw ] [ -SZIGNÁL ] NÉV...
 Használat: killall [KAPCSOLÓ]... [--] NÉV...
 Használat: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 8 bites tiszta adatfolyamok kiírása.
    -n ne jelenítse meg az írás/olvasást az fd fejlécekből.
    -c új gyermekfolyamatok megjelenítése.
    -d többszörös olvasások/írások eltávolítása a kimenetből.
    -V verzióinformációk kiírása.
    -h ezen súgó kiírása.

  A CTRL-C segítségével megszakítható a kimenet.
 Használat: pidof [ -eg ] NÉV...
       pidof -V

    -e      megköveteli a pontos egyezést nagyon hosszú nevek esetén;
              átlépi, ha a parancssor nem érhető el
    -g      a folyamatcsoport azonosítójának megjelenítése a folyamat
              azonosítója helyett
    -V      verzióinformációk megjelenítése

 Használat: pstree [ -a ] [ -c ] [ -h | -H PID ] [ -l ] [ -n ] [ -p ] [ -u ]
              [ -A | -G | -U ] [ PID | FELHASZNÁLÓ ]
       pstree -V
Megjeleníti a folyamatok fáját.

  -a, --arguments     parancssori argumentumok megjelenítése
  -A, --ascii         ASCII sorrajzoló karakterek használata
  -c, --compact       azonos részfákat ne tömörítse
  -h, --highlight-all az aktuális folyamat és őseinek kiemelése
    -H PID 
  --highlight-pid=PID az adott folyamat és őseinek kiemelése
  -G, --vt100         VT100 sorrajzoló karakterek használata
  -l, --long          ne csonkítsa a hoszú sorokat
  -n, --numeric-sort  kimenet rendezése PID szerint
  -p, --show-pids     a PID-ek megjelenítése; magába foglalja a -c kapcsolót
  -u, --uid-changes   az uid átmenetek megjelenítése
  -U, --unicode       UTF-8 (Unicode) sorrajzoló karakterek használata
  -V, --version       verzióinformációk megjelenítése
 Nem lehet egyszerre csak IPv4 és csak IPv6 foglalatokat keresni az összes kapcsoló nem használható a néma kapcsolóval. fuser (PSmisc) %s
 peekfd (PSmisc) %s
 pstree (PSmisc) %s
 %s(%d) részleges találat átlépése
 
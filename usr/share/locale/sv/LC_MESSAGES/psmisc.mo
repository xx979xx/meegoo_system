��    4      �  G   \      x  0   y  p   �  k     #   �     �     �  )   �  	              .  ,   O  $   |     �  #   �      �     �       #   :  !   ^     �     �  <   �  <   �  %   '     M     l     �     �     �     �     �  &   	     4	     S	     h	  �   	     b
     y
     �
     �
  H   �
  (     E  /  �   u  -  n  F   �  -   �          $     8     L  g  k  2   �  v     �   }  &        9     V  *   r     �  !   �  ,   �  0   �  &   &     M  '   k  $   �  #   �  $   �  (     $   *     O  "   n  ;   �  ;   �  $   	      .     O     m     �     �     �     �  *   �  !   "     D     ^  �  {                :     N  T   g  .   �  h  �    T  C  ]  D   �   D   �      +!     >!     R!  .   f!            $   	   1   ,   !      
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
PO-Revision-Date: 2009-07-15 13:19+0100
Last-Translator: Daniel Nylander <po@danielnylander.se>
Language-Team: Swedish <tp-sv@listor.tp-sv.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
   -Z     show         SELinux-säkerhetskontexter
   -Z,--context REGEXP döda endast process(er) som har kontext
                      (måste föregå andra argument)
   PID    starta vid denna PID; standardvärde är 1 (init)
  ANVÄNDARE   visa endast träd med denna användares
              processer som rot.

 %*s ANVÄNDARE   PID ÅTKOMS KOMMANDO
 %s är tom (inte monterad?)
 %s: ingen process hittades
 %s: okänd signal; %s -l listar signaler.
 (okänd) Felaktigt reguljärt uttryck: %s
 Kan inte ta reda på terminalens förmågor
 Kan inte allokera minne för matchande proc: %s
 Kan inte hitta uttagets enhetsnummer.
 Kan inte hitta användare %s
 Kan inte hämta UID från processtatus
 Kan inte öppna katalogen /proc: %s
 Kan inte öppna /proc/net/unix: %s
 Kan inte öppna ett nätverksuttag.
 Kan inte öppna protokollfilen "%s": %s
 Kan inte slå upp lokal port %s: %s
 Kan inte ta status på %s: %s
 Kan inte ta status på fil %s: %s
 Copyright © 1993-2005 Werner Almesberger och Craig Small

 Copyright © 1993-2009 Werner Almesberger och Craig Small

 Copyright © 2007 Trent Waddington

 Kunde inte döda process %d: %s
 Fel vid koppling till pid %i
 Ogiltigt namn för namnrymd Döda %s(%s%d) ? (y/N)  Döda process %d ? (y/N)  Dödade %s(%s%d) med signal %d
 Maximalt antal namn är %d
 Flagga för namnrymd kräver ett argument. Ingen processpecifikation angiven Inga processer hittades.
 Ingen sådan användare: %s
 PSmisc kommer med ABSOLUT INGEN GARANTI.
Detta är fri programvara och du är välkommen att distribuera den under
villkoren för GNU General Public License.
För mer information om dessa villkor, se filerna kallade COPYING.
Följande text är en informell översättning som enbart tillhandahålls
i informativt syfte. För alla juridiska tolkningar gäller den engelska originaltexten.
 Tryck Retur för att stänga
 Signalera %s(%s%d) ? (y/N)  TERM är inte satt
 Okänt lokal port AF %d
 Användning: killall [-Z KONTEXT] [-u ANVÄNDARE] [ -eIgiqrvw ] [ -SIGNAL ] NAMN...
 Användning: killall [FLAGGA]... [--] NAMN...
 Användning: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 skriv ut 8-bitars rena strömmar.
    -n visa inte läs/skriv från fd-huvuden.
    -c titta även på alla nya barnprocesser.
    -d Ta bort dubletter av läs/skriv från utdata.
    -V visar versionsinformation.
    -h visar den här hjälpen.

  Tryck CTRL-C för att avsluta utdata.
 Användning: pidof [-eg] NAMN...
       pidof -V

    -e      kräv exakt matchning för långa namn;
            hoppa över om kommandoraden är otillgänglig
    -g      visa processgruppens ID istället för processens ID
    -V      visa versionsinformation

 Användning: pstree [ -a ] [ -c ] [ -h | -H PID ] [ -l ] [ -n ] [ -p ] [ -u ]
              [ -A | -G | -U ] [ PID | ANVÄNDARE]
       pstree -V
Visa ett träd av processer.

  -a, --arguments     visa kommandoradsargument
  -A, --ascii         använd ASCII-linjeritningstecken
  -c, --compact       komprimera inte identiska underträd
  -h, --highlight-all markera aktuell process och dess förfäder
  -H PID,
  --highlight-pid=PID markera denna process och dess förfäder
  -G, --vt100         använd VT100-linjeritningstecken
  -l, --long          korta inte ner långa rader
  -n, --numeric-sort  sortera utdata efter PID
  -p, --show-pids     visa PID:ar; medför -c
  -u, --uid-changes   visa uid-övergångar
  -U, --unicode       använd UTF-8-linjeritningstecken (Unicode)
  -V, --version       visa versionsinformation
 Du kan inte söka efter endast IPv4- och endast IPv6-uttag samtidigt flagga för alla, -m,  kan inte användas med flaggan för tyst, -s. fuser (PSmisc) %s
 peekfd (PSmisc) %s
 pstree (PSmisc) %s
 hoppar över delvis matchande process: %s(%d)
 
��    4      �  G   \      x  0   y  p   �  k     #   �     �     �  )   �  	              .  ,   O  $   |     �  #   �      �     �       #   :  !   ^     �     �  <   �  <   �  %   '     M     l     �     �     �     �     �  &   	     4	     S	     h	  �   	     b
     y
     �
     �
  H   �
  (     E  /  �   u  -  n  F   �  -   �          $     8     L  |  k  G   �  �   0     �  %   7  "   ]  #   �  -   �  
   �     �  (   �  ;   &  .   b  "   �  (   �  &   �  &     '   +  ,   S  +   �  !   �  '   �  :   �  :   1  %   l  #   �  '   �  "   �               0     M  (   k     �     �  '   �  �   �  #   �  !   	     +  ,   ?  S   l  +   �  y  �    f  ^  �  =   �   9    !     Z!     m!     �!  '   �!            $   	   1   ,   !      
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
PO-Revision-Date: 2009-07-15 07:40+0200
Last-Translator: Jakub Bogusz <qboosh@pld-linux.org>
Language-Team: Polish <translation-team-pl@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 8bit
   -Z                  wy�wietlanie kontekst�w bezpiecze�stwa SELinuksa
   -Z,--context REGEXP zabicie tylko procesu(�w) maj�cych dany kontekst bezp.
                        (musi poprzedza� inne argumenty)
   PID    rozpocz�cie od tego PID-u, domy�lnie 1 (init)
 U�YTKOWNIK  tylko drzewa zaczynaj�ce si� od proces�w tego u�ytkownika

 %*s U�YTKOWNIK  PID DOST�P POLECENIE
 %s jest pusty (nie podmontowany?)
 %s: nie znaleziono �adnego procesu
 %s: nieznany sygna�; %s -l wypisuje sygna�y.
 (nieznany) B��dne wyra�enie regularne: %s
 Nie mo�na odczyta� mo�liwo�ci terminala
 Nie mo�na przydzieli� pami�ci dla dopasowanego procesu: %s
 Nie mo�na odnale�� numeru urz�dzenia gniazda.
 Nie mo�na odnale�� u�ytkownika %s
 Nie mo�na pobra� UID-a ze stanu procesu
 Nie mo�na otworzy� katalogu /proc: %s
 Nie mo�na otworzy� /proc/net/unix: %s
 Nie mo�na otworzy� gniazda sieciowego.
 Nie mo�na otworzy� pliku protoko�u "%s": %s
 Nie mo�na rozwi�za� portu lokalnego %s: %s
 Nie mo�na wykona� stat na %s: %s
 Nie mo�na wykona� stat na pliku %s: %s
 Copyright (C) 1993-2005 Werner Almesberger i Craig Small

 Copyright (C) 1993-2009 Werner Almesberger i Craig Small

 Copyright (C) 2007 Trent Waddington

 Nie uda�o si� zabi� procesu %d: %s
 B��d podczas pod��czania do procesu %i
 Niepoprawna nazwa przestrzeni nazw Zabi� %s(%s%d)? (t/N)  Zabi� proces %d? (y/N)  Zabito %s(%s%d) sygna�em %d
 Maksymalna liczba nazw to %d
 Opcja przestrzeni nazw wymaga argumentu. Nie podano okre�lenia proces�w Nie znaleziono proces�w.
 Nie ma u�ytkownika o takiej nazwie: %s
 PSmisc jest rozpowszechniany BEZ �ADNEJ GWARANCJI.
To oprogramowanie jest darmowe i mo�e by� dystrybuowane na warunkach
Powszechnej Licencji Publicznej GNU (General Public License).
Wi�cej informacji znajduje si� w pliku o nazwie COPYING.
 Naci�ni�cie return zamknie program
 Wys�a� sygna� do %s(%s%d)? (t/N)  TERM nie ustawiony
 Nieznana rodzina adres�w portu lokalnego %d
 Sk�adnia: killall [-Z KONTEKST] [-u U�YTKOWNIK] [ -eIgiqrvw ] [ -SYGNA� ] NAZWA...
 Sk�adnia: killall [OPCJE]... [--] NAZWA...
 Sk�adnia: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 wypisywanie strumieni czysto 8-bitowych.
    -n nie wy�wietlanie nag��wk�w odczytu/zapisu z deskryptora.
    -c podgl�danie tak�e nowych proces�w potomnych.
    -d usuwanie z wyj�cia powt�rzonych odczyt�w/zapis�w.
    -V wypisanie informacji o wersji.
    -h wypisanie tego opisu.

  Ctrl-C ko�czy wyj�cie.
 Sk�adnia: pidof [ -eg ] NAZWA...
          pidof -V

    -e    wymaganie dok�adnego dopasowania dla bardzo d�ugich nazw;
            pomijane je�li linia polece� nie jest dost�pna
    -g    wy�wietlanie ID grup proces�w zamiast ID proces�w
    -V    wy�wietlenie informacji o wersji

 Sk�adnia: pstree [ -a ] [ -c ] [ -h | -H PID ] [ -l ] [ -n ] [ -p ] [ -u ]
                 [ -A | -G | -U ] [ PID | U�YTKOWNIK ]
          pstree -V
Wy�wietlanie drzewa proces�w.

  -a, --arguments     wy�wietlenie argument�w linii polece�
  -A, --ascii         u�ycie znak�w ramek ASCII
  -c, --compact       nie scalanie identycznych poddrzew
  -h, --highlight-all pod�wietlenie bie��cego procesu i jego przodk�w
  -H PID,
  --highlight-pid=PID pod�wietlenie podanego procesu i jego przodk�w
  -G, --vt100         u�ycie znak�w ramek VT100
  -l, --long          nie obcinanie d�ugich linii
  -n, --numeric-sort  sortowanie wyj�cia wg PID-u
  -p, --show-pids     wy�wietlanie PID-�w; w��cza tak�e -c
  -u, --uid-changes   wy�wietlanie zmian uid�w
  -U, --unicode       u�ycie znak�w ramek UTF-8 (Unicode)
  -V, --version       wy�wietlenie informacji o wersji
 Nie mo�na naraz szuka� gniazd wy��cznie IPv4 i wy��cznie IPv6 opcja wszystkich plik�w nie mo�e by� u�yta z opcj� ciszy. fuser (PSmisc) %s
 peekfd (PSmisc) %s
 pstree (PSmisc) %s
 pomini�to cz�ciowe dopasowanie %s(%d)
 
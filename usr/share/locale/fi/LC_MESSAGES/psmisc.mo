��    3      �  G   L      h  p   i  k   �  #   F     j     �  )   �  	   �     �      �  ,     $   ;     `  #   u      �     �     �  #   �  !        ?     S  <   l  <   �  %   �          +     F     ]     t     �     �  &   �     �     	     '	  �   >	     !
     8
     Q
     b
  H   |
  (   �
  E  �
  �   4  -  -  F   [  -   �     �     �     �       �  *  �   	  �   �  %   ;     a     ~  4   �     �  )   �  -   �  D   +  #   p     �  4   �  *   �  2     !   C  7   e  .   �  (   �  4   �  :   *  :   e  $   �  2   �  '   �        +   =  ]   i  ,   �  &   �  &     %   B     h       �   �     u  Z   �     �  $     T   ,  -   �  �  �  $  =  z  b  M   �!  E   +"     q"     �"     �"  #   �"            #      0   +          	                &   2          !   $                -       )   1              (                   
      *      %                                         ,                            /   "          3   .              '      -Z,--context REGEXP kill only process(es) having context
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
PO-Revision-Date: 2009-07-25 16:08+0200
Last-Translator: Jorma Karvonen <karvonen.jorma@gmail.com>
Language-Team: Finnish <translation-team-fi@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Poedit-Language: Finnish
X-Poedit-Country: FINLAND
   -Z,--context REGEXP lähetä signaali kill-käskyllä vain prosesseille, joilla on konteksti
                      (tämän on oltava muiden argumenttien edellä)
   PID    aloita tällä PID-prosessitunnisteella; oletus on 1 (init)
  USER   näytä vain puita, jotka alkavat käyttäjän omistuksessa

 %*s KÄYTTÄJÄ    PID ACCESS KÄSKY
 %s on tyhjä (ei liitetty?)
 %s: ei prosesseja
 %s: tuntematon signaali; %s -l luettelee signaalit.
 (tuntematon) Virheellinen säännöllinen lauseke: %s
 Päätteen ominaisuudet eivät ole selvillä
 Ei voida varata muistia täsmäävälle ”proc”-hakemistolle: %s
 pistokkeen laitenumeroa ei löydy.
 Ei löydy käyttäjää %s
 Ei saada UID-käyttäjätunnistetta prosessitilasta
 Ei voida avata ”/proc”-hakemistoa: %s
 Ei voida avata tiedostoa ”/proc/net/unix”: %s
 Ei voida avata verkkopistoketta.
 Ei voida avata yhteyskäytäntötiedostoa ”%s”: %s
 Ei voida ratkaista paikallista porttia %s: %s
 Ei voida suorittaa stat-käskyä %s: %s
 Ei voida suorittaa stat-käskyä tiedostolle %s: %s
 Copyright © 1993-2005 Werner Almesberger ja Craig Small

 Copyright © 1993-2009 Werner Almesberger ja Craig Small

 Copyright © 2007 Trent Waddington

 Ei voida lähettää signaalia prosessille %d: %s
 Virhe liityttäessä pid-tunnukseen %i
 Virheellinen nimiavaruusnimi Lopeta prosessi %s(%s%d)? (y=kyllä, N=ei)  Lähetä signaali prosessille %d? (y=kyllä, N=ei, ”kyllä” yleensä lopettaa prosessin)  Prosessille %s(%s%d) lähetetty signaali %d
 Suurin sallittu määrä nimiä on %d
 Nimiavaruusvalitsin vaatii argumentin. Prosessimäärittelyä ei ole annettu Prosesseja ei löydy.
 Käyttäjätunnus puuttuu: %s
 PSmisc-ohjelmistolla EI EHDOTTOMASTI OLE MITÄÄN TAKUUTA.
Tämä on vapaa ohjelmisto ja saat kopioida ja levittää sitä GNU General Public
License -lisenssin mukaisesti. Tiedostossa COPYING on tarkemmat tiedot.
 Enter-näppäin sulkee
 Signaali prosessille %s(%s%d)? (y=kyllä, N=ei, ”kyllä” yleensä lopettaa prosessin)  TERM-signaali ei ole asetettu
 Tuntematon paikallinen portti AF %d
 Käyttö: killall [-Z KONTEKSTI] [-u KÄYTTÄJÄ] [ -eIgiqrvw ] [ -SIGNAL ] NIMI...
 Käyttö: killall [VALITSIN]... [--] NIMI...
 Käyttö: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 tuloste puhtaana 8-bittisenä virtana
    -n älä näytä lukemisia ja kirjoittamisia fd-otsakkeista.
    -c kurkista myös kaikkien tytärprosessien aikana.
    -d poista tulosteesta lukeminen ja kirjoittaminen.
    -V tulostaa versiotiedot.
    -h tulostaa tämän ohjeen.

  Lopeta tulostus painamalla näppäimiä CTRL-C.
 Käyttö: pidof [ -eg ] NIMI...
       pidof -V

    -e      vaatii hyvin pitkien nimien täsmällistä vastaavuutta;
            ohita, jos komentorivi ei ole käytettävissä.
    -g      näyttää prosessin ryhmätunnisteen prosessitunnisteen sijasta
    -V      näyttää versiotiedot

 Käyttö: pstree [ -a ] [ -c ] [ -h | -H PID ] [ -l ] [ -n ] [ -p ] [ -u ]
              [ -A | -G | -U ] [ PID | KÄYTTÄJÄ ]
       pstree -V
Näytä prosessipuu.

  -a, --arguments     näytä komentoriviargumentit
  -A, --ascii         käytä ASCII-pseudografiikkamerkkejä
  -c, --compact       älä tiivistä identtisiä alipuita
  -h, --highlight-all korosta nykyinen prosessi ja sen periytymislähteet
  -H PID,
  --highlight-pid=PID korosta tämä prosessi ja sen periytymislähteet
  -G, --vt100         käytä VT100-pseudografiikkamerkkejä
  -l, --long          älä typistä pitkiä riviä
  -n, --numeric-sort  lajittele tulostus PID-tunnuksen mukaan
  -p, --show-pids     näytä PID-tunnukset; epäsuorasti -c
  -u, --uid-changes   näytä uid-siirtymät
  -U, --unicode       käytä UTF-8 (Unicode)-pseudografiikkamerkkejä
  -V, --version       näytä versiotiedot
 Ei voida etsiä ”vain IPv4”- ja ”vain IPv6”-pistokkeita samaan aikaan ”all”-valitsinta ei voi käyttää ”silent”-valitsimen kanssa fuser (PSmisc) %s
 peekfd (PSmisc) %s
 pstree (PSmisc) %s
 ohitetaan osittain vastaava %s(%d)
 
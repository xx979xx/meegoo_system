��    4      �  G   \      x  0   y  p   �  k     #   �     �     �  )   �  	              .  ,   O  $   |     �  #   �      �     �       #   :  !   ^     �     �  <   �  <   �  %   '     M     l     �     �     �     �     �  &   	     4	     S	     h	  �   	     b
     y
     �
     �
  H   �
  (     E  /  �   u  -  n  F   �  -   �          $     8     L  _  k  =   �  t   	  �   ~  $        ,     H  =   e     �  $   �  3   �  @   
  9   K      �  4   �  *   �  &     &   -  2   T  -   �      �  &   �  :   �  :   8  %   s  )   �      �     �              "   <      _  ,   �  #   �     �  "   �  �        �     �          .  J   N  '   �  m  �  !  /  b  Q  I   �   4   �      3!     F!     Z!  (   n!            $   	   1   ,   !      
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
PO-Revision-Date: 2009-07-15 13:47+0100
Last-Translator: Marco Colombo <m.colombo@ed.ac.uk>
Language-Team: Italian <tp@lists.linux.it>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
   -Z     show         mostra i contesti di sicurezza SELinux
   -Z,--context REGEXP termina solo i processi aventi context
                      (deve precedere altri argomenti)
     PID       comincia dal pid indicato, predefinito 1 (init)
    UTENTE    mostra solo gli alberi con radice nei processi dell'utente

 %*s UTENTE      PID ACCESSO COMANDO
 %s è vuoto (non montato?)
 %s: nessun processo trovato
 %s: segnale sconosciuto; usare %s -l per elencare i segnali.
 (sconosciuto) Espressione regolare non valida: %s
 Impossibile determinare le capacità del terminale
 Impossibile allocare memoria per il processo corrispondente: %s
 Impossibile trovare il numero di dispositivo del socket.
 Impossibile trovare l'utente %s
 Impossibile ottenere l'UID dallo stato del processo
 Impossibile aprire la directory /proc: %s
 Impossibile aprire /proc/net/unix: %s
 Impossibile aprire un socket di rete.
 Impossibile aprire il file di protocollo "%s": %s
 Impossibile risolvere la porta locale %s: %s
 Impossibile fare stat di %s: %s
 Impossibile fare stat del file %s: %s
 Copyright (C) 1993-2005 Werner Almesberger e Craig Small

 Copyright (C) 1993-2009 Werner Almesberger e Craig Small

 Copyright (C) 2007 Trent Waddington

 Impossibile terminare il processo %d: %s
 Errore nel collegarsi al pid %i
 Nome di contesto non valido Terminare %s(%s%d)? (y/N)  Terminare il processo %d? (y/N)  Terminato %s(%s%d) con segnale %d
 Il massimo numero di nomi è %d
 L'opzione di contesto richiede un argomento. Nessun tipo di processo specificato Nessun processo trovato.
 Questo nome utente non esiste: %s
 PSmisc è distribuito senza ALCUNA GARANZIA.
Questo è software libero, ed è possibile redistribuirlo secondo i termini
della GNU General Public License.
Si consulti il file COPYING per ulteriori informazioni.
 Premere Invio per chiudere
 Segnale %s(%s%d)? (y/N)  TERM non è impostato
 Porta locale AF %d sconosciuta
 Uso: killall [-Z CONTESTO] [-u UTENTE] [ -eIgiqrvw ] [ -SEGNALE ] NOME...
 Uso: killall [OPZIONE]... [--] NOME...
 Uso: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 emetti output pulito a 8 bit
    -n non mostrare letture/scritture dalle intestazioni del fd
    -c peek anche i processi figli
    -d rimuove dall'output le letture/scritture duplicate
    -V stampa le informazioni sulla versione
    -h stampa questo aiuto

  Premere CTRL-C per terminare l'output.
 Uso: pidof [ -eg ] NOME...
     pidof -V

    -e      richiede una corrispondenza esatta per i nomi molto lunghi;
            ignora se la riga di comando non è disponibile
    -g      mostra l'ID del gruppo invece che l'ID del processo
    -V      mostra le informazioni sulla versione

 Uso: pstree [ -a ] [ -c ] [ -h | -H PID ] [ -l ] [ -n ] [ -p ] [ -u ]
            [ -A | -G | -U ] [ PID | UTENTE]
     pstree -V
Mostra l'albero dei processi.

  -a, --arguments      mostra gli argomenti della riga di comando
  -A, --ascii          usa caratteri grafici ASCII
  -c, --compact        non comprime i sottoalberi identici
  -h, --highlight-all  evidenzia il processo corrente e i suoi antenati
  -H PID,
      --higlight-pid=PID  evidenzia il processo PID e i suoi antenati
  -G, --vt100          usa caratteri grafici VT100
  -l, --long           non tronca le righe lunghe
  -n, --numeric-sort   ordina l'output in base al PID
  -p, --show-pids      mostra i PID; implica -c
  -u, --uid-changes    mostra le transizioni di uid
  -U, --unicode        usa caratteri grafici UTF-8 (Unicode)
  -V, --version        mostra le informazioni sulla versione
 Impossibile cercare solo socket IPv4 e solo socket IPv6 allo stesso tempo L'opzione -a non può essere usata con l'opzione -s. fuser (PSmisc) %s
 peekfd (PSmisc) %s
 pstree (PSmisc) %s
 ignorata corrispondenza parziale %s(%d)
 
��    �      ,  �   <      �
  �  �
  h   �  �     i  �    ]  �   }          &     9  !   G     i     �     �      �     �     �  	   	  '     '   ;  4   c  *   �  .   �  
   �     �               1     C     `     x     �     �     �     �     �     �          !     7     L     e     x     �     �     �     �     �          &  %   F  &   l  #   �  #   �  #   �  !   �  (   !  <   J  %   �     �      �     �  #        /     O  #   g  %   �  ?   �     �  %        +     ;     K     ]     u     �     �     �     �     �     �     �             4   *     _     q     �     �     �     �     �     �                     5     F  '   K     s  &   �  	   �     �     �     �     �     �     �  "        6     C  "   L  4   o     �     �     �     �     �     �               $  
   <  &   G  '   n  ,   �     �     �     �      �  �    8  �   y   �#  �   m$  �  k%  |  �&  �   j)     *     )*     ;*  )   J*     t*     �*     �*  $   �*     �*     +     3+  )   D+  )   n+  B   �+  /   �+  1   ,     =,     J,     Y,     s,     �,     �,     �,     �,     �,     -     '-     ?-     X-     p-     �-     �-     �-     �-     �-     .     .     ..     M.     a.     .     �.  *   �.  '   �.  2   /  '   D/  *   l/  )   �/  %   �/  +   �/  O   0  '   c0     �0  $   �0  %   �0  (   �0  %   1     E1  '   `1  '   �1  I   �1     �1  &   2     92     M2     `2      y2     �2     �2     �2     �2     �2     3     "3     =3     M3      b3  >   �3     �3     �3     �3  "   4     +4     =4     Y4      u4     �4     �4     �4     �4     �4  6   �4     #5  ,   @5     m5     y5     �5     �5     �5     �5  #   �5  #   �5      6  	   6  (   6  9   A6     {6     �6     �6     �6     �6     �6     �6     �6      7     7  '   )7  (   Q7  -   z7     �7     �7     �7      �7        A   <       s               N       h   r       E   H   )   ^       ]   "      z   $   L   5   t           J      }   \   *   9       k   %               W      o   K   ~   v          7         2   @   b   '   �   (       B   w   e   p   :      .   x                     c   Q          F      j   #   n                       >   d   D   {       R           l          |   	      g                             O   !   3      a   1   f   U      �   y   6      Y   [      S       ,   i   
   ?      m       Z          C      &       /   =      �   ;   _   G   P   8                   +   X       4   u   `      0   -       q   M   T               V       I        -h --help            Show this help
    -V --version         Show version
    -D --browse-domains  Browse for browsing domains instead of services
    -a --all             Show all services, regardless of the type
    -d --domain=DOMAIN   The domain to browse in
    -v --verbose         Enable verbose mode
    -t --terminate       Terminate after dumping a more or less complete list
    -c --cache           Terminate after dumping all entries from the cache
    -l --ignore-local    Ignore local services
    -r --resolve         Resolve services found
    -f --no-fail         Don't fail if the daemon is not available
    -p --parsable        Output in parsable format
     -k --no-db-lookup    Don't lookup service types
    -b --dump-db         Dump service type database
 %s [options]

    -h --help            Show this help
    -s --ssh             Browse SSH servers
    -v --vnc             Browse VNC servers
    -S --shell           Browse both SSH and VNC
    -d --domain=DOMAIN   The domain to browse in
 %s [options] %s <host name ...>
%s [options] %s <address ... >

    -h --help            Show this help
    -V --version         Show version
    -n --name            Resolve host name
    -a --address         Resolve address
    -v --verbose         Enable verbose mode
    -6                   Lookup IPv6 address
    -4                   Lookup IPv4 address
 %s [options] %s <name> <type> <port> [<txt ...>]
%s [options] %s <host-name> <address>

    -h --help            Show this help
    -V --version         Show version
    -s --service         Publish service
    -a --address         Publish address
    -v --verbose         Enable verbose mode
    -d --domain=DOMAIN   Domain to publish service in
    -H --host=DOMAIN     Host where service resides
       --subtype=SUBTYPE An additional subtype to register this service with
    -f --no-fail         Don't fail if the daemon is not available
 %s [options] <new host name>

    -h --help            Show this help
    -V --version         Show version
    -v --verbose         Enable verbose mode
 : All for now
 : Cache exhausted
 Access denied An unexpected D-Bus error occured Avahi SSH Server Browser Avahi VNC Server Browser Avahi client failure: %s Avahi domain browser failure: %s Avahi resolver failure: %s Bad number of arguments
 Bad state Browse for Zeroconf-enabled SSH Servers Browse for Zeroconf-enabled VNC Servers Browsing for service type %s in domain %s failed: %s Browsing for services in domain <b>%s</b>: Browsing for services on <b>local network</b>: Canceled.
 Change domain Choose SSH server Choose Shell Server Choose VNC server Client failure, exiting: %s
 Connecting to '%s' ...
 DNS failure: FORMERR DNS failure: NOTAUTH DNS failure: NOTIMP DNS failure: NOTZONE DNS failure: NXDOMAIN DNS failure: NXRRSET DNS failure: REFUSED DNS failure: SERVFAIL DNS failure: YXDOMAIN DNS failure: YXRRSET Daemon connection failed Daemon not running Desktop Disconnected, reconnecting ...
 E Ifce Prot %-*s %-20s Domain
 E Ifce Prot Domain
 Established under name '%s'
 Failed to add address: %s
 Failed to add service: %s
 Failed to add subtype '%s': %s
 Failed to connect to Avahi server: %s Failed to create address resolver: %s
 Failed to create browser for %s: %s Failed to create client object: %s
 Failed to create domain browser: %s Failed to create entry group: %s
 Failed to create host name resolver: %s
 Failed to create resolver for %s of type %s in domain %s: %s Failed to create simple poll object.
 Failed to parse address '%s'
 Failed to parse port number: %s
 Failed to query host name: %s
 Failed to query version string: %s
 Failed to read Avahi domain: %s Failed to register: %s
 Failed to resolve address '%s': %s
 Failed to resolve host name '%s': %s
 Failed to resolve service '%s' of type '%s' in domain '%s': %s
 Host name conflict
 Host name successfully changed to %s
 Initializing... Invalid DNS TTL Invalid DNS class Invalid DNS return code Invalid DNS type Invalid Error Code Invalid RDATA Invalid address Invalid argument Invalid configuration Invalid domain name Invalid flags Invalid host name Invalid interface index Invalid number of arguments, expecting exactly one.
 Invalid operation Invalid packet Invalid port number Invalid protocol specification Invalid record Invalid record key Invalid service name Invalid service subtype Invalid service type Is empty Local name collision Memory exhausted Name Name collision, picking new name '%s'.
 No command specified.
 No suitable network protocol available Not found Not permitted Not supported OK OS Error Operation failed Resource record key is pattern Server version: %s; Host name: %s
 Service Name Terminal The object passed in was not valid The requested operation is invalid because redundant Timeout reached Too few arguments
 Too many arguments
 Too many clients Too many entries Too many objects Type Version mismatch Waiting for daemon ...
 _Domain... avahi_domain_browser_new() failed: %s
 avahi_service_browser_new() failed: %s
 avahi_service_type_browser_new() failed: %s
 execlp() failed: %s
 n/a service_browser failed: %s
 service_type_browser failed: %s
 Project-Id-Version: avahi.master-tx.it
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2009-04-14 03:30+0200
PO-Revision-Date: 2008-09-24 03:12+0200
Last-Translator: Francesco Tombolini <tombo@adamantio.net>
Language-Team: Italiano <fedora-trans-it@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms:  nplurals=2; plural=(n != 1);
     -h --help            Mostra questo messaggio
    -V --version         Mostra la versione
    -D --browse-domains  Condividi per i domini condivisi invece dei servizi
    -a --all             Mostra tutti i servizi, senza tener conto il tipo
    -d --domain=DOMAIN   Il dominio nel quale fare browsing
    -v --verbose         Abilita la modalità con dettagli
    -t --terminate       Termina dopo lo scaricamento di una lista  piu o meno
                         completa
    -c --cache           Termina dopo lo scaricamento di tutte le voci dalla
                         cache
    -l --ignore-local    Ignora i servizi locali
    -r --resolve         Risolvi i servizi trovati
    -f --no-fail         Non terminare con errore se il demone non è disponibile
    -p --parsable        Ritorna un formato analizzabile
     -k --no-db-lookup    Non guardare i tipi di servizi
    -b --dump-db         Scarica il database dei tipi di servizi
 %s [opzioni]

    -h --help            Mostra questo aiuto
    -s --ssh             Sfoglia i server SSH
    -v --vnc             Sfoglia i server VNC
    -S --shell           Sfoglia sia SSH che VNC
    -d --domain=DOMINIO  Il dominio in cui ricercare
 %s [opzioni] %s <nome host ...>
%s [opzioni] %s <indirizzo ... >

    -h --help            Mostra questo messaggio
    -V --version         Mostra versione
    -n --name            Risolvi nome host
    -a --address         Risolvi indirizzi
    -v --verbose         Abilita modalità verbosa
    -6                   Cerca indirizzi IPv6
    -4                   Cerca indirizzi IPv4
 %s [opzioni] %s <nome> <tipo> <porta> [<txt ...>]
%s [opzioni] %s <nome-host> <indirizzo>

    -h --help            Mostra questo messaggio
    -V --version         Mostra la versione
    -s --service         Pubblica il servizio
    -a --address         Pubblica indirizzo
    -v --verbose         Abilita la modalità verbosa
    -d --domain=DOMAIN   Dominio in cui pubblicare servizi
    -H --host=DOMAIN     L'host dove risiedono i servizi
       --subtype=SUBTYPE Un sottotipo addizionale con cui registrare questo
                         servizio
    -f --no-fail         Non terminare con errore se il demone non è disponibile
 %s [opzioni] <nuovo nome host>

    -h --help            Mostra questo messaggio
    -V --version         Mostra versione
    -v --verbose         Abilita modalità verbosa
 : Tutto per ora
 : Cache esaurita
 Accesso negato Si è verificato un errore D-Bus inatteso Browser avahi per i server SSH Browser avahi per i server VNC Fallimento client avahi: %s Browser di dominio avahi fallito: %s Fallimento risolutore avahi: %s Numero di argomenti non valido
 Stato non valido Browser per i server SSH Zeroconf-enabled Browser per i server VNC Zeroconf-enabled Condivisione per il tipo di servizio %s nel dominio %s fallita: %s Condivisione per servizi nel dominio <b>%s</b>: Condivisione per servizi su <b>local network</b>: Cancellato.
 Cambia dominio Selezionare il server SSH Selezionare il server shell Selezionare il server VNC Fallimento client, uscita: %s
 Connessione a '%s' ...
 Insuccesso DNS: FORMERR Insuccesso DNS: NOTAUTH Insuccesso DNS: NOTIMP Insuccesso DNS: NOTZONE Insuccesso DNS: NXDOMAIN Insuccesso DNS: NXRRSET Insuccesso DNS: REFUSED Insuccesso DNS: SERVFAIL Insuccesso DNS: XYDOMAIN Insuccesso DNS: XYRRSET Connessione demone fallita Demone non in esecuzione Desktop Disconnesso, riconnessione ...
 E Ifce Prot %-*s %-20s Domain
 E Ifce Prot Domain
 Stabilito sotto il nome '%s'
 Aggiunta indirizzo fallita: %s
 Aggiunta servizio fallita: %s
 Fallita l'aggiunta del sottotipo '%s': %s
 Connessione al server avahi fallita: %s Creazione fallita del risolutore di indirizzi: %s
 Creazione di browser per %s fallita: %s Creazione dell'oggetto client fallita: %s
 Creazione del dominio browser fallita: %s Creazione entità gruppo fallita: %s
 Creazione risolutore nome host fallita: %s
 Fallimento nella creazione del risolutore per %s del tipo %s nel dominio %s: %s Creazione oggetto simple poll fallita.
 Analisi indirizzo '%s' fallita
 Analisi numero di porta fallita: %s
 Interrogazione nome host fallita: %s
 Domanda stringa di versione fallita: %s
 Lettura del dominio avahi fallita: %s Registrazione fallita: %s
 Risoluzione indirizzo '%s' fallita: %s
 Risoluzione nome host '%s' fallita: %s
 Risoluzione del servizio '%s' del tipo '%s' nel dominio '%s' fallita: %s
 Conflitto di nome host
 Nome host cambiato con successo in %s
 Inizializzazione... DNS TTL non valido Classe di DNS non valida Codice di ritorno DNS non valido Tipo di DNS non valido Codice di errore non valido RDATA non valido Indirizzi non validi Argomento non valido configurazione non valida nome di dominio non valido Flag non validi Nome host non valido Indice di interfaccia non valido Numero di argomenti non valido, ne è atteso esattamente uno.
 Operazione non valida Pacchetto non valido numero di porta non valido Specifica di protocollo non valida Record non valido Chiave di record non valida Nome di servizio non valido Sottotipo di servizio non valido Tipo di servizio non valido È vuoto collisione di nome locale Memoria terminata Nome Collisione di nome, nella scelta del nuovo nome '%s'.
 Nessun comando specificato.
 Nessun protocollo di rete adatto disponibile Non trovato Non permesso Non supportato OK Errore di SO Operazione fallita La risorsa key record è un pattern Versione server: %s; Nome host: %s
 Nome servizio Terminale L'oggetto dato in ingresso non è valido L'operazione richiesta non è valida in quanto ridondante Raggiunto il timeout Troppo pochi argomenti
 Troppi argomenti
 Troppi client Troppe voci Troppi oggetti Tipo Discrepanza di versione In attesa per il demone ...
 _Dominio... avahi_domain_browser_new() fallito: %s
 avahi_service_browser_new() fallito: %s
 avahi_service_type_browser_new() fallito: %s
 fallito execlp(): %s
 n/a service_browser fallito: %s
 service_type_browser fllito: %s
 
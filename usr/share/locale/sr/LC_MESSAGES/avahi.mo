��    �      �  �   �	      (  �  )  h   �  �   :  i  +    �  �   �     O     ^  %   q  5   �     �     �     �  !   �          $     =     V     m      �     �     �  	   �     �  6   �  '   1  '   Y  "   �  4   �  *   �  .        3  
   ?     J     X     j     ~     �     �     �     �     �               .     C     X     n     �     �     �     �     �     �     �          '     D     _     z  %   �  &   �  #   �  #     #   /  !   S  (   u  <   �  %   �                @  #   _     �     �  #   �  %   �  ?     	   E     O  %   c     �     �     �     �     �     �     �               &     <     P     ^     p  4   �     �     �     �     �                3     H     `     u     ~     �     �     �  '   �     �  &   �  	         "      0      >      A      J      [      `      p      �   "   �      �      �      �      �   *   �   $   #!  +   H!  #   t!  7   �!  %   �!  "   �!  4   "  (   N"  (   w"     �"     �"     �"     �"     �"     �"     
#     #      #  
   8#  &   C#  '   j#  ,   �#     �#     �#     �#      �#  �  $  G  �%  �    *  i  �*    0,  t  >.  �   �1     �2     �2  N   �2  [   83     �3     �3     �3  O   �3     /4  4   M4  4   �4  *   �4  (   �4  =   5  .   I5  %   x5     �5  *   �5  X   �5  Z   66  Z   �6  M   �6  d   :7  G   �7  U   �7     =8     W8     j8  #   �8  C   �8  #   �8  .   9  *   ?9     j9     �9     �9     �9     �9     �9     �9     :     :     2:  G   H:  8   �:     �:  <   �:  
   ";  )   -;     W;  6   v;  5   �;  5   �;  B   <  H   \<  L   �<  H   �<  H   ;=  M   �=  @   �=  ]   >  g   q>  X   �>  B   2?  L   u?  \   �?  X   @  ;   x@  0   �@  D   �@  U   *A  q   �A     �A  )   B  B   8B     {B     �B  0   �B  =   �B  0   C  (   LC  6   uC     �C  %   �C  )   �C  ,   D  )   ED  0   oD  .   �D  \   �D  !   ,E     NE  0   nE  B   �E     �E  *   F  ,   -F  2   ZF  ,   �F     �F  (   �F  
   �F  #   �F  
   G  D   *G  *   oG  P   �G     �G     H     #H     =H  2   IH  %   |H     �H     �H  7   �H  6   �H  D   6I     {I     �I     �I     �I  6   �I  0   J  W   5J  ,   �J  \   �J  ;   K  <   SK  ^   �K  (   �K  (   L  $   AL  +   fL  $   �L  !   �L     �L     �L  
   M  !    M  4   BM     wM  C   �M  D   �M  I   N  1   YN     �N  8   �N  =   �N                 %                  |   N   D   F      �          �           ;   �   7      :      �   �      n                      L       X   �   l   _   �      �   #   Y       >   q   .   J   u      �   3   W       G   �   ]   �   
   �   !       $       c   K          0   f   j   �   I   d       2   `         6   h          �   U   @                    A   m   ~              ,   =   �       (   B      +   r       \   b               �   /   �   g   M   V       1          o   H   w   �      )                 �       x   *           5       p       8   {   C   "   }          <   '   Z               �   v       T           �   9      &   t   �   S   e   R   O       ?   k           �   y   -   z          �       ^      �   P   	   E      �   [   s   a   Q       �       �   �   i              4               -h --help            Show this help
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
 <i>No service currently selected.</i> A NULL terminated list of service types to browse for Access denied Address Address family An unexpected D-Bus error occured Avahi Discovery Avahi SSH Server Browser Avahi VNC Server Browser Avahi Zeroconf Browser Avahi client failure: %s Avahi domain browser failure: %s Avahi resolver failure: %s Bad number of arguments
 Bad state Browse Service Types Browse for Zeroconf services available on your network Browse for Zeroconf-enabled SSH Servers Browse for Zeroconf-enabled VNC Servers Browse service type list is empty! Browsing for service type %s in domain %s failed: %s Browsing for services in domain <b>%s</b>: Browsing for services on <b>local network</b>: Browsing... Canceled.
 Change domain Choose SSH server Choose Shell Server Choose VNC server Client failure, exiting: %s
 Connecting to '%s' ...
 DNS failure: FORMERR DNS failure: NOTAUTH DNS failure: NOTIMP DNS failure: NOTZONE DNS failure: NXDOMAIN DNS failure: NXRRSET DNS failure: REFUSED DNS failure: SERVFAIL DNS failure: YXDOMAIN DNS failure: YXRRSET Daemon connection failed Daemon not running Desktop Disconnected, reconnecting ...
 Domain E Ifce Prot %-*s %-20s Domain
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
 Host Name Host name conflict
 Host name successfully changed to %s
 Initializing... Invalid DNS TTL Invalid DNS class Invalid DNS return code Invalid DNS type Invalid Error Code Invalid RDATA Invalid address Invalid argument Invalid configuration Invalid domain name Invalid flags Invalid host name Invalid interface index Invalid number of arguments, expecting exactly one.
 Invalid operation Invalid packet Invalid port number Invalid protocol specification Invalid record Invalid record key Invalid service name Invalid service subtype Invalid service type Is empty Local name collision Location Memory exhausted Name Name collision, picking new name '%s'.
 No command specified.
 No suitable network protocol available Not found Not permitted Not supported OK OS Error Operation failed Port Resolve service Resolve service host name Resource record key is pattern Server version: %s; Host name: %s
 Service Name Service Type TXT Data Terminal The IP port number of the resolved service The TXT data of the resolved service The address family for host name resolution The address of the resolved service The domain to browse in, or NULL for the default domain The host name of the resolved service The object passed in was not valid The requested operation is invalid because redundant The service name of the selected service The service type of the selected service Timeout reached Too few arguments
 Too many arguments
 Too many clients Too many entries Too many objects Type Version mismatch Waiting for daemon ...
 _Domain... avahi_domain_browser_new() failed: %s
 avahi_service_browser_new() failed: %s
 avahi_service_type_browser_new() failed: %s
 execlp() failed: %s
 n/a service_browser failed: %s
 service_type_browser failed: %s
 Project-Id-Version: avahi
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2009-04-14 03:30+0200
PO-Revision-Date: 2009-03-21 15:58+0100
Last-Translator: Miloš Komarčević <kmilos@gmail.com>
Language-Team: Serbian (sr) <fedora-trans-sr@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
     -h --help             Прикажи ову помоћ
    -V --version          Прикажи верзију
    -D --browse-domains   Претражи домене који се могу претраживати уместо услуга
    -a --all              Прикажи све услуге, без обзира на врсту
    -d --domain=ДОМЕН     Домен за претраживање
    -v --verbose          Укључи режим опширног исписа
    -t --terminate        Прекини после избацивања више или мање завршене листе
    -c --cache            Прекини после избацивања свих записа из кеша
    -l --ignore-local     Игнориши локалне услуге
    -r --resolve          Разреши пронађене услуге
    -f --no-fail          Немој да откажеш ако системска услуга није доступна
    -p --parsable         Излаз у формату који се може рашчланити
     -k --no-db-lookup     Немој тражити врсте услуге
    -b --dump-db          Избаци базу података врсте услуге
 %s [опције]

    -h --help             Прикажи ову помоћ
    -s --ssh              Претражи SSH сервере
    -v --vnc              Претражи VNC сервере
    -S --shell            Претражи и SSH и VNC
    -d --domain=ДОМЕН     Домен у коме ће се вршити претраживање
 %s [опције] %s <назив домаћина ...>
%s [опције] %s <адреса ... >

    -h --help             Прикажи ову помоћ
    -V --version          Прикажи верзију
    -n --name             Разреши назив домаћина
    -a --address          Разреши адресу
    -v --verbose          Укључи режим опширног исписа
    -6                    Тражи IPv6 адресу
    -4                    Тражи IPv4 адресу
 %s [опције] %s <назив> <врста> <порт> [<txt ...>]
%s [опције] %s <назив-домаћина> <адреса>

    -h --help             Прикажи ову помоћ
    -V --version          Прикажи верзију
    -s --service          Објави услугу
    -a --address          Објави адресу
    -v --verbose          Укључи режим опширног исписа
    -d --domain=ДОМЕН     Домен у којем ће се објавити услуге
    -H --host=ДОМЕН       Домаћин на којем се налазе услуге
       --subtype=ПОДВРСТА Додатна подврста са којом ће се регистровати ова услуга
    -f --no-fail          Немој да откажеш ако системска услуга није доступна
 %s [опције] <нови назив домаћина>

    -h --help             Прикажи ову помоћ
    -V --version          Прикажи верзију
    -v --verbose          Укључи режим опширног исписа
 : за сада све
 : кеш је препуњен
 <i>Ниједна услуга тренутно није изабрана.</i> Списак врста услуга за прегледање ограничен са NULL Забрањен приступ Адреса Породица адреса Десила се неочекивана грешка у D-Bus софтверу Авахи откривање Претраживач Авахи SSH сервера Претраживач Авахи VNC сервера Авахи Zeroconf претраживач Квар Авахи клијента: %s Квар Авахи претраживача домена: %s Квар Авахи разрешивача: %s Лош број аргумената
 Лоше стање Прегледај врсте услуга Претражујем доступне Zeroconf услуге на вашој мрежи Претражујем SSH сервере на којима је омогућен Zeroconf Претражујем VNC сервере на којима је омогућен Zeroconf Списак врста сервиса за преглед је празан! Претраживање за врстом услуге %s у домену %s неуспешно: %s Претраживање за услугом у домену <b>%s</b>: Претраживање за услугом на <b>локалној мрежи</b>: Претражујем... Отказано.
 Промени домен Изаберите SSH сервер Изаберите сервер командног окружења Изаберите VNC сервер Квар клијента, излазим: %s
 Повезујем се на „%s“ ...
 DNS квар: FORMERR DNS квар: NOTAUTH DNS квар: NOTIMP DNS квар: NOTZONE DNS квар: NXDOMAIN DNS квар: NXRRSET DNS квар: REFUSED DNS квар: SERVFAIL DNS квар: YXDOMAIN DNS квар: YXRRSET Повезивање системске услуге неуспешно Системска услуга се не покреће Радна површина Неповезан, поновно повезивање ...
 Домен Д Спр Прот %-*s %-20s Домен
 Д Спр Прот Домен
 Успостављено под именом „%s“
 Неуспешно додавање адресе: %s
 Неуспешно додавање услуге: %s
 Неуспешно додавање подврсте „%s“: %s
 Неуспешно повезивање на Авахи сервер: %s Неуспешно прављење разрешивача адресе: %s
 Неуспешно прављење претраживача за %s: %s Неуспешно прављење објекта клијента: %s
 Неуспешно прављење претраживача домена: %s Неуспешно прављење записа групе: %s
 Неуспешно прављење разрешивача назива домаћина: %s
 Неуспешно прављење разрешивача за %s врсте %s у домену %s: %s Неуспешно прављење објекта једноставне анкете.
 Неуспешно рашчлањивање адресе „%s“
 Неуспешно разрешавање броја прикључка: %s
 Неуспешно извршавање упита за називом домаћина: %s
 Неуспешно извршавање упита за ниском верзије: %s
 Неуспешно читање Авахи домена: %s Неуспешна регистрација: %s
 Неуспешно разрешавање адресе „%s“: %s
 Неуспешно разрешавање назива домаћина „%s“: %s
 Неуспешно резрешавање услуге „%s“ врсте „%s“ у домену „%s“: %s
 Назив домаћина Сукоб назива домаћина
 Назив домаћина успешно промењен у %s
 Покрећем... Неисправан DNS TTL Неисправна класа DNS услуге Неисправан повратни код DNS услуге Неисправна врста DNS услуге Неисправан код грешке Неисправна RDATA врста података Нетачна адреса Неисправан аргумент Неисправно подешавање Неисправан назив домена Неисправни индикатори Неисправан назив домаћина Неисправан индекс спреге Неисправан број аргумената, очекујем тачно један.
 Нетачна операција Неисправан пакет Неисправан број прикључка Неисправна спецификација протокола Неисправан запис Неисправан кључ записа Неисправан назив услуге Неисправна подврста услуга Неисправна врста услуге Празно Сукоб локалних назива Место Меморија препуњена Назив Сукоб назива, узимам нови назив „%s“.
 Команда није одређена.
 Одговарајући мрежни протокол није доступан Није пронађено Није дозвољено Није подржано У реду Грешка оперативног система Операција неуспешна Порт Разреши услугу Разреши назив домаћина услуге Кључ записа ресурса је шаблон Верзија сервера : %s; назив домаћина: %s
 Назив услуге Врста услуге TXT подаци Терминал Број IP порта разрешене услуге TXT подаци разрешене услуге Породица адреса за разрешавање назива домаћина Адреса разрешене услуге Домен за прегледање, или NULL за подразумевани домен Назив домаћина разрешене услуге Пренос објекта није био исправан Тражена операција је неисправна јер је редундантна Назив изабране услуге Врста изабране услуге Пауза је достигнута Сувише мало аргумената
 Превише аргумената
 Превише клијената Превише записа Превише објеката Врста Неслагање верзије Чекам на системску услугу ...
 _Домен... Неуспешна функција avahi_domain_browser_new(): %s
 Неуспешна функција avahi_service_browser_new(): %s
 Неуспешна функција avahi_service_type_browser_new(): %s
 Функција execlp() неуспешна: %s
 непознато Неуспешна функција service_browser: %s
 Неуспешна функција service_type_browser: %s
 
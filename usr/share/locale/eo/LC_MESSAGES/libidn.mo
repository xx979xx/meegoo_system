��    2      �  C   <      H  c   I  a   �  K     �   [  '  X     �     �  *   �  �  �  -   �	  &   �	     
  .   -
  )   \
  )   �
  -   �
  I   �
     (     6     U  "   c      �  &   �  -   �  -   �     *     J  #   Z  6   ~     �     �     �     �       &     O   B  -   �     �     �  #   �               6     O     V     j     ~     �     �  q  �  i   8  g   �  F   
    Q    U     l     �  *   �  �  �  '   �  %   �     �  .   �  (   +  &   T  .   {  J   �     �            (   .  +   W  (   �  '   �  &   �     �       +   -  8   Y  !   �     �     �     �     �  &     K   7  +   �     �     �  !   �     �          %     >     E     Y     m     �     �                                               "   /            
   	                       !              &                %   1               '            (       $   *         +           )      .      0      2       ,   -         #             --debug              Print debugging information
      --quiet              Silent operation
   -h, --help               Print help and exit
  -V, --version            Print version and exit
   -n, --nfkc               Normalize string according to Unicode v3.2 NFKC
   -p, --profile=STRING     Use specified stringprep profile instead
                             Valid stringprep profiles: `Nameprep',
                             `iSCSI', `Nodeprep', `Resourceprep', 
                             `trace', `SASLprep'
   -s, --stringprep         Prepare string according to nameprep profile
  -d, --punycode-decode    Decode Punycode
  -e, --punycode-encode    Encode Punycode
  -a, --idna-to-ascii      Convert to ACE according to IDNA (default mode)
  -u, --idna-to-unicode    Convert from ACE according to IDNA
 Cannot allocate memory Charset `%s'.
 Code points prohibited by top-level domain Command line interface to the internationalized domain name library.

All strings are expected to be encoded in the preferred charset used
by your locale.  Use `--debug' to find out what this charset is.  You
can override the charset used by setting environment variable CHARSET.

To process a string that starts with `-', for example `-foo', use `--'
to signal the end of parameters, as in `idn --quiet -a -- -foo'.

Mandatory arguments to long options are mandatory for short options too.
 Conflicting bidirectional properties in input Error in stringprep profile definition Flag conflict with profile Forbidden leading or trailing minus sign (`-') Forbidden unassigned code points in input Input already contain ACE prefix (`xn--') Input does not start with ACE prefix (`xn--') Internationalized Domain Name (IDN) convert STRINGS, or standard input.

 Invalid input Malformed bidirectional string Missing input No top-level domain found in input Non-digit/letter/hyphen in input Output would be too large or too small Output would exceed the buffer space provided Prohibited bidirectional code points in input Prohibited code points in input Punycode failed String not idempotent under ToASCII String not idempotent under Unicode NFKC normalization String preparation failed String size limit exceeded Success System dlopen failed System iconv failed Try `%s --help' for more information.
 Type each input string on a line by itself, terminated by a newline character.
 Unicode normalization failed (internal error) Unknown error Unknown profile Usage: %s [OPTION]... [STRINGS]...
 idna_to_ascii_4z: %s idna_to_unicode_8z4z (TLD): %s idna_to_unicode_8z4z: %s malloc punycode_decode: %s punycode_encode: %s stringprep_profile: %s tld_check_4z (position %lu): %s tld_check_4z: %s Project-Id-Version: libidn 1.9
Report-Msgid-Bugs-To: bug-libidn@gnu.org
POT-Creation-Date: 2010-05-22 13:29+0200
PO-Revision-Date: 2008-09-01 09:40+0100
Last-Translator: Edmund GRIMLEY EVANS <edmundo@rano.org>
Language-Team: Esperanto <translation-team-eo@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
       --debug              Montri informojn por erarspurado
      --quiet              Silenta funkciado
   -h, --help               Montri helpon kaj eliri
  -V, --version            Montri version kaj eliri
   -n, --nfkc               Normigi signoĉenon laŭ Unikodo v3.2 NFKC
   -p, --profile=ĈENO       Uzi specifitan stringprep-profilon anstataŭe
                             Validaj stringprep-profiloj: 'Nameprep',
                             'iSCSI', 'Nodeprep', 'Resourceprep',
                             'trace', 'SASLprep'
   -s, --stringprep         Pretigi ĉenon laŭ la profilo nameprop
  -d, --punycode-decode    Malkodi Punycode
  -e, --punycode-encode    Kodi Punycode
  -a, --idna-to-ascii      Konverti al ACE laŭ IDNA (implicita reĝimo)
  -u, --idna-to-unicode    Konverti de ACE laŭ IDNA
 Ne povas akiri memoron Signaro '%s'.
 Koderoj malpermesitaj de supera retregiono Komandlinia interfaco al la biblioteko por internaciigitaj retnomoj.

Ĉiuj ĉenoj estu koditaj per la preferata signaro de via
lokaĵaro. Uzu '--debug' por eltrovi, kiu ĝi estas. Vi
povas specifi alian signaron per la media variablo CHARSET.

Por trakti ĉenon, kiu komenciĝas per '-', ekzemple '-foo', uzu '--'
por indiki la finon de la parametroj, kiel en 'idn --quiet -a -- -foo'.
Devigaj argumentoj por longaj opcioj estas devigaj ankaŭ por mallongaj
opcioj.
 Malkongruaj dudirektaj trajtoj en enigo Eraro en difino de stringprep-profilo Flaga malkongruo kun profilo Malpermesita minuso ('-') ĉe komenco aŭ fino Malpermesita neatribuita kodero en enigo Enigo jam havas ACE-prefikson ('xn--') Enigo ne komenciĝas per ACE-prefikso ('xn--') Internaciigitaj retnomoj (IDN) konverti ĈENOJn, aŭ la normalan enigon.

 Nevalida enigo Misformita dudirekta ĉeno Mankanta enigo Nenia supera retregiono trovita en enigo Signo ne-cifero/litero/dividstreko en enigo Eligo estus tro granda aŭ tro malgranda Eligo estus tro granda por donita bufro Malpermesita dudirekta kodero en enigo Malpermesita kodero en enigo Punycode malsukcesis Ĉeno ŝanĝiĝas ĉe dua apliko de ToASCII Ĉeno ŝanĝiĝas ĉe dua apliko de unikoda NFKC-normigo Pretigo de signoĉeno malsukcesis Signoĉena grandolimo superita Sukceso Sistema dlopen malsukcesis Sistema iconv malsukcesis Provu '%s --help' por pliaj informoj.
 Tajpu ĉiun enigan ĉenon en propra linio, kun linifina signo ĉe la
fino.
 Unikoda normigo malsukcesis (interna eraro) Nekonata eraro Nekonata profilo Uzado: %s [OPCIO]... [ĈENOJ]...
 idna_to_ascii_4z: %s idna_to_unicode_8z4z (TLD): %s idna_to_unicode_8z4z: %s malloc punycode_decode: %s punycode_encode: %s stringprep_profile: %s tld_check_4z (loko %lu): %s tld_check_4z: %s 
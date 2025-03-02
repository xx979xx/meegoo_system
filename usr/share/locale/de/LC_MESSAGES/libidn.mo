��    1      �  C   ,      8  c   9  a   �  K   �  �   K  '  H     p     �  *   �  �  �  -   �	  &   �	     
  .   
  )   L
  )   v
  -   �
  I   �
          &     E  "   S      v  &   �  -   �  -   �          :  #   J  6   n     �     �     �     �     �  &     O   2  -   �     �     �  #   �     �          &     ?     S     g     ~     �  i  �  f     n   �  J   �  �   :  2  7     j       1   �  N  �  <     )   R     |  .   �  1   �  3   �  4   .  S   c     �      �     �  .   �  "   +  %   N  9   t  2   �  #   �       $     8   B  "   {  (   �     �     �     �  5     h   =  7   �     �     �  $        )     >     ]     v     �     �     �     �                                               "   .            
   	                       !              &                %   0               '            (       $   *         +           )             /      1       ,   -         #             --debug              Print debugging information
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
 idna_to_ascii_4z: %s idna_to_unicode_8z4z (TLD): %s idna_to_unicode_8z4z: %s punycode_decode: %s punycode_encode: %s stringprep_profile: %s tld_check_4z (position %lu): %s tld_check_4z: %s Project-Id-Version: libidn 1.9
Report-Msgid-Bugs-To: bug-libidn@gnu.org
POT-Creation-Date: 2010-05-22 13:29+0200
PO-Revision-Date: 2009-11-08 23:34+0100
Last-Translator: Roland Illig <roland.illig@gmx.de>
Language-Team: German <translation-team-de@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
       --debug              Debugging-Informationen ausgeben
      --quiet              Ruhig arbeiten
   -h, --help               Hilfe ausgeben und beenden
  -V, --version            Version ausgeben und beenden
   -n, --nfkc               String gemäß Unicode v3.2 NFKC normalisieren
   -p, --profile=STRING     Angegebenes stringprep-Profil benutzen
                             Gültige stringprep-Profile: `Nameprep',
                             `iSCSI', `Nodeprep', `Resourceprep', 
                             `trace', `SASLprep'
   -s, --stringprep         String gemäß nameprep-Profil vorbereiten
  -d, --punycode-decode    Punycode decodieren
  -e, --punycode-encode    Punycode codieren
  -a, --idna-to-ascii      Gemäß IDNA in ACE konvertieren (Standardmodus)
  -u, --idna-to-unicode    Gemäß IDNA aus ACE heraus konvertieren
 Nicht genug Speicher Zeichensatz »%s«.
 Codepunkte sind von der Top-Level-Domain verboten Kommandozeilenprogramm für die Bibliothek für internationalisierte Domainnamen.

Alle Strings werden so codiert erwartet, wie es der Zeichensatz der Locale
angibt. Benutzen Sie »--debug« um den aktuellen Zeichensatz herauszufinden.
Sie können einen Zeichensatz explizit mit der Umgebungsvariable CHARSET
festlegen.

Um einen String zu verarbeiten, der mit »-« beginnt (zum Beispiel »-foo«),
können Sie das Ende der Optionen mit »--« kennzeichnen.
Zum Beispiel: »idn --quiet -a -- -foo«.

Notwendige Argumente für die langen Optionen gelten genau so für die
kurzen Optionen.
 Widersprüchliche bidirektional-Eigenschaften in der Eingabe Fehler in der Stringprep-Profildefinition Flag-Konflikt mit dem Profil Verbotenes Minuszeichen am Anfang oder am Ende Verbotene unzugeordnete Codepunkte in der Eingabe Eingabe enthält bereits das ACE-Präfix (»xn--«) Eingabe beginnt nicht mit dem ACE-Präfix (»xn--«) Internationalized Domain Name (IDN) konvertiert STRINGS oder die Standardeingabe.

 Ungültige Eingabe Ungültiger Bidirektional-String Fehlende Eingabe Keine Top-Level-Domain in der Eingabe gefunden Unerlaubtes Zeichen in der Eingabe Ergebnis wäre zu groß oder zu klein Ausgabe würde den vorhandenen Pufferspeicher überfluten Verbotene bidirektionale Codepunkte in der Eingabe Verbotene Codepunkte in der Eingabe Punycode fehlgeschlagen String verändert sich durch ToASCII String verändert sich durch Unicode-NFKC-Normalisierung String-Vorbereitung fehlgeschlagen String-Größenbegrenzung überschritten Erfolg System-dlopen fehlgeschlagen System-iconv fehlgeschlagen Versuchen Sie »%s --help« für mehr Informationen.
 Geben Sie jede Eingabezeichenkette in einer eigenen Zeile ein, durch einen Zeilenumbruch abgeschlossen.
 Unicode-Normalisierung fehlgeschlagen (Interner Fehler) Unbekannter Fehler Unbekanntes Profil Aufruf: %s [OPTION]... [STRINGS]...
 idna_to_ascii_4z: %s idna_to_unicode_8z4z (TLD): %s idna_to_unicode_8z4z: %s punycode_decode: %s punycode_encode: %s stringprep_profile: %s tld_check_4z (position %lu): %s tld_check_4z: %s 
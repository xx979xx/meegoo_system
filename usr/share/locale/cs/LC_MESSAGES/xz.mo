��   S   0   �  q   `     $     4  <      �  �   �  =  w    �  �  �  -   }  F   �     �     
  7     =   T  �  �  H   A  �   �      �   .  >   �  9     �   ;  �   �  �   V  �   �  �   �  �   =     �     	          0  !   F  !   h  '   �     �     �  *   �  /     %   M  ,   s     �  4   �     �  .        2     J     c      �      �  h   �  <   +     h  :   {  2   �     �  $     /   +  I   [     �      �  O   �     *  A   E     �  8   �     �     �  (   	  I   2  !   |     �  0   �  \   �  -   G  /   u  ;   �  D   �  ,   &   %   S      y   "   �      �   A   �   Q   
!  *   \!     �!  �  �!  �   v#  �  ^$  %  :(  �  `)  ;   '+  W   c+     �+     �+  T   �+  E   D,  �  �,  [   x.  �   �.  T  u/  �   �0  K   v1  8   �1  �   �1  �   �2  �   L3  �   �3  �   �4  �   �5     g6     {6     �6     �6  &   �6  )   �6  +   7  !   A7  +   c7  6   �7  @   �7  4   8  :   <8     w8  E   �8  &   �8  0   �8     ,9     G9  '   c9  1   �9  1   �9  �   �9  D   q:     �:  P   �:  =   ;  "   [;  $   ~;  1   �;  X   �;     .<  !   D<  g   f<  #   �<  L   �<  (   ?=  C   h=      �=     �=  $   �=  ^   >  %   `>  '   �>  C   �>  _   �>  7   R?  )   �?  A   �?  Q   �?  (   H@  +   q@     �@  .   �@     �@  M   �@  a   KA  5   �A     �A                    A   .              G          7       H          "   D      M                   6       F   0      E   !   =          N   %   P      @          8   K   /             ?   <   '   ;      +   2       >             -   S       *       &      (   1      #         3              :   L   J   $      R      Q   C         )   O          5           ,   
              9       	       I           4      B            �A     �A  D  X  t  �  B  2          ����5B  0               ����jB  7          �����B  .               ���� 
  --delta[=OPTS]      Delta filter; valid OPTS (valid values; default):
                        dist=NUM   distance between bytes being subtracted
                                   from each other (1-256; 1) 
  --lzma1[=OPTS]      LZMA1 or LZMA2; OPTS is a comma-separated list of zero or
  --lzma2[=OPTS]      more of the following options (valid values; default):
                        preset=NUM reset options to preset number NUM (0-9)
                        dict=NUM   dictionary size (4KiB - 1536MiB; 8MiB)
                        lc=NUM     number of literal context bits (0-4; 3)
                        lp=NUM     number of literal position bits (0-4; 0)
                        pb=NUM     number of position bits (0-4; 2)
                        mode=MODE  compression mode (fast, normal; normal)
                        nice=NUM   nice length of a match (2-273; 64)
                        mf=NAME    match finder (hc3, hc4, bt2, bt3, bt4; bt4)
                        depth=NUM  maximum search depth; 0=automatic (default) 
  --subblock[=OPTS]   Subblock filter; valid OPTS (valid values; default):
                        size=NUM   number of bytes of data per subblock
                                   (1 - 256Mi; 4Ki)
                        rle=NUM    run-length encoder chunk size (0-256; 0) 
  --x86[=OPTS]        x86 BCJ filter
  --powerpc[=OPTS]    PowerPC BCJ filter (big endian only)
  --ia64[=OPTS]       IA64 (Itanium) BCJ filter
  --arm[=OPTS]        ARM BCJ filter (little endian only)
  --armthumb[=OPTS]   ARM-Thumb BCJ filter (little endian only)
  --sparc[=OPTS]      SPARC BCJ filter
                      Valid OPTS for all BCJ filters:
                        start=NUM  start offset for conversions (default=0) 
 Basic file format and compression options:
 
 Custom filter chain for compression (alternative for using presets): 
 Operation modifiers:
 
 Other options:
 
With no FILE, or when FILE is -, read standard input.
       --info-memory   display the memory usage limit and exit       --no-sparse     do not create sparse files when decompressing
  -S, --suffix=.SUF   use the suffix `.SUF' on compressed files
      --files=[FILE]  read filenames to process from FILE; if FILE is
                      omitted, filenames are read from the standard input;
                      filenames must be terminated with the newline character
      --files0=[FILE] like --files but use the null character as terminator       --robot         use machine-parsable messages (useful for scripts)   -0 .. -9            compression preset; 0-2 fast compression, 3-5 good
                      compression, 6-9 excellent compression; default is 6   -F, --format=FMT    file format to encode or decode; possible values are
                      `auto' (default), `xz', `lzma', and `raw'
  -C, --check=CHECK   integrity check type: `crc32', `crc64' (default),
                      `sha256', or `none' (use with caution)   -M, --memory=NUM    use roughly NUM bytes of memory at maximum; 0 indicates
                      the default setting, which is 40 % of total RAM   -Q, --no-warn       make warnings not affect the exit status   -V, --version       display the version number and exit   -e, --extreme       use more CPU time when encoding to increase compression
                      ratio without increasing memory usage of the decoder   -h, --help          display the short help (lists only the basic options)
  -H, --long-help     display this long help and exit   -h, --help          display this short help and exit
  -H, --long-help     display the long help (lists also the advanced options)   -k, --keep          keep (don't delete) input files
  -f, --force         force overwrite of output file and (de)compress links
  -c, --stdout        write to standard output and don't delete input files   -q, --quiet         suppress warnings; specify twice to suppress errors too
  -v, --verbose       be verbose; specify twice for even more verbose   -z, --compress      force compression
  -d, --decompress    force decompression
  -t, --test          test compressed file integrity
  -l, --list          list information about files  Operation mode:
 %s MiB (%s bytes)
 %s home page: <%s>
 %s: Cannot remove: %s %s: Cannot set the file group: %s %s: Cannot set the file owner: %s %s: Cannot set the file permissions: %s %s: Closing the file failed: %s %s: Error reading filenames: %s %s: File already has `%s' suffix, skipping %s: File has setuid or setgid bit set, skipping %s: File has sticky bit set, skipping %s: Filename has an unknown suffix, skipping %s: Filter chain: %s: Input file has more than one hard link, skipping %s: Invalid filename suffix %s: Invalid multiplier suffix. Valid suffixes: %s: Invalid option name %s: Invalid option value %s: Is a directory, skipping %s: Is a symbolic link, skipping %s: Not a regular file, skipping %s: Null character found when reading filenames; maybe you meant to use `--files0' instead of `--files'? %s: Options must be `name=value' pairs separated with commas %s: Read error: %s %s: Seeking failed when trying to create a sparse file: %s %s: Unexpected end of input when reading filenames %s: Unknown file format type %s: Unsupported integrity check type %s: Value is not a non-negative decimal integer %s: With --format=raw, --suffix=.SUF is required unless writing to stdout %s: Write error: %s Cannot establish signal handlers Cannot read data from standard input when reading filenames from standard input Compressed data is corrupt Compression and decompression with --robot are not supported yet. Empty filename, skipping Error restoring the O_APPEND flag to standard output: %s File format not recognized Internal error (bug) LZMA1 cannot be used with the .xz format Mandatory arguments to long options are mandatory for short options too.
 Maximum number of filters is four Memory usage limit reached No integrity check; not verifying file integrity On this system and configuration, this program will use a maximum of roughly
%s MiB RAM and  Report bugs to <%s> (in English or Finnish).
 The .lzma format supports only the LZMA1 filter The environment variable XZ_OPT contains too many arguments The exact options of the presets may vary between software versions. The sum of lc and lp must be at maximum of 4 Try `%s --help' for more information. Unexpected end of input Unsupported LZMA1/LZMA2 preset: %s Unsupported options Unsupported type of integrity check; not verifying file integrity Usage: %s [OPTION]... [FILE]...
Compress or decompress FILEs in the .xz format.

 Using a preset in raw mode is discouraged. one thread.

 Project-Id-Version: xz-utils
Report-Msgid-Bugs-To: lasse.collin@tukaani.org
POT-Creation-Date: 2011-01-07 01:39+0000
PO-Revision-Date: 2009-12-05 13:51+0100
Last-Translator: Marek Černocký <marek@manet.cz>
Language-Team: Czech <diskuze@lists.l10n.cz>
Language: cs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2
X-Poedit-Language: Czech
X-Poedit-SourceCharset: utf-8
 
 --delta[=VOLBY]       Filtr Delta; platné VOLBY (platné hodnoty; výchozí):
                         dist=POČ   vzdálenost mezi bajty, které jsou odečítány
                                    jeden od druhého (1-256; 1) 
 --lzma1[=VOLBY]       LZMA1 nebo LZMA2; VOLBY je čárkou oddělovaný seznam žádné
 --lzma2[=VOLBY]       nebo více následujících voleb (platné hodnoty; výchozí):
                         preset=POČ obnovení voleb na přednastavený POČet (0-9)
                         dict=POČ   velikost slovníku (4 KiB - 1536 MiB; 8 MiB)
                         lc=POČ     počet kontextových bitů literálu (0-4; 3)
                         lp=POČ     počet pozičních bitů literálu (0-4; 0)
                         pb=POČ     počet pozičních bitů (0-4; 2)
                         mode=REŽIM režim komprimace (fast, normal; normal)
                         nice=POČ   příznivá délka shody (2-273; 64)
                         mf=NÁZEV   vyhledávač shod (hc3, hc4, bt2, bt3, bt4;
                                    bt4)
                         depth=POČ  maximální hloubka prohledávání;
                                    0=automaticky (výchozí) 
 --subblock[=VOLBY]    Subblokový filtr; platné VOLBY (platné hodnoty; výchozí):
                         size=POČ   počet bajtů dat na subblok
                                    (1 - 256 Mi; 4 Ki)
                         rle=POČ    velikost dávky pro kodér run-length (0-256; 0) 
 --x86[=VOLBY]         Filtr x86 BCJ
 --powerpc[=VOLBY]     Filtr PowerPC BCJ (pouze big endian)
 --ia64[=VOLBY]        Filtr IA64 (Itanium) BCJ
 --arm[=VOLBY]         Filtr ARM BCJ (pouze little endian)
 --armthumb[=VOLBY]    Filtr ARM-Thumb BCJ (pouze little endian)
 --sparc[=VOLBY]       Filtr SPARC BCJ
                       Platné volby pro všechny filtry BCJ:
                         start=POČ  počáteční posun pro převody (výchozí=0) 
Základní přepínače pro formát souboru a komprimaci:
 
Vlastní omezující filtr pro komprimaci (alternativa k použití přednastavených): 
Modifikátory operací:
 
 Ostatní přepínače:
 
Pokud SOUBOR není zadán nebo pokud je -, bude se číst ze standardního vstupu.
      --info-memory     zobrazit omezení využití paměti a skončit      --no-sparse       nevytvářet při dekomprimaci záložní soubory
 -S, --suffix=.SUF     použít u komprimovaných souborů příponu „.SUF“
     --files=[SOUBOR]  číst názvy souborů, které se mají zpracovat, ze SOUBORu;
                       pokud není SOUBOR zadán, čte se ze standardního vstupu;
                       názvy souborů musí být zakončeny znakem nového řádku
     --files0=[SOUBOR] stejné jako --files, ale použít k zakončování nulový znak      --robot           použít strojově analyzovatelné zprávy (užitečné pro skripty)  -0 .. -9              přednastavení komprimace; 0-2 rychlá komprimace, 3-5
                       dobrá komprimace, 6-9 skvělá komprimace; výchozí je 6  -F, --format=FORMÁT   formát souboru k zakódování nebo dekódování; možné
                       hodnoty jsou „auto“ (výchozí), „xz“, „lzma“ a „raw“
 -C, --check=KONTROLA  typ kontroly integrity: „crc32“, „crc64“ (výchozí),
                       „sha256“ nebo „none“ (používejte s rozmyslem)  -M, --memory=POČ      použít zhruba POČ bajtů paměti jako maximum; 0 znamená
                       výchozí nastavení, což je 40% celkového množství paměti  -Q, --no-warn         způsobí, že varování neovlivní stav ukončení  -V, --version         zobrazit číslo verze a skončit  -e, --extreme         využít více procesorového času pro kódování, čímž se
                       zvýší kompresní poměr bez zvýšení paměti použité kodérem  -h, --help            zobrazit krátkou nápovědu (vypíše jen základní přepínače)
 -H, --long-help       zobrazit tuto úplnou nápovědu a skončit  -h, --help            zobrazit tuto zkrácenou nápovědu a skončit
 -H, --long-help       zobrazit úplnou nápovědu (vypíše i pokročilé přepínače)  -k, --keep            zachovat (nemazat) vstupní soubory
 -f, --force           vynutit přepis výstupního souboru a de/komprimovat odkazy
 -c, --stdout          zapisovat na standardní výstup a nemazat vstupní soubory  -q, --quiet           potlačit varování; zadáním dvakrát, potlačíte i chyby
 -v, --verbose         podrobnější zprávy; zadáním dvakrát, budou ještě
                       podrobnější  -z, --compress        provést komprimaci
 -d, --decompress      provést dekomprimaci
 -t, --test            testovat integritu komprimovaného souboru
 -l, --list            vypsat informace o souborech Operační režim:
 %s MiB (%s bajtů)
 Domovská stránka %s: <%s>
 %s: Nelze odstranit: %s %s: Nelze nastavit skupinu souboru: %s %s: Nelze nastavit vlastníka souboru: %s %s: Nelze nastavit oprávnění souboru: %s %s: Selhalo zavření souboru: %s %s: Chyba při čtení názvů souborů: %s %s: Soubor již má příponu „%s“, vynechává se %s: Soubor má nastavený bit setuid nebo setgid, vynechává se %s: Soubor má nastavený bit sticky, vynechává se %s: Název souboru má neznámou příponu, vynechává se %s: Omezující filtr: %s: Vstupní soubor má více než jeden pevný odkaz, vynechává se %s: Neplatná přípona názvu souboru %s: Neplatná přípona. Platné přípony jsou: %s: Neplatný název volby %s: Neplatná hodnota volby %s: Jedná se o složku, vynechává se %s: Jedná se o symbolický odkaz, vynechává se %s: Nejedná se o běžný soubor, vynechává se %s: Byl nalezen nulový znak při čtení názvů souborů; nechtěli jste náhodou použít „--files0“ místo „--files“? %s: Volby musí být páry „název=hodnota“ oddělené čárkami %s: Chyba čtení: %s %s: Selhalo nastavení pozice při pokusu o vytvoření záložního souboru: %s %s: Neočekávaný konec vstupu při čtení názvů souborů %s: Neznámý typ formátu souboru %s: Neznámý typ kontroly integrity %s: Hodnota není nezáporné desítkové číslo %s: S --format=raw je vyžadováno --sufix=.SUF, vyjma zápisu do standardního výstupu %s: Chyba zápisu: %s Nelze ustanovit ovladač signálu Ze standardního vstupu nelze číst data, když se ze standardního vstupu načítají názvy souborů Komprimovaná data jsou poškozená Komprimace a dekomprimace s přepínačem --robot není zatím podporovaná. Prázdný název souboru, vynechává se Chyba při obnovení příznaku O_APPEND na standardní výstup: %s Formát souboru nebyl rozpoznán Interní chyba LZMA1 nelze použít s formátem .xz Povinné argumenty pro dlouhé přepínače jsou povinné rovněž pro krátké přepínače.
 Maximální počet filtrů je čtyři Dosaženo omezení použitelné paměti Žádná kontrola integrity; integrita souboru se nebude ověřovat Na tomto systému a s tímto nastavením použije tento program maximum ze zhruba
%s MiB RAM a  Chyby hlaste na <%s> (v angličtině nebo finštině).
 Formát .lzma podporuje pouze filtr LZMA1 Proměnná prostředí XZ_OPT obsahuje příliš mnoho argumentů Přesné volby u přednastavení se mohou lišit mezi různými verzemi softwaru. Součet lc a lp musí být maximálně 4 Zkuste „%s --help“ pro více informací Neočekávaný konec vstupu Nepodporované přednastavení LZMA1/LZMA2: %s Nepodporovaná volba Nepodporovaný typ kontroly integrity; integrita souboru se nebude ověřovat Použití: %s [PŘEPÍNAČ]... [SOUBOR]...
Komprimuje nebo dekomprimuje SOUBORy ve formátu xz.

 Použití přednastavení v režimu raw je nevhodné. jedno vlákno.

 PRIu32 PRIu64 The selected match finder requires at least nice=% Value of the option `%s' must be in the range [%, %] Vybraný vyhledávač shod vyžaduje minimálně nice=% Hodnota volby „%s“ musí být v rozsahu [%, %] 
��    �      �  �   �
      �     �  �   �  �   f  <   �     4     Q     l     u     �     �     �     �     �  7   �          .     I      N     o  &   �     �  .   �  4     "   8      [  D   |  A   �  7     !   ;     ]  "   {  A   �  +   �  '        4     L     d  #   z     �  #   �  -   �            $   6     [     w     �  %   �  F   �          "  *   =     h     �  %   �  &   �     �     �          *  %   F     l     �  %   �  #   �     �     �  1     8   D  (   }     �  ,   �  )   �       *   5  !   `  y   �     �        *   :     e  ?   s  4   �     �     �           %     F  0   f  %   �  !   �  0   �  8     @   I     �     �  D   �            1   0  '   b  0   �  9   �  ,   �  )   "  (   L  &   u     �     �  -   �  '   �  )   #  !   M  '   o     �     �     �     �  "   �  /      6   ;   6   r   >   �   �   �      �!     �!  &   �!  M   "  5   T"  2   �"  +   �"  6   �"  #    #     D#  (   T#     }#  .   �#     �#      �#     �#     $     6$  &   T$  3   {$  h   �$  0   %  '   I%     q%  N   �%     �%  O   �%     5&  
   U&     `&  5   v&  #   �&  ,   �&  0   �&     .'  "   4'     W'  	   q'     {'     �'  1   �'     �'     �'     �'     (  (   (  1   ?(     q(  n  z(     �)  �   *  �   �*  S   �+     ,     %,  
   B,     M,     h,     {,  #   �,     �,     �,  B   �,     -     9-     U-  (   Z-  &   �-  @   �-  %   �-  6   .  K   H.  +   �.  )   �.  r   �.  L   ]/  C   �/  1   �/  &    0  /   G0  K   w0  /   �0  /   �0     #1     A1     _1  5   |1     �1  4   �1  =   2     C2     c2  8   �2     �2     �2  $   �2  &   3  a   ;3     �3     �3  2   �3     �3     4  )   44  *   ^4     �4     �4      �4     �4  ,   �4     )5     C5     \5  4   {5     �5     �5  9   �5  F   6  7   c6     �6  A   �6  3   �6  )   17  <   [7  $   �7  �   �7  0   ^8  )   �8  ?   �8     �8  E   9  F   K9     �9     �9     �9  ,   �9  ,   :  <   <:  0   y:  +   �:  /   �:  C   ;  J   J;     �;  %   �;  M   �;  !   (<  "   J<  5   m<  -   �<  D   �<  C   =  2   Z=  '   �=  9   �=  '   �=  !   >     9>  7   L>  =   �>  2   �>  &   �>  4   ?  "   Q?     t?     }?     �?  '   �?  E   �?  K   @  Q   e@  H   �@  �    A     �A  "   �A  &    B  e   GB  A   �B  ;   �B  0   +C  8   \C  (   �C     �C  4   �C  "   D  7   'D     _D  $   }D      �D  #   �D  0   �D  A   E  ;   ZE  �   �E  >   F  %   [F  #   �F  g   �F     G  ]   G     }G     �G     �G  6   �G  4   �G  ,   3H  5   `H     �H  *   �H     �H     �H     �H     I  B   *I  '   mI     �I     �I     �I  .   �I  @   J     BJ        Z   G   v       �   6   �   ^           D   P            l   �   �   V   A       e   �       J       m   ]          E   7   o       �      _           \      N      ,      $   {             /   3   :   w   �   4   *   ?   S   #          �           !       �   �   <   =   8   |   @           �          I   `   q   �      �       h   �   �   u   �   �   �   g   b   [           }   n   �               �      i              -   �                 >   (           2   �          �           �                  �   5   t   ~   '   s      �           y   k       U      �   z           �       R      L   �   �   "   %   Y   O   �           �       ;   F   �       p   d               �   W   �          )      �   C       �   �      H   �       �   f   �          r                 
   &   M   x   �   9   �   B       �   �   +   Q   .   1   j   0   K       a       c   �   X       T       	        
<action> is one of:
 
<name> is the device to create under %s
<device> is the encrypted device
<key slot> is the LUKS key slot number to modify
<key file> optional key file for the new key for luksAddKey action
 
Default compiled-in device cipher parameters:
	plain: %s, Key: %d bits, Password hashing: %s
	LUKS1: %s, Key: %d bits, LUKS header hashing: %s
 
WARNING: real device header has different UUID than backup! %s: requires %s as arguments (Obsoleted, see man page.) <device> <device> <key slot> <device> <name>  <device> [<key file>] <device> [<new key file>] <name> <name> <device> Align payload at <n> sector boundaries - for luksFormat All key slots full.
 Argument <action> missing. BITS BLKGETSIZE failed on device %s.
 BLKROGET failed on device %s.
 Backup LUKS device header and keyslots Backup file %s doesn't exist.
 Backup file do not contain valid LUKS header.
 Can't do passphrase verification on non-tty inputs.
 Can't format LUKS without device.
 Can't wipe header on device %s.
 Cannot add key slot, all slots disabled and no volume key provided.
 Cannot create LUKS header: header digest failed (using hash %s).
 Cannot create LUKS header: reading random salt failed.
 Cannot get info about device %s.
 Cannot get process priority.
 Cannot initialize crypto backend.
 Cannot initialize device-mapper. Is dm_mod kernel module loaded?
 Cannot not read %d bytes from key file %s.
 Cannot open device %s for %s%s access.
 Cannot open device %s.
 Cannot open device: %s
 Cannot open file %s.
 Cannot open header backup file %s.
 Cannot read device %s.
 Cannot read header backup file %s.
 Cannot retrieve volume key for plain device.
 Cannot unlock memory. Cannot wipe device %s.
 Cannot write header backup file %s.
 Command failed with code %i Command successful.
 Create a readonly mapping DM-UUID for device %s was truncated.
 Data offset or key size differs on device and backup, restore failed.
 Device %s %s%s Device %s already exists.
 Device %s doesn't exist or access denied.
 Device %s has zero size.
 Device %s is busy.
 Device %s is not a valid LUKS device. Device %s is not a valid LUKS device.
 Device %s is not active.
 Device %s is too small.
 Display brief usage Do not ask for confirmation Enter LUKS passphrase to be deleted:  Enter LUKS passphrase:  Enter any passphrase:  Enter any remaining LUKS passphrase:  Enter new passphrase for key slot:  Enter passphrase for %s:  Enter passphrase:  Error during update of LUKS header on device %s.
 Error re-reading LUKS header after update on device %s.
 Error reading passphrase from terminal.
 Error reading passphrase.
 Failed to access temporary keystore device.
 Failed to obtain device mapper directory. Failed to open key file %s.
 Failed to open temporary keystore device.
 Failed to read from key storage.
 Failed to setup dm-crypt key mapping for device %s.
Check that kernel supports %s cipher (check syslog for more info).
%s Failed to stat key file %s.
 Failed to write to key storage.
 File with LUKS header and keyslots backup. Help options: How many sectors of the encrypted data to skip at the beginning How often the input of the passphrase can be retried Invalid device %s.
 Invalid key size %d.
 Invalid key size.
 Invalid plain crypt parameters.
 Key %d not active. Can't wipe.
 Key processing error (using hash algorithm %s).
 Key size must be a multiple of 8 bits Key slot %d active, purge first.
 Key slot %d is full, please select another one.
 Key slot %d is invalid, please select between 0 and %d.
 Key slot %d is invalid, please select keyslot between 0 and %d.
 Key slot %d is invalid.
 Key slot %d is not used.
 Key slot %d material includes too few stripes. Header manipulation?
 Key slot %d unlocked.
 Key slot %d verified.
 LUKS header detected but device %s is too small.
 No key available with this passphrase.
 No known cipher specification pattern detected.
 Not compatible PBKDF2 options (using hash algorithm %s).
 Obsolete option --non-exclusive is ignored.
 Option --header-backup-file is required.
 Out of memory while reading passphrase.
 PBKDF2 iteration time for LUKS (in ms) Passphrases do not match.
 Print package version Read the key from a file (can be /dev/random) Read the volume (master) key from file. Requested LUKS hash %s is not supported.
 Requested file %s already exist.
 Restore LUKS device header and keyslots Resume suspended LUKS device. SECTORS Show debug messages Show this help message Shows more detailed error messages Slot number for new key (default is first free) Suspend LUKS device and wipe key (all IOs are frozen). The cipher used to encrypt the disk (see /proc/crypto) The hash used to create the encryption key from the passphrase The reload action is deprecated. Please use "dmsetup reload" in case you really need this functionality.
WARNING: do not use reload to touch LUKS devices. If that is the case, hit Ctrl-C now.
 The size of the device The size of the encryption key The start offset in the backend device This is the last keyslot. Device will become unusable after purging this key. This operation is not supported for %s crypt device.
 This operation is supported only for LUKS device.
 This will overwrite data on %s irrevocably. Timeout for interactive passphrase prompt (in seconds) Unable to obtain sector size for %s Unknown action. Unknown crypt device type %s requested.
 Unsupported LUKS version %d.
 Verifies the passphrase by asking for it twice Verify passphrase:  Volume %s is already suspended.
 Volume %s is not active.
 Volume %s is not suspended.
 Volume key buffer too small.
 Volume key does not match the volume.
 WARNING!!! Possibly insecure memory. Are you root?
 Warning: exhausting read requested, but key file %s is not a regular file, function might never return.
 Wrong UUID format provided, generating new one.
 [OPTION...] <action> <action-specific>] add key to LUKS device already contains LUKS header. Replacing header will destroy existing keyslots. create device does not contain LUKS header. Replacing header can destroy data on that device. dump LUKS partition information exclusive  formats a LUKS device identical to luksKillSlot - DEPRECATED - see man page key slot %d selected for deletion.
 memory allocation error in action_luksFormat modify active device - DEPRECATED - see man page msecs open LUKS device as mapping <name> print UUID of LUKS device read-only remove LUKS mapping remove device removes supplied key or key file from LUKS device resize active device secs setpriority %u failed: %s show device status tests <device> for LUKS partition header wipes key with number <key slot> from LUKS device writable Project-Id-Version: cryptsetup-1.1.1-rc1
Report-Msgid-Bugs-To: dm-crypt@saout.de
POT-Creation-Date: 2010-07-03 15:49+0200
PO-Revision-Date: 2010-05-27 00:27+0100
Last-Translator: Koen Torfs <koen@indigetesdii.org>
Language-Team: Dutch <vertaling@vrijschrift.org>
Language: nl
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
 
<actie> is één van:
 
<naam> is het onder %s aan te maken apparaat
<apparaat> is het versleutelde apparaat
<sleutelplaats> is het nummer van de te wijzigen LUKS-sleutelplaats
<sleutelbestand> optioneel sleutelbestand voor de nieuwe sleutel voor de luksAddKey-actie
 
Standaard meegecompileerde parameters van het apparaatsversleutelingsalgoritme:
	plain: %s, Sleutel: %d bits, Wachtwoordhashing: %s
	LUKS1: %s, Sleutel: %d bits, LUKS-kopteksthashing: %s
 
WAARSCHUWING: originele apparaatkoptekst heeft een ander UUID dan de reservekopie! %s: vereist %s als argumenten (Verouderd, zie man-pagina.) <apparaat> <apparaat> <sleutelplaats> <apparaat> <naam>  <apparaat> [<sleutelbestand>] <apparaat> [<nieuw sleutelbestand>] <naam> <naam> <apparaat> Payload uitlijnen op meervouden van <n> sectoren - voor luksFormat Alle sleutelplaatsen zijn vol.
 Argument <actie> ontbreekt. BITS BLKGETSIZE() is mislukt op apparaat %s.
 BLKROGET() is mislukt op apparaat %s.
 Reservekopie van LUKS-apparaatkoptekst en -sleutelplaatsen maken Reservekopiebestand %s bestaat niet.
 Reservekopiebestand bevat geen geldige LUKS-koptekst.
 Kan geen wachtwoordverificatie uitvoeren op invoer van buiten de terminal.
 Kan LUKS niet formatteren zonder apparaat.
 Kan koptekst op apparaat %s niet wissen.
 Kan geen sleutelplaats toevoegen, alle plaatsen zijn uitgeschakeld en geen sleutel tot het opslagmedium voorzien.
 Kan LUKS-koptekst niet aanmaken: koptekst-extract is mislukt (met %s-hash).
 Kan LUKS-koptekst niet aanmaken: lezen van random salt is mislukt.
 Kan geen informatie verkrijgen over apparaat %s.
 Kan geen procesprioriteit verkrijgen.
 Kan versleutelings-backend niet initialiseren.
 Kan apparaatstoewijzer niet initialiseren. Is kernelmodule dm_mod geladen?
 Kan %d bytes uit sleutelbestand %s niet lezen.
 Kan apparaat %s niet openen voor %s%s-toegang.
 Kan apparaat %s niet openen.
 Kan apparaat niet openen: %s
 Kan bestand %s niet openen.
 Kan reservekopiebestand %s van koptekst niet openen.
 Kan apparaat niet lezen: %s.
 Kan reservekopiebestand %s van koptekst niet lezen.
 Kan sleutel tot het opslagmedium voor apparaat niet ophalen.
 Kan geheugen niet ontgrendelen. Kan apparaat %s niet wissen.
 Kan reservekopiebestand %s van koptekst niet schrijven.
 Opdracht is mislukt met code %i Opdracht succesvol.
 Een alleen-lezen toewijzing aanmaken DM-UUID voor apparaat %s is afgekapt.
 Verschillende datapositie of sleutelgrootte in apparaat en reservekopie; herstelling is mislukt.
 Apparaat %s %s%s Apparaat %s bestaat reeds.
 Apparaat %s bestaat niet of toegang is geweigerd.
 Apparaat %s heeft grootte nul.
 Apparaat %s is bezig.
 Apparaat %s is geen geldig LUKS-apparaat. Apparaat %s is geen geldig LUKS-apparaat.
 Apparaat %s is niet actief.
 Apparaat %s is te klein.
 Korte gebruikssamenvatting tonen Niet om bevestiging vragen Voer het te verwijderen LUKS-wachtwoord in:  Voer LUKS-wachtwoord in:  Voer een wachtwoord in:  Voer enig LUKS-wachtwoord in:  Voer een nieuw wachtwoord in voor de sleutelplaats:  Voer wachtwoord in voor %s:  Voer wachtwoord in:  Fout bij het bijwerken van LUKS-koptekst op apparaat %s.
 Fout bij het herlezen van LUKS-koptekst na bijwerken van apparaat %s.
 Fout bij het lezen van het wachtwoord uit de terminal.
 Fout bij lezen van wachtwoord.
 Kan geen toegang verkrijgen tot tijdelijk sleutelopslagapparaat.
 Kan geen map voor de apparaatstoewijzer verkrijgen. Openen van sleutelbestand %s is mislukt.
 Openen van het tijdelijke sleutelopslagapparaat is mislukt.
 Lezen uit sleutelopslag is mislukt.
 Kan dm-crypt sleuteltoewijzing niet instellen voor apparaat %s.
Kijk na of de kernel versleutelalgoritme %s ondersteunt (bekijk syslog voor meer informatie).
%s Kan status van sleutelbestand %s niet opvragen.
 Schrijven naar sleutelopslag is mislukt.
 Bestand met reservekopie van LUKS-koptekst en -sleutelplaatsen. Hulpopties: Hoeveel sectoren van de versleutelde data aan het begin over te slaan Hoe vaak de invoering van het wachtwoord opnieuw geprobeerd kan worden Ongeldig apparaat %s.
 Ongeldige sleutelgrootte %d.
 Ongeldige sleutelgrootte.
 Ongeldige normale versleutelingsparameters.
 Sleutel %d is niet actief. Kan niet wissen.
 Sleutelbehandelingsfout (met hash-algoritme %s in gebruik).
 Sleutelgrootte moet een meervoud zijn van 8 bits Sleutelplaats %d is actief; ruim eerst op.
 Sleutelplaats %d is vol, selecteer een andere.
 Sleutelplaats %d is ongeldig, selecteer een plaats tussen 0 en %d.
 Sleutelplaats %d is ongeldig, selecteer een sleutelplaats tussen 0 en %d.
 Sleutelplaats %d is ongeldig.
 Sleutelplaats %d is niet in gebruik.
 Inhoud van sleutelplaats %d bevat te weinig fragmenten. Koptekstmanipulatie?
 Sleutelplaats %d is ontgrendeld.
 Sleutelplaats %d is geverifieerd.
 LUKS-koptekst gevonden maar apparaat %s is te klein.
 Geen sleutel beschikbaar met dit wachtwoord.
 Geen bekend specificatiepatroon voor het sleutelalgoritme gevonden.
 Niet-compatibele PBKDF2-opties (met hash-algoritme %s in gebruik).
 Verouderde optie --non-exclusive wordt genegeerd.
 Optie --header-backup-file is vereist.
 Geen geheugen meer beschikbaar bij lezen van wachtwoord.
 PBKDF2 herhalingstijd voor LUKS (in ms) Wachtwoorden komen niet overeen.
 Pakketversie tonen De sleutel uit een bestand lezen (mag /dev/random zijn) De (hoofd)sleutel tot het opslagmedium uit een bestand lezen. Aangevraagde LUKS-hash %s wordt niet ondersteund.
 Aangevraagd bestand %s bestaat reeds.
 LUKS-apparaatkoptekst en -sleutelplaatsen herstellen Geschorst LUKS-apparaat hervatten. SECTOREN Debug-boodschappen tonen Deze hulptekst tonen Gedetailleerdere foutboodschappen tonen Plaatsnummer voor nieuwe sleutel (standaard is de eerste open plaats) LUKS-apparaat schorsen en sleutel wissen (alle in-/uitvoer wordt bevroren). Het gebruikte versleutelalgoritme om de schijf te versleutelen (zie /proc/crypto) De gebruikte hash om de encryptiesleutel uit het wachtwoord aan te maken De herlaadactie is verouderd. Gebruik “dmsetup reload” indien u deze functionaliteit echt nodig hebt.
WAARSCHUWING: gebruik de herlaadactie niet om LUKS-apparaten te “touchen”. Indien u dat wilt doen, typ nu Ctrl-C.
 De grootte van het apparaat De grootte van de encryptiesleutel De startplaats in het backend-apparaat Dit is de laatste sleutelplaats. Apparaat zal onbruikbaar worden na het verwijderen van deze sleutel. Deze operatie wordt niet ondersteund voor versleutelapparaat %s.
 Deze operatie wordt enkel ondersteund voor LUKS-apparaten.
 Dit zal data op %s onherroepelijk overschrijven. Timeout voor interactieve wachtwoordprompt (in seconden) Kan sectorgrootte van %s niet verkrijgen Onbekende actie. Onbekend versleutelingsapparaattype %s aangevraagd.
 Niet-ondersteunde LUKS-versie %d.
 Het wachtwoord controleren door het twee keer te vragen Voer wachtwoord nogmaals in:  Opslagmedium %s is reeds geschorst.
 Opslagmedium %s is niet actief.
 Opslagmedium %s is niet geschorst.
 Sleutelbuffer van het opslagmedium is te klein.
 Sleutel tot opslagmedium komt niet overeen met het opslagmedium.
 WAARSCHUWING!!!  Mogelijk onveilig geheugen.  Bent u root?
 Waarschuwing: volledige lezing aangevraagd, maar sleutelbestand %s is geen regulier bestand, functie zal misschien nooit terugkeren.
 Verkeerd UUID-formaat verschaft, een nieuwe wordt aangemaakt.
 [OPTIE…] <actie> <actie-specifiek>] sleutel aan LUKS-apparaat toevoegen bevat reeds een LUKS-koptekst. Het vervangen van de koptekst zal bestaande sleutelplaatsen vernietigen. apparaat aanmaken bevat geen LUKS-koptekst. Het vervangen van de koptekst kan data op het apparaat vernietigen. LUKS-partitie-informatie dumpen exclusieve  een LUKS-apparaat formatteren identiek aan luksKillSlot - VEROUDERD - zie man-pagina sleutelplaats %d is geselecteerd voor verwijdering.
 geheugentoewijzingsfout in action_luksFormat actief apparaat wijzigen - VEROUDERD - zie man-pagina milliseconden LUKS-apparaat als toewijzing <naam> openen UUID van LUKS-apparaat tonen alleen-lezen LUKS-toewijzing verwijderen apparaat verwijderen verschafte sleutel of sleutelbestand van LUKS-apparaat verwijderen actief apparaat vergroten of verkleinen seconden setpriority(%u) is mislukt: %s apparaatstatus tonen <apparaat> op een LUKS-partitiekoptekst testen sleutel met nummer <sleutelplaats> van LUKS-apparaat verwijderen schrijf 
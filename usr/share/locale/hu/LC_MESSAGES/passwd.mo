��    6      �  I   |      �  6   �     �  @   �  1   4  )   f  '   �  (   �  &   �       4   %     Z  !   s  8   �  !   �  $   �  "        8  4   U  "   �  '   �     �     �               #     =     \     n     �     �     �     �     �     	  $   	     D	     d	     l	      {	  "   �	  *   �	     �	  5   
     :
  &   J
  "   q
  %   �
  %   �
  U   �
  L   6  &   �  7   �  $   �      F   �     �  T   �  C   @  0   �  7   �  /   �  2     (   P  6   y     �  -   �  ;   �  "   9  3   \  /   �     �  T   �  C   4  /   x  1   �     �     �       !   
  *   ,     W  %   s     �  &   �  &   �  )   �  )   #  +   M  8   y  /   �  	   �     �  *     1   2  0   d     �  ?   �     �  6   	  3   @  7   t  7   �  `   �  h   E  C   �  N   �  B   A            
   &      4       6             5                 +         .            /   1   	   %         -                                            2   3      )                 ,       #   !          '          "   0              *              (          $    %s: %s is not authorized to change the password of %s
 %s: Can not identify you!
 %s: Cannot mix one of -l, -u, -d, -S and one of -i, -n, -w, -x.
 %s: Only one of -l, -u, -d, -S may be specified.
 %s: Only one user name may be specified.
 %s: Only root can specify a user name.
 %s: The user name supplied is too long.
 %s: This option requires a user name.
 %s: Unknown user name '%s'.
 %s: all authentication tokens updated successfully.
 %s: bad argument %s: %s
 %s: error reading from stdin: %s
 %s: expired authentication tokens updated successfully.
 %s: libuser initialization error: %s: unable to set failure delay: %s
 %s: unable to set tty for pam: %s
 %s: unable to start pam: %s
 %s: user account has no support for password aging.
 Adjusting aging data for user %s.
 Alternate authentication scheme in use. Changing password for user %s.
 Corrupted passwd entry. Empty password. Error Error (password not set?) Locking password for user %s.
 No password set.
 Only root can do that.
 Password locked. Password set, DES crypt. Password set, MD5 crypt. Password set, SHA256 crypt. Password set, SHA512 crypt. Password set, blowfish crypt. Password set, unknown crypt variant. Removing password for user %s.
 Success Unknown user.
 Unlocking password for user %s.
 Unsafe operation (use -f to force) Warning: unlocked password would be empty. [OPTION...] <accountName> delete the password for the named account (root only) force operation keep non-expired authentication tokens lock the named account (root only) maximum password lifetime (root only) minimum password lifetime (root only) number of days after password expiration when an account becomes disabled (root only) number of days warning users receives before password expiration (root only) read new tokens from stdin (root only) report password status on the named account (root only) unlock the named account (root only) Project-Id-Version: password
Report-Msgid-Bugs-To: http://bugzilla.redhat.com/
POT-Creation-Date: 2009-02-11 15:00+0100
PO-Revision-Date: 2010-03-14 21:50+0100
Last-Translator: Peter Bojtos <ptr@ulx.hu>
Language-Team: Hungarian <fedora-trans-hu@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
 %s: %s számára nem engedélyezett %s jelszavának megváltoztatása
 %s: Ön nem azonosítható!
 %s: A -l, -u, -d, -S kapcsolók egyikét sem lehet keverni ezekkel: -i, -n, -w, -x.
 %s:A -l, -u, -d, -S kapcsolókból csak az egyiket szabad megadni.
 %s: Csak egy felhasználónevet szabad megadni.
 %s: Csak a rendszergazda adhat meg felhasználónevet.
 %s: A megadott felhasználónév túl hosszú.
 %s: Ez az opció egy felhasználónevet igényel.
 %s: "%s": ismeretlen felhasználónév.
 %s: minden azonosítási jegy frissítése sikerült.
 %s: hibás argumentum: %s: %s
 %s: hiba a standard bemenet olvasásakor: %s
 %s: a lejárt azonosítási jegyek frissítése sikerült.
 %s: libuser inicializációs hiba: %s: nem lehet hiba-késleltetést beállítani: %s
 %s: nem lehet tty-t beállítani a PAM-hoz: %s
 %s: a PAM nem indítható: %s
 %s: a felhasználó fiókja nem támogatja a jelszólejárat-beállítást (aging).
 %s felhasználó jelszólejárati (aging) adatainak beállítása.
 Váltakozó azonosítási séma van használva. %s felhasználó jelszavának megváltoztatása.
 Sérült jelszóbejegyzés. Üres jelszó. Hiba Hiba (nincs jelszó beállítva?) %s felhasználó jelszavának zárolása.
 Nincs jelszó beállítva.
 Ezt csak a rendszergazda teheti meg.
 Jelszó zárolva. Jelszó beállítva, DES-titkosítás. Jelszó beállítva, MD5-titkosítás. Jelszó beállítva, SHA256 titkosítás. Jelszó beállítva, SHA512 titkosítás. Jelszó beállítva, Blowfish-titkosítás. Jelszó beállítva, ismeretlen titkosítási változat. %s felhasználó jelszavának eltávolítása.
 Sikerült Ismeretlen felhasználó.
 %s felhasználó jelszavának feloldása.
 Nem biztonságos művelet (kikényszerítés: -f) Figyelmeztetés: a kioldott jelszó üres lenne. [OPCIÓ…] <fiókNév> a megnevezett fiók jelszavának törlése (csak rendszergazda) művelet kikényszerítése nem lejárt azonosítási jegyek (tokenek) megtartása a megnevezett fiók zárolása (csak rendszergazda) jelszó maximális érvényessége (csak rendszergazda) jelszó minimális érvényessége (csak rendszergazda) jelszó lejárta utáni napok száma, amikortól a fiók letiltásra kerül (csak rendszergazda) jelszó lejárta előtti napok száma, amikortól figyelmeztetést kap a használó (csak rendszergazda) új tokenek beolvasása a standard bemenetről (csak rendszergazda) jelentés a megnevezett fiók jelszavának állapotáról (csak rendszergazda) a megnevezett fiók zárolásának feloldása (csak rendszergazda) 
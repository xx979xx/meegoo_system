��    6      �  I   |      �  6   �     �  @   �  1   4  )   f  '   �  (   �  &   �       4   %     Z  !   s  8   �  !   �  $   �  "        8  4   U  "   �  '   �     �     �               #     =     \     n     �     �     �     �     �     	  $   	     D	     d	     l	      {	  "   �	  *   �	     �	  5   
     :
  &   J
  "   q
  %   �
  %   �
  U   �
  L   6  &   �  7   �  $   �  �    I   �  ?   .  b   n  o   �  N   A  \   �  L   �  \   :  #   �  v   �  5   2  \   h  �   �  6   H  T     :   �  4     s   D  }   �  u   6  <   �  ,   �          5  2   D  D   w  "   �  J   �  $   *  *   O  *   z  -   �  -   �  /     9   1  F   k     �  )   �  Y   �  x   V  \   �  7   ,  k   d  %   �  r   �  n   i  s   �  q   L  �   �  �   �  �   k  �     p   �            
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
 Unsafe operation (use -f to force) Warning: unlocked password would be empty. [OPTION...] <accountName> delete the password for the named account (root only) force operation keep non-expired authentication tokens lock the named account (root only) maximum password lifetime (root only) minimum password lifetime (root only) number of days after password expiration when an account becomes disabled (root only) number of days warning users receives before password expiration (root only) read new tokens from stdin (root only) report password status on the named account (root only) unlock the named account (root only) Project-Id-Version: passwd 0.73
Report-Msgid-Bugs-To: http://bugzilla.redhat.com/
POT-Creation-Date: 2009-02-11 15:00+0100
PO-Revision-Date: 2009-10-06 14:58+0300
Last-Translator: Maxim V. Dziumanenko <dziumanenko@softprom.kiev.ua>
Language-Team: Ukrainian <uk@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
 %s: %s не дозволяється міняти пароль для %s
 %s: Не вдається вас ідентифікувати!
 %s: Не допускається змішувати ключі -l, -u, -d, -S и -i, -n, -w, -x.
 %s: Допускається вказувати лише один з параметрів: -l, -u, -d чи -S.
 %s: Допускається вказувати лише одну назву.
 %s: Лише root може вказувати назву облікового запису.
 %s: Вказана назва користувача надто довга.
 %s: Для цього параметра необхідне ім'я користувача.
 %s: Невідоме ім'я '%s'.
 %s: всі ознаки перевірки автентичності (паролі) успішно оновлені.
 %s: неправильний аргумент %s: %s
 %s: помилка читання зі стандартного потоку вводу: %s
 %s: успішно оновлено застарілу ознаку перевірки автентичності (пароль).
 %s: помилка ініціализації libuser: %s: не вдається вказати затримку при помилці: %s
 %s: не вдається задати tty для pam: %s
 %s: небезпечно запускати pam: %s
 %s: обліковий запис не підтримує закінчення терміну дії паролю.
 Встановлюються параметри закінчення терміну дії для користувача %s.
 Використовується альтернативна схема перевірки автентичності. Заміна паролю для користувача %s.
 Пошкоджений запис у passwd. Порожній пароль. Помилка Помилка (пароль не заданий?) Блокується пароль для користувача %s.
 Пароль не заданий.
 Операція дозволена лише користувачу root.
 Пароль заблоковано. Пароль заданий, шифр DES. Пароль заданий, шифр MD5. Пароль заданий, шифр SHA256. Пароль заданий, шифр SHA512. Пароль заданий, шифр blowfish. Пароль заданий, шифр невідомий. Видаляється пароль для користувача %s.
 Успішно виконано Невідомий користувач.
 Знімається блокування паролю для користувача %s.
 Операція небезпечна (використовуйте -f для примусового виконання) Попередження: розблокований пароль буде порожнім. [ПАРАМЕТРИ...] <обліковий_запис> видалити пароль для облікового рахунку (дозволено лише root) примусове виконання зберегти не застарілі ознаки перевірки автентичності (паролі) заблокувати обліковий запис (дозволено лише користувачу root) максимальний термін дії паролю (дозволено лише користувачу root) мінімальний термін дії паролю (дозволено лише користувачу root) через скільки днів після закінчення терміну дії паролю блокувати обліковий запис (дозволено лише користувачу root) за скільки днів до дати закінчення терміну дії паролю почати попереджувати користувача (дозволено лише користувачу root) прочитати нове значення зі стандартного потоку вводу (дозволено лише користувачу root) зберегти стан паролю для облікового запису (дозволено лише користувачу root) розблокувати обліковий запис (дозволено лише користувачу root) 
��    6      �  I   |      �  6   �     �  @   �  1   4  )   f  '   �  (   �  &   �       4   %     Z  !   s  8   �  !   �  $   �  "        8  4   U  "   �  '   �     �     �               #     =     \     n     �     �     �     �     �     	  $   	     D	     d	     l	      {	  "   �	  *   �	     �	  5   
     :
  &   J
  "   q
  %   �
  %   �
  U   �
  L   6  &   �  7   �  $   �  f    (   n     �  R   �  :   	  '   D  *   l     �  *   �  #   �  .        1  *   O  -   z     �  %   �  #   �       *   .  &   Y  !   �      �     �     �     �  *   �            A     U     r  "   �  "   �  %   �  %   �  '     *   ?      j     �     �      �  +   �  *   �       7   5     m     z  .   �  3   �  3   �  N   0  H     7   �  @      .   A            
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
 Unsafe operation (use -f to force) Warning: unlocked password would be empty. [OPTION...] <accountName> delete the password for the named account (root only) force operation keep non-expired authentication tokens lock the named account (root only) maximum password lifetime (root only) minimum password lifetime (root only) number of days after password expiration when an account becomes disabled (root only) number of days warning users receives before password expiration (root only) read new tokens from stdin (root only) report password status on the named account (root only) unlock the named account (root only) Project-Id-Version: passwd.tip
Report-Msgid-Bugs-To: http://bugzilla.redhat.com/
POT-Creation-Date: 2009-02-11 15:00+0100
PO-Revision-Date: 2009-04-06 12:40+1000
Last-Translator: Terry Chuang <tchuang@redhat.com>
Language-Team:  <zh@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
 %s：%s 沒有更改 %s 密碼的權限
 %s：您無法通過驗證！
 %s：無法同時使用一個 -l、-u、-d、-S 以及一個 -i、-n、-w、-x。
 %s：只可指定 -l、-u、-d、-S 中的其中一個。
 %s：只可指定一組用戶名稱。
 %s：只有 root 可指定用戶名稱。
 %s：用戶名稱過長。
 %s：此選項需要一組用戶名稱。
 %s：不明的用戶名稱 '%s'。
 %s：所有驗證 token 都已成功更新。
 %s：無效的引數 %s：%s
 %s：由 stdin 讀取時發生錯誤：%s
 %s：已成功更新過期的驗證 token。
 %s：libuser 初始化錯誤： %s：無法設置 failure delay：%s
 %s：無法為 pam 設置 tty：%s
 %s：無法啟用 pam：%s
 %s：用戶帳號不支援密碼 aging。
 調整使用者 %s 的期限資料。
 其它驗證格式正使用中。 更改使用者 %s 的密碼。
 損毀的 passwd 項目。 空的密碼。 錯誤 錯誤（密碼是否尚未被設置？） 鎖定使用者 %s 的密碼。
 密碼未設定。
 只有 root 可這麼作。
 密碼已鎖定。 密碼已設定，DES 加密法。 密碼已設定，MD5 加密法。 密碼已設定，SHA256 加密法。 密碼已設定，SHA512 加密法。 密碼已設定，blowfish 加密法。 密碼已設定，不明的加密類型。 移除使用者 %s 的密碼。
 成功 不明用戶。
 解開使用者 %s 的密碼。
 不安全的作業（使用 -f 來強制） 警告：未鎖定的密碼會是空的。 [OPTION...] <accountName> 刪除 named 帳號的密碼（只有 root 可執行） 強制作業 保留未過期的驗證 token 鎖定 named 帳號（只有 root 可執行） 最大密碼有效期限（只有 root 可執行） 最小密碼有效期限（只有 root 可執行） 帳號在密碼過期後即將被停用前的天數（只有 root 可執行） 用戶在密碼過期前收到警告的天數（只有 root 可執行） 由 stdin 讀取新的 token（只有 root 可執行） 回報 named 帳號上的密碼狀態（只有 root 可執行） 解開 named 帳號（只有 root 可執行） 
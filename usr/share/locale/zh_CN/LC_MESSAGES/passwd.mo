��    6      �  I   |      �  6   �     �  @   �  1   4  )   f  '   �  (   �  &   �       4   %     Z  !   s  8   �  !   �  $   �  "        8  4   U  "   �  '   �     �     �               #     =     \     n     �     �     �     �     �     	  $   	     D	     d	     l	      {	  "   �	  *   �	     �	  5   
     :
  &   J
  "   q
  %   �
  %   �
  U   �
  L   6  &   �  7   �  $   �  r       z     �  L   �  0   �     0  "   N     q     �     �  &   �     �  %   	  %   /     U     m     �     �  "   �     �     �          (  
   ;     F     K     `     w     �     �     �     �     �       "   &     I     d     y     �     �  *   �     �     �  0        3     @  ,   W  .   �  .   �  @   �  :   #  .   ^  4   �  ,   �            
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
PO-Revision-Date: 2009-04-01 21:38+1000
Last-Translator: Leah Liu <lliu@redhat.com>
Language-Team: Simplified Chinese <zh@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=GB2312
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
 %s�� %s ��Ȩ�޸��� %s ������ 
 %s�� �޷�ȷ���������ݣ�
 %s������ -l�� -u�� -d�� -S ���ܺͲ��� -i�� -n�� -w�� -x�е���һ��ѡ����á�
 %s�� ���� -l�� -u�� -d�� -Sֻ��ָ�����е�һ����
 %s��ֻ��ָ��һ���û������ơ�
 %s�� ֻ�и��û�����ָ���û����ơ�
 %s���ṩ���û����Ƴ���̫����
 %s�� ��ѡ����Ҫʹ���û����ơ�
 %s�� δ֪���û����� '%s'��
 %s�� ���е�������֤�����Ѿ��ɹ����¡�
 %s������Ĳ��� %s�� %s
 %s���ӱ�׼���룺%s ��ȡʱ�������� 
 %s�����ڵ�������֤�����Ѿ��ɹ����¡�
 %s��libuser��ʼ������ %s�����ܹ�����ʧ���ӳ٣� %s
 %s������Ϊpam����tty�� %s
 %s����������pam�� %s
 %s�� �û��ʺŲ�֧�������ϻ����ܡ�
 �����û������ϻ�����%s��
 ���ĵ�ǰʹ�õ���֤������ �����û� %s ������ ��
 �����passwd��Ŀ�� ����Ϊ�ա� ���� ��������δ���ã��� �����û� %s ������ ��
 ����δ���á�
 ֻ�и��û����ܽ��д˲�����
 �����ѱ������� ���������ã�ʹ��DES���м��ܡ� ���������ã�ʹ��MD5���ܡ� ���������ã�ʹ�� SHA256 ���ܡ� ���������ã�ʹ�� SHA512 ���ܡ� ���������ã�ʹ��blowfish���м��ܡ� ���������ã����ܷ�ʽδ֪�� ����û������� %s��
 �����ɹ� δ֪�û���
 �����û� %s ������ ��
 ����ȫ�Ĳ�����ʹ�� -f ����ǿ�ƽ��иò����� ���棺δ���������뽫�ǿյġ� [ѡ��...] <�ʺ�����> ɾ���������ʺŵ����루ֻ�и��û����ܽ��д˲����� ǿ��ִ�в��� ����������֤���Ʋ����� �������������ʺţ�ֻ�и��û����ܽ��д˲����� ��������Чʱ�ޣ�ֻ�и��û����ܽ��д˲����� ����������Чʱ�ޣ�ֻ�и��û����ܽ��д˲����� ��������ں󾭹���������ʺŻᱻ���ã�ֻ�и��û����ܽ��д˲����� ���������ǰ�����쿪ʼ�����û���ֻ�и��û����ܽ��д˲����� �ӱ�׼�����ȡ���ƣ�ֻ�и��û����ܽ��д˲����� �����������ʺŵ�����״̬��ֻ�и��û����ܽ��д˲����� �������������ʺţ�ֻ�и��û����ܽ��д˲����� 
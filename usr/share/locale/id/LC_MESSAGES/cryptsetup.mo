��    �      d  �   �
      8     9  �   O  �     <   �     �     �               1     B     X     r     y  7   �     �     �     �      �       &   6     ]  .   |  4   �  "   �        D   $  A   i  7   �  !   �       "   #  A   F  +   �  '   �     �     �       #   "     F  #   ^  -   �     �     �  $   �               4  %   N  F   t     �     �  *   �          *     >     X     q     �  %   �     �     �  %   �  #        @     Z  1   m  8   �  (   �       ,     )   I     s  *   �  !   �  y   �     W      t  *   �     �  ?   �  4        C     W     m      �     �  %   �  !   �  0   	  8   :  @   s     �     �  D   �     ,     C  1   Z  '   �  0   �  ,   �  )     (   <  &   e     �     �  -   �  '   �  )     !   =  '   _     �     �     �     �  "   �  /   �  6   +  6   b  >   �  �   �     �      �   &   �   M   �   5   D!  2   z!  +   �!  6   �!  #   "     4"  (   D"     m"  .   �"     �"      �"     �"     	#     &#  &   D#  3   k#  h   �#  0   $  '   9$     a$  N   x$     �$  O   �$     %%  
   E%     P%  5   f%  #   �%  ,   �%  0   �%     &  "   $&     G&  	   a&     k&     &  1   �&     �&     �&     �&     �&  (   '  1   /'     a'  �  j'      �(  �   )  �   *  H   �*  "   �*  2   +     E+     Q+     j+     }+  !   �+     �+     �+  7   �+     ,     -,     D,  "   I,      l,  2   �,     �,  5   �,  B   -  -   X-  .   �-  i   �-  L   .  =   l.  9   �.  *   �.  -   /  X   =/  3   �/  3   �/  "   �/  "   !0     D0  /   d0  "   �0  /   �0  6   �0  !   1  $   @1  /   e1     �1     �1     �1  ,   �1  U   2     b2     t2  +   �2  "   �2     �2     �2     3     )3     F3  +   d3     �3     �3  &   �3  *   �3     4     /4  6   D4  G   {4  4   �4  &   �4  ;   5  2   [5     �5  9   �5  ,   �5  �   6  1   �6  *   �6  2   7     I7  B   Z7  4   �7     �7     �7     
8     %8  -   C8      q8  ,   �8  ,   �8  :   �8  E   '9     m9     �9  L   �9     �9  #   :  :   9:  0   t:  ;   �:  5   �:  )   ;  ,   A;  ,   n;     �;     �;  8   �;  '   <  *   +<  "   V<  /   y<  )   �<     �<     �<     �<  -   =  =   @=  >   ~=  E   �=  @   >  �   D>     3?     H?  "   b?  h   �?  5   �?  2   $@  4   W@  @   �@  .   �@     �@  6   A     IA  4   hA     �A     �A     �A     �A  &   B  (   /B  K   XB  �   �B  8   +C  $   dC  !   �C  U   �C     D  U   D     fD  	   �D     �D  J   �D  *   �D  ,    E  M   ME     �E  +   �E  "   �E  	   �E     �E     F  @   F     `F     |F     �F     �F  -   �F  9   �F     G     �              �   �   g   Q      n   .   7   Z   �      �       {   %   �   �   `   o   -   �   S   T      5       �       y   [       P   v   }   r          B      O   F   l   _       R   �   �   ;   W   �   0   #                   �       
          "           �   �   @       x   �   Y       8   �   �       �   H   '             �          4       h   s       �   a   �   p   �   ^       N   �       =         D               6   K   	   2      G      �   \       A       �       ]   �   M   ,   b   i         �       e   �   V       u       X          >   :       �              c   z   (   ~   �          I           �   E          +           J                 L          f   �                         U   �   ?      �       C   �   �       �       q   |          t   �      /   )   9       &   $      1   *   !   3   �   j   w           �   m   d       k   <   �    
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
 memory allocation error in action_luksFormat modify active device - DEPRECATED - see man page msecs open LUKS device as mapping <name> print UUID of LUKS device read-only remove LUKS mapping remove device removes supplied key or key file from LUKS device resize active device secs setpriority %u failed: %s show device status tests <device> for LUKS partition header wipes key with number <key slot> from LUKS device writable Project-Id-Version: cryptsetup 1.1.0-rc4
Report-Msgid-Bugs-To: dm-crypt@saout.de
POT-Creation-Date: 2010-07-03 15:49+0200
PO-Revision-Date: 2010-01-27 07:30+0700
Last-Translator: Arif E. Nugroho <arif_endro@yahoo.com>
Language-Team: Indonesian <translation-team-id@lists.sourceforge.net>
Language: id
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
 
<aksi> adalah salah satu dari:
 
<nama> adalah perangkat untuk dibuat dibawah %s
<perangkat> adalah perangkat terenkripsi
<slot kunci> adalah nomor slot kunci LUKS untuk dimodifikasi
<berkas kunci> adalah berkas kunci opsional untuk kunci baru untuk aksi luksAddKey
 
Parameter baku yang terkompilasi dalam perangkat penyandi:
	terbuka: %s, Kunci: %d bits, Hash kata sandi : %s
	LUKS1  : %s, Kunci: %d bits, Hash kepala LUKS: %s
 
PERINGATAN: header perangkat ril memiliki UUID berbeda dengan cadangan! %s: membutuhkan %s sebagai argumen (Ditinggalkan, lihat halaman petunjuk penggunaan.) <perangkat> <perangkat> <slot kunci> <perangkat> <nama> <perangkat> [<berkas kunci>] <perangkat> [<berkas kunci baru>] <nama> <nama> <perangkat> Sesuaikan muatan di batas sektor <n> - untuk luksFormat Semua slot kunci telah penuh.
 Argumen <aksi> hilang. BITS BLKGETSIZE gagal di perangkat %s.
 BLKROGET gagal di perangkat %s.
 Buat cadangan header perangkat LUKS dan slot kunci Berkas cadangan %s tidak ada.
 Berkas cadangan tidak berisi header LUKS yang valid.
 Tidak dapat melakukan verifikasi kata sandi di masukan bukan tty.
 Tidak dapat memformat LUKS tanpat perangkat.
 Tidak dapat menghapus kepala di perangkat %s.
 Tidak dapat menambahkan slot kunci, seluruh slot tidak aktif dan tidak ada volume kunci yang disediakan.
 Tidak dapat membuat header LUKS: digest header gagal (menggunakan hash %s).
 Tidak dapat membuat header LUKS: pembacaan garam acak gagal.
 Tidak dapat mendapatkan informasi mengenai perangkat %s.
 Tidak dapat mendapatkan prioritas proses.
 Tidak dapat menginisialisasi backend crypto.
 Tidak dapat menginisialisasi pemeta-perangkat. Apakah kernel modul dm_mod telah dimuat?
 Tidak dapat membaca %d bytes dari berkas kunci %s.
 Tidak dapat membuka perangkat %s untuk akses %s%s.
 Tidak dapat membuka perangkat %s.
 Tidak dapat membuka perangkat: %s
 Tidak dapat membuka berkas %s.
 Tidak dapat membuka berkas cadangan header %s.
 Tidak dapat membaca perangkat %s.
 Tidak dapat membaca berkas cadangan header %s.
 Tidak dapat mendapatkan kunci volume untuk perangkat.
 Tidak dapat membuka kunci memori. Tidak dapat menghapus perangkat %s.
 Tidak dapat menulis berkas cadangan header %s.
 Perintah gagal dengan kode %i Perintah berhasil.
 Buat pemetaan baca-saja DM-UUID untuk perangkat %s telah terpotong.
 Data offset atau ukuran kunci berbeda di perangkat dan cadangan, pengembalian gagal.
 Perangkat %s %s%s Perangkat %s telah ada.
 Perangkat %s tidak ada atau akses ditolak.
 Perangkat %s memiliki ukuran nol.
 Perangkat %s sibuk.
 Perangkat %s tidak aktif.
 Perangkat %s terlalu kecil.
 Tampilkan penggunaan singkat Jangan tanya untuk konfirmasi Masukan kata sandi LUKS yang akan dihapus:  Masukan kata sandi LUKS:  Masukan kata sandi:  Masukan kata sandi LUKS yang tersisa:  Masukan kasa sandi baru untuk slot kunci:  Masukan kata sandi untuk %s:  Masukan kata sandi:  Error selama memperbarui header LUKS di perangkat %s.
 Error membaca-kembali header LUKS setelah memperbarui di perangkat %s.
 Kesalahan dalam pembacaan kata sandi dari terminal.
 Kesalahan dalam pembacaan kata sandi.
 Gagal untuk mengakses perangkat penyimpan kunci sementara.
 Gagal untuk memperoleh direktori pemeta-perangkat. Gagal membuka berkas kunci %s.
 Gagal untuk membuka perangkat penyimpan kunci sementara.
 Gagal untuk membaca dari penyimpanan kunci.
 Gagal untuk mengkonfigurasi pemetaan kunci dm-crypt untuk perangkat %s.
Periksa apakah kernel mendukung cipher %s (periksa syslog untuk informasi lebih lanjut).
%s Gagal memperoleh data statistik berkas kunci %s.
 Gagal untuk menulis di penyimpanan kunci.
 Berkas dengan header LUKS dan cadangan slot kunci. Pilihan bantuan: Berapa banyak sektor dari data terenkripsi yang dilewatkan di awal Seberapa sering masukan dari kata sandi dapat dicoba Perangkat %s tidak valid.
 Besar kunci %d tidak valid.
 Ukuran kunci tidak valid.
 Parameter crypt tidak valid.
 Kunci %d tidak aktif. Tidak dapat menghapus.
 Kunci harus kelipatan dari 8 bit Slot kunci %d aktif, hapus terlebih dahulu.
 Slot kunci %d penuh, mohon pilih yang lain.
 Slot kunci %d tidak valid, mohon pilih diantara 0 dan %d.
 Slot kunci %d tidak valid, mohon pilih slot kunci diantara 0 dan %d.
 Slot kunci %d tidak valid.
 Slot kunci %d tidak digunakan.
 Slot kunci %d material terdapat terlalu sedikit stripes. Manipulasi header?
 Slot kunci %d tidak terkunci.
 Slot kunci %d telah terverifikasi.
 Header LUKS terdeteksi tetapi perangkat %s terlalu kecil.
 Tidak ada kunci tersedia dengan kata sandi ini.
 Tidak ada pola spesifikasi cipher yang dikenal terdeteksi.
 Pilihan sudah ditinggalkan --no-exclusive diabaikan.
 Pilihan --header-backup-file dibutuhkan.
 Kehabisan memori ketika membaca kata sandi.
 waktu iterasi PBKDF2 untuk LUKS (dalam mdet) Kata sandi tidak cocok.
 Tampilkan versi paket Baca kunci dari sebuah berkas (dapat berupa /dev/random) Baca volume (master) kunci dari berkas. Hash %s LUKS yang diminta tidak didukung.
 Berkas %s yang diminta telah ada.
 Kembalikan header perangkat LUKS dan slot kunci Lanjutkan perangkat LUKS yang dihentikan. SEKTOR Tampilkan pesan penelusuran Tampilkan pesan bantuan ini Tampilkan pesan kesalahan secara lebih detail Nomor slot untuk kunci baru (baku adalah yang kosong pertama) Hentikan perangkat LUKS dan hapus kunci (semua IO dihentikan). Cipher yang digunakan untuk mengenkripsi ke disk (lihat /proc/crypto) Hash yang digunakan untuk membuat kunci enkripsi dari kata sandi Aksi muat kembali telah ditinggalkan. Mohon gunakan "dmsetup reload" dalam kasus anda benar benar membutuhkan fungsi ini.
PERINGATAN: jangan gunakan muat-kembali untuk menyentuk perangkat LUKS. Jika itu masalahnya, tekan Ctrl-C sekarang.
 Besar dari perangkat Besar dari kunci enkripsi Awal ofset dalam perangkat backend Ini adalah slot kunci terakhir. Perangkat mungkin akan menjadi tidak stabil setelah menghapus kunci ini. Operasi ini tidak didukung untuk perangkat crypt %s.
 Operasi ini hanya didukunga untuk perangkat LUKS.
 Ini akan memaksa menulis data di %s secara permanen. Waktu habis untuk pertanyaan interaktif kata sandi (dalam detik) Tidak dapat mendapatkan ukuran sektor untuk %s Aksi tidak diketahui. Tipe perangkat sandi %s yang diminta tidak diketahui.
 versi LUKS %d tidak didukung.
 Verifikasi kata sandi dengan menanyakan itu dua kali Memverifikasi kata sandi:  Volume %s telah disuspend.
 Volume %s tidak aktif.
 Volume %s tidak disuspend.
 Penyangga kunci volume terlalu kecil.
 Kunci volume tidak cocok dengan volume.
 PERINGATAN!!! Kemungkinan menggunakan memori tidak aman. Apakah anda root?
 Peringatan: pembacaan yang melelahkan diminta, tetapi berkas kunci %s bukan sebuah berkas biasa, fungsi mungkin tidak pernah kembali.
 Format UUID yang disediakan berbeda, membuat yang baru.
 [PILIHAN...] <aksi> <aksi-spesifik>] tambahkan kunci ke perangkat LUKS telah berisi header LUKS. Mengganti header dapat mengganti slot kunci yang telah ada. buat perangkat tidak berisi header LUKS. Mengganti header dapat menghancurkan data di perangkat itu. dump informasi  partisi LUKS ekslusif  format sebuah perangkat LUKS identik ke luksKillSlot - DITINGGALKAN - lihat halaman petunjuk penggunaan slot kunci %d terpilih untuk penghapusan.
 alokasi memori error dalam action_luksFormat modifikasi perangkat aktif - DITINGGALKAN - lihat halaman petunjuk penggunaan mdetik buka perangkat LUKS sebagai pemetaan <nama> tampilkan UUID dari perangkat LUKS baca-saja hapus pemetaan LUKS hapus perangkat hapus kunci yang diberikan atau berkas kunci dari perangkat LUKS ubah ukuran perangkat aktif detik setpriority %u gagal: %s tampilkan status perangkat periksa <perangkat> untuk header partisi LUKS hapus kunci dengan nomor <slot kunci> dari perangkat LUKS dapat-ditulis 
��          �   %   �      P  �   Q  ,   *      W  %   x  5   �    �    �     �  0     /   @     p  6   �     �  R   �  q     p   �  .   �  >   )     h      �     �  !   �  %   �  )   	  /   .	  �  ^	  �  �
  x   �  [   5  b   �  j   �  .  _  7  �  :   �  i     ]   k  3   �  �   �     �  �   �  �   9  �   �  6   �  _   �  >   J  @   �  1   �  F   �  i   C  K   �  S   �                                                                                         	                    
                %s does not end with %%end.  This syntax has been deprecated.  It may be removed from future releases, which will result in a fatal error from kickstart.  Please modify your kickstart file to use this updated syntax. File uses a deprecated option or command.
%s General error in input file:  %s General kickstart error in input file Group cannot specify both --nodefaults and --optional Ignoring deprecated command on line %(lineno)s:  The %(cmd)s command has been deprecated and no longer has any effect.  It may be removed from future releases, which will result in a fatal error from kickstart.  Please modify your kickstart file to remove this command. Ignoring deprecated option on line %(lineno)s:  The %(option)s option has been deprecated and no longer has any effect.  It may be removed from future releases, which will result in a fatal error from kickstart.  Please modify your kickstart file to remove this option. Illegal url for %%ksappend: %s Option %(opt)s: invalid boolean value: %(value)r Option %(opt)s: invalid string value: %(value)r Option %s is required Required flag set for option that doesn't take a value Script The following problem occurred on line %(lineno)s of the kickstart file:

%(msg)s
 The option %(option)s was introduced in version %(intro)s, but you are using kickstart syntax version %(version)s The option %(option)s was removed in version %(removed)s, but you are using kickstart syntax version %(version)s The version %s is not supported by pykickstart There was a problem reading from line %s of the kickstart file Unable to open %%ksappend file Unable to open %%ksappend file:  Unknown command: %s Unsupported version specified: %s halt after the first error or warning parse include files when %include is seen version of kickstart syntax to validate against Project-Id-Version: pykickstart master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2007-10-04 13:22-0400
PO-Revision-Date: 2009-09-09 09:21+0700
Last-Translator: Manatsawin <manatsawin@gmail.com>
Language-Team: Thai <thai-l10n@googlegroups.com>
Language: th
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Virtaal 0.4.0
 %s ไม่ได้จบด้วย %%end ไวยากรณ์นี้ได้ถูกเลิกใช้แล้ว และอาจถูกถอดออกจากรุ่นต่อๆ ไปซึ่งจะทำให้kickstart เกิดข้อผิดพลาดร้ายแรง โปรดแก้ไขไฟล์ kickstart เพื่อให้ใช้ไวยากรณ์ใหม่นี้ ไฟล์ใช้ตัวเลือกหรือคำสั่งที่เลิกใช้แล้ว
%s ข้อผิดพลาดทั่วไปในไฟล์รับเข้า: %s ข้อผิดพลาด kickstart ทั่วไปในไฟล์รับเข้า ในกลุ่มไม่สามารถระบุทั้ง --nodefaults และ --optional จะข้ามคำสั่งที่ล้าหลังในบรรทัด %(lineno)s: คำสั่ง %(cmd)s กลายเป็นคำสั่งล้าหลังและไม่มีผลอีกต่อไป นอกจากนี้ยังอาจถูกถอดออกในรุ่นหน้าซึ่งทำให้เกิดข้อผิดพลาดร้ายแรงใน kickstart โปรดแก้ไขไฟล์ kickstart โดยลบคำสั่งนี้ออก จะข้ามตัวเลือกที่เลิกใช้แล้วในบรรทัด %(lineno)s: ตัวเลือก %(option)s ถูกเลิกใช้แล้วและจะไม่มีผลใดๆ อีก มันอาจถูกถอดออกจากรุ่นต่อๆ ไปซึ่งทำให้ kickstart เกิดข้อผิดพลาดร้ายแรง โปรดแก้ไขไฟล์ kickstart ของคุณโดยลบตัวเลือกนี้ออก URL ผิดพลาดสำหรับ %%ksappend: %s ตัวเลือก %(opt)s: ค่าเท็จจริงผิดรูปแบบ: %(value)r ตัวเลือก %(opt)s: ข้อความผิดรูปแบบ: %(value)r ต้องระบุตัวเลือก %s ตั้งธง "ต้องระบุค่า" ไว้ในตัวเลือกที่ไม่มีการรับค่า สคริปต์ มีปัญหาต่อไปนี้เกิดขึ้นในบรรทัด %(lineno)s ของไฟล์ kickstart:

%(msg)s
 ตัวเลือก %(option)s มีครั้งแรกในรุ่น %(intro)s แต่คุณกำลังใช้ไวยากรณ์ kickstart รุ่น %(version)s คำสั่ง %(option)s ถูกถอดในรุ่น %(removed)s แต่คุณกำลังใช้ไวยากรณ์ kickstart รุ่น %(version)s pykickstart ไม่รองรับรุ่น %s เกิดปัญหาขณะอ่านไฟล์ %s ของไฟล์ kickstart ไม่สามารถเปิดไฟล์ %%ksappend ไม่สามารถเปิดไฟล์ %%ksappend:  ไม่รู้จักคำสั่ง: %s ระบุรุ่นที่ไม่สนับสนุน: %s หยุดหลังจากข้อผิดพลาดหรือคำเตือนแรก ประมวลผลไฟล์ include เมื่อพบ %include รุ่นไวยากรณ์ kickstart ที่จะตรวจสอบ 
��          �   %   �      P  �   Q  ,   *      W  %   x  5   �    �    �     �  0     /   @     p  6   �     �  R   �  q     p   �  .   �  >   )     h      �     �  !   �  %   �  )   	  /   .	  ^  ^	  �   �
  3   �     �  #   �  ,     �   H    ,     2  +   L  2   x     �  *   �     �  :   �  o   /  m   �       3   -     a     ~     �     �  $   �  &   �  !                                                                                            	                    
                %s does not end with %%end.  This syntax has been deprecated.  It may be removed from future releases, which will result in a fatal error from kickstart.  Please modify your kickstart file to use this updated syntax. File uses a deprecated option or command.
%s General error in input file:  %s General kickstart error in input file Group cannot specify both --nodefaults and --optional Ignoring deprecated command on line %(lineno)s:  The %(cmd)s command has been deprecated and no longer has any effect.  It may be removed from future releases, which will result in a fatal error from kickstart.  Please modify your kickstart file to remove this command. Ignoring deprecated option on line %(lineno)s:  The %(option)s option has been deprecated and no longer has any effect.  It may be removed from future releases, which will result in a fatal error from kickstart.  Please modify your kickstart file to remove this option. Illegal url for %%ksappend: %s Option %(opt)s: invalid boolean value: %(value)r Option %(opt)s: invalid string value: %(value)r Option %s is required Required flag set for option that doesn't take a value Script The following problem occurred on line %(lineno)s of the kickstart file:

%(msg)s
 The option %(option)s was introduced in version %(intro)s, but you are using kickstart syntax version %(version)s The option %(option)s was removed in version %(removed)s, but you are using kickstart syntax version %(version)s The version %s is not supported by pykickstart There was a problem reading from line %s of the kickstart file Unable to open %%ksappend file Unable to open %%ksappend file:  Unknown command: %s Unsupported version specified: %s halt after the first error or warning parse include files when %include is seen version of kickstart syntax to validate against Project-Id-Version: pykickstart.master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2007-10-04 13:22-0400
PO-Revision-Date: 2008-03-26 11:27+1000
Last-Translator: Leah Liu <lliu@redhat.com>
Language-Team: Simplified Chinese <zh@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
 %s 不是以 %%end 结尾。这个语法已经过时，这个选项可能会在未来的发行版本中被删除，这会导致 kickstart 运行时产生严重错误。请将您的 kickstart 文件改为使用这个更新的语法。 文件使用了一个过时的选项或命令。
%s 输入文件有错误： %s 输入文件中的 kickstart 错误 组都不能注明--nodefaults 和--optional 忽略第%(lineno)s: 行的过时命令 %(cmd)s 已经过时,不再起作用.这个会导致 kickstart 执行时发生严重的指令可能会在未来的发行版本中删除.请您修改您的kickstart 文件,删除该命令. 忽略第 %(lineno)s: 行中的过时选项:%(option)s  选项已经过时，不再起任何作用。这个选项可能会在未来的版本中被删除，这会导致 kickstart 运行时产生严重错误。请修改您的 kickstart 文件，删除该选项。 非法url  %%ksappend: %s 选项%(opt)s: 无效的布尔值:%(value)r 选项 %(opt)s：无效的字符串值：%(value)r 选项 %s 是必需的 不需要数值的选项需要设定标志 脚本 kickstart文件的第%(lineno)s 行发生问题:

%(msg)s
 这个选项 %(option)s 被 %(intro)s 版本引入，但是您正在使用 %(version)s 版本的kickstart语法 选项 %(option)s 在%(removed)s版本中被移除，但是你正在使用%(version)s版本kickstart的语法 %s版本不被pykickstart支持 读取 kickstart 文件的第 %s 行时发生问题 无法打开 %%ksappend file 无法打开 %%ksappend file:  未知命令：%s 指定了不支持的版本: %s 在第一次错误或警告时停止 遇到 %include 时,解析包含文件 kickstart语法版本证实冲突 
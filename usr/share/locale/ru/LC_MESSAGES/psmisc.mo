��    4      �  G   \      x  0   y  p   �  k     #   �     �     �  )   �  	              .  ,   O  $   |     �  #   �      �     �       #   :  !   ^     �     �  <   �  <   �  %   '     M     l     �     �     �     �     �  &   	     4	     S	     h	  �   	     b
     y
     �
     �
  H   �
  (     E  /  �   u  -  n  F   �  -   �          $     8     L  �  k  _   R  �   �  �   �  7   �  +   �  %      p   &     �  E   �  Y   �  [   N  M   �  .   �  R   '  <   z  6   �  >   �  H   -  W   v  I   �  T     <   m  <   �  %   �  =     F   K  &   �  #   �  ,   �  .   
  D   9  M   ~      �  8   �  ;   &  �  b  )   �  ,     I   :  9   �  �   �  I   X   e  �   �  #  y  �$  q   u*  �   �*     �+     �+     �+  L   �+            $   	   1   ,   !      
                 '   3          "   %                .       *   2              )                         +      &                                         -                           0   #          4   /              (      -Z     show         SELinux security contexts
   -Z,--context REGEXP kill only process(es) having context
                      (must precede other arguments)
   PID    start at this PID; default is 1 (init)
  USER   show only trees rooted at processes of this user

 %*s USER        PID ACCESS COMMAND
 %s is empty (not mounted ?)
 %s: no process found
 %s: unknown signal; %s -l lists signals.
 (unknown) Bad regular expression: %s
 Can't get terminal capabilities
 Cannot allocate memory for matched proc: %s
 Cannot find socket's device number.
 Cannot find user %s
 Cannot get UID from process status
 Cannot open /proc directory: %s
 Cannot open /proc/net/unix: %s
 Cannot open a network socket.
 Cannot open protocol file "%s": %s
 Cannot resolve local port %s: %s
 Cannot stat %s: %s
 Cannot stat file %s: %s
 Copyright (C) 1993-2005 Werner Almesberger and Craig Small

 Copyright (C) 1993-2009 Werner Almesberger and Craig Small

 Copyright (C) 2007 Trent Waddington

 Could not kill process %d: %s
 Error attaching to pid %i
 Invalid namespace name Kill %s(%s%d) ? (y/N)  Kill process %d ? (y/N)  Killed %s(%s%d) with signal %d
 Maximum number of names is %d
 Namespace option requires an argument. No process specification given No processes found.
 No such user name: %s
 PSmisc comes with ABSOLUTELY NO WARRANTY.
This is free software, and you are welcome to redistribute it under
the terms of the GNU General Public License.
For more information about these matters, see the files named COPYING.
 Press return to close
 Signal %s(%s%d) ? (y/N)  TERM is not set
 Unknown local port AF %d
 Usage: killall [-Z CONTEXT] [-u USER] [ -eIgiqrvw ] [ -SIGNAL ] NAME...
 Usage: killall [OPTION]... [--] NAME...
 Usage: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 output 8 bit clean streams.
    -n don't display read/write from fd headers.
    -c peek at any new child processes too.
    -d remove duplicate read/writes from the output.
    -V prints version info.
    -h prints this help.

  Press CTRL-C to end output.
 Usage: pidof [ -eg ] NAME...
       pidof -V

    -e      require exact match for very long names;
            skip if the command line is unavailable
    -g      show process group ID instead of process ID
    -V      display version information

 Usage: pstree [ -a ] [ -c ] [ -h | -H PID ] [ -l ] [ -n ] [ -p ] [ -u ]
              [ -A | -G | -U ] [ PID | USER ]
       pstree -V
Display a tree of processes.

  -a, --arguments     show command line arguments
  -A, --ascii         use ASCII line drawing characters
  -c, --compact       don't compact identical subtrees
  -h, --highlight-all highlight current process and its ancestors
  -H PID,
  --highlight-pid=PID highlight this process and its ancestors
  -G, --vt100         use VT100 line drawing characters
  -l, --long          don't truncate long lines
  -n, --numeric-sort  sort output by PID
  -p, --show-pids     show PIDs; implies -c
  -u, --uid-changes   show uid transitions
  -U, --unicode       use UTF-8 (Unicode) line drawing characters
  -V, --version       display version information
 You cannot search for only IPv4 and only IPv6 sockets at the same time all option cannot be used with silent option. fuser (PSmisc) %s
 peekfd (PSmisc) %s
 pstree (PSmisc) %s
 skipping partial match %s(%d)
 Project-Id-Version: psmisc 22.8rc1
Report-Msgid-Bugs-To: csmall@small.dropbear.id.au
POT-Creation-Date: 2010-01-04 21:42+1100
PO-Revision-Date: 2009-07-15 21:55+0400
Last-Translator: Yuri Kozlov <yuray@komyakino.ru>
Language-Team: Russian <gnu@mx.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms:  nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
   -Z     show         показывать контексты безопасности SELinux
   -Z,--context РЕГВЫР  завершать только процессы(ы) с подходящим контекстом
                       (должен указываться раньше остальных параметров)

   PID                 начинать от указанного PID; по умолчанию 1 (init)
  ПОЛЬЗОВАТЕЛЬ        показать только дерево процессов указанного пользователя

 %*s ПОЛЬЗ-ЛЬ    PID ДОСТУП КОМАНДА
 %s пуст (не смонтирован?)
 %s: процесс не найден
 %s: неизвестный сигнал; %s -l выводит список доступных сигналов.
 (неизвестно) Неправильное регулярное выражение: %s
 Не удалось определить характеристики терминала
 Не удалось выделить память для проверяемого proc: %s
 Не удалось найти номер устройства сокета.
 Пользователь %s не найден
 Не удалось получить UID из состояния процесса
 Не удалось открыть каталог /proc: %s
 Не удалось открыть /proc/net/unix: %s
 Не удалось открыть сетевой сокет.
 Не удалось открыть файл протокола "%s": %s
 Не удалось определить имя локального порта %s: %s
 Не удалось выполнить функцию stat для %s: %s
 Не удалось выполнить функцию stat для файла %s: %s
 Copyright (C) 1993-2005 Werner Almesberger and Craig Small

 Copyright (C) 1993-2009 Werner Almesberger and Craig Small

 Copyright (C) 2007 Trent Waddington

 Не удалось завершить процесс %d: %s
 Ошибка присоединения к процессу с pid %i
 Неверное имя области Завершить %s(%s%d)? (y/N)  Завершить процесс %d? (y/N)  %s(%s%d) завершён сигналом %d
 Количество имён не может превышать %d
 Для параметра области требуется значение. Не указан процесс Не найдено ни одного процесса.
 Неизвестное имя пользователя: %s
 PSmisc поставляется БЕЗ КАКИХ-ЛИБО ГАРАНТИЙ.
Это свободная программа; вы можете распространять её на условиях
Универсальной общественной лицензии GNU.
Подробная информация об этих условиях приведена в файле COPYING.
 Нажмите Enter для выхода
 Послать сигнал %s(%s%d)? (y/N)  Переменная окружения TERM не установлена
 Неизвестный локальный порт AF %d
 Использование: killall [-Z КОНТЕКСТ] [-u ПОЛЬЗОВАТЕЛЬ]
                       [ -eIgiqrvw ] [ -СИГНАЛ ] ИМЯ...
 Использование: killall [ПАРАМЕТР]... [--] ИМЯ...
 Использование: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 в потоках не обрубается 8-й бит.
    -n не отображать fd заголовки при чтении/записи.
    -c наблюдать также за всеми новыми дочерними процессами.
    -d удалять повторяющиеся операции чтения/записи при выводе.
    -V вывести информацию о версии.
    -h вывести эту справку.

  Нажмите CTRL-C для завершения.
 Использование: pidof [ -eg ] ИМЯ...
               pidof -V

   -e          требовать полного совпадения для очень длинных имён;
               игнорировать, если командная строка недоступна
   -g          показывать идентификатор группы вместо идентификатора процесса
   -V          показать информацию о версии

 Использование: pstree [ -a ] [ -c ] [ -h | -H PID ] [ -l ] [ -n ] [ -p ] [ -u ]
              [ -A | -G | -U ] [ PID | ПОЛЬЗОВАТЕЛЬ ]
       pstree -V
Показывает дерево процессов.

  -a, --arguments     показывать содержимое командной строки
  -A, --ascii         использовать ASCII-символы рисования линий
  -c, --compact       не сжимать одинаковые поддеревья
  -h, --highlight-all выделять цветом текущий процесс и его предков
  -H PID,
  --highlight-pid=PID выделять цветом процесс PID и его предков
  -G, --vt100         использовать символы рисования линий терминала VT100
  -l, --long          не обрезать длинные строки
  -n, --numeric-sort  сортировать вывод по PID
  -p, --show-pids     показывать идентификаторы процессов (PID); включает -c
  -u, --uid-changes   показывать переходы идентификаторов пользователей
  -U, --unicode       использовать символы рисования линий UTF-8 (юникод)
  -V, --version       показать информацию о версии
 Нельзя выполнять поиск только по сокетам IPv4 и IPv6 одновременно Параметр показа всех файлов нельзя использовать вместе с параметром отключения сообщений. fuser (PSmisc) %s
 peekfd (PSmisc) %s
 pstree (PSmisc) %s
 игнорирование частичного совпадения %s(%d)
 
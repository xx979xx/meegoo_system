��    4      �  G   \      x  0   y  p   �  k     #   �     �     �  )   �  	              .  ,   O  $   |     �  #   �      �     �       #   :  !   ^     �     �  <   �  <   �  %   '     M     l     �     �     �     �     �  &   	     4	     S	     h	  �   	     b
     y
     �
     �
  H   �
  (     E  /  �   u  -  n  F   �  -   �          $     8     L  �  k  <     �   \  �   �  0   �     �  %   �  P        g  !   w  3   �  J   �  7     %   P  >   v  )   �  2   �  *     5   =  1   s  /   �  9   �  ?     >   O  2   �  5   �  *   �  "   "  -   E  C   s  7   �     �  7     &   C  "   j  .   �  �   �      �  #   �        &     h   9  ;   �  �  �  =  �  H  �  ^   $  V   v$     �$     �$     �$  1   %            $   	   1   ,   !      
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
PO-Revision-Date: 2009-09-19 16:39+0930
Last-Translator: Clytie Siddall <clytie@riverland.net.au>
Language-Team: Vietnamese <vi-VN@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: LocFactoryEditor 1.8
   -Z     show         Các ngữ cảnh bảo mật SELinux
   -Z,--context BIỂU_THỨC_CHÍNH _QUY
		buộc kết thúc chỉ những tiến trình có ngữ cảnh
			(phải đi trước các đối số khác)
   PID    			bắt đầu ở PID này; mặc định là 1 (init)
  NGƯỜI_DÙNG 	hiển thị chỉ những cây có gốc là tiến trình của người dùng này

 %*s NGƯỜI_DÙNG        PID TRUY CẬP LỆNH
 %s trống (lắp chưa?)
 %s: không tìm thấy tiến trình
 %s: không rõ tín hiệu; câu lệnh « %s -l » liệt kê các tín hiệu
 (không biết) Biểu thức chính quy sai: %s
 Không thể gọi khả năng thiết bị cuối
 Không thể cấp phát bộ nhớ cho tiến trình được khớp: %s
 Không tìm thấy số hiệu thiết bị ổ cắm.
 Không tìm thấy người dùng %s
 Không thể lấy UID từ trạng thái của tiến trình
 Không thể mở thư mục </proc>: %s
 Không thể mở thư mục </proc/net/unix>: %s
 Không thể mở một ổ cắm mạng.
 Không thể mở tập tin giao thức « %s »: %s
 Không tìm thấy tên cổng cục bộ %s: %s
 Không thể lấy các thông tin về %s: %s
 Không thể lấy các thông tin về tập tin %s: %s
 Bản quyền © 1993-2005 Werner Almesberger và Craig Small

 Tác quyền © 1993-2009 Werner Almesberger và Craig Small

 Tác quyền © năm 2007 của Trent Waddington

 Không thể buộc kết thúc tiến trình %d: %s
 Gặp lỗi khi đính kèm đến PID %i
 Tên miền tên không hợp lệ Có buộc kết thúc %s(%s%d) không? (c/K) Có buốc kết thúc tiến trình %d không? (y/N) (có/không)  Mới buộc kết thúc %s(%s%d) với tín hiệu %d
 Số tên tối đa là %d
 Tùy chọn miền tên cần đến một đối số. Chưa nhập đặc tả tiến trình Không tìm thấy tiến trình.
 Không có tên người dùng như vậy: %s
 PSmisc không bảo đảm gì cả.
Đây là phần mềm tự do thì bạn có thể phân phối nó với điều kiện của
Quyền Công Chung Gnu (GPL).
Để tìm thấy thông tin thêm thì hãy xem tập tin có tên COPYING (cách chép)
 Bấm phím Return để đóng
 Tín hiệu %s(%s%d) không? (c/K)  Chưa lặp TERM
 Không biết cổng cục bộ AF %d
 Cách sử dụng: killall [-Z NGỮ_CẢNH] [-u NGƯỜI_DÙNG] [ -eIgiqrvw ] [ -TÍN_HIỆU ] TÊN...
 Cách sử dụng: killall [ TÙY_CHỌN ]... [--] TÊN...
 Cách sử dụng: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 	xuất luồng sạch 8-bit.
    -n 	khôNg hiển thị đọc/viết từ phần đầu fd.
    -c 	Cũng hé nhìn tiến trình con mới nào.
    -d 	gỡ bỏ đọc/viết trùng ra Dữ liệu xuất.
    -V 	hiển thị thông tin Về phiên bản.
    -h 	Hiển thị trợ giúp này.

  Bấm tổ hợp phím CTRL-C để thôi xuất.
 Cách sử dụng: pidof [ -eg ] TÊN ...
       pidof -V

    -e      cần đến điều khớp _chính xác_ với mọi tên rất dài
	bỏ qua nếu không có dòng lệnh sẵn sàng
    -g      hiện ID của _nhóm_ tiến trình thay thế ID tiến trình
    -V      hiện thông tin _phiên bản_

 Sử dụng: pstree [ -a ] [ -c ] [ -h | -H PID ] [ -l ] [ -n ] [ -p ] [ -u ]
              [ -A | -G | -U ] [ PID | NGƯỜI_DÙNG]
       pstree -V

Hiện một cây các tiến trình.

  -a, --arguments        hiển thị các đối số dòng lệnh
  -A, --ascii		dùng các ký tự vẽ đường kiểu ASCII
  -c, --compact       	đừng kết lại các cây phụ trùng nhau
  -h, --highlight-all 	tô sáng tiến trình đang chạy và các tiến trình cấp trên
  -H PID,
  --highlight-pid=PID		tô sáng tiến trình này và các tiến trình cấp trên
  -G, --vt100         	dùng các ký tự vẽ đường kiểu VT100
  -l, --long          		đừng cắt ngắn dòng dài
  -n, --numeric-sort  	sắp xếp kết xuất theo PID (mã số tiến trình)
  -p, --show-pids     	hiển thị các PID (ngụ ý « -c »)
  -u, --uid-changes   	hiển thị các sự chuyển tiếp UID (mã số người dùng)
  -U, --unicode       	dùng các ký tự vẽ đường kiểu UTF-8 (Unicode)
  -V, --version       	hiển thị thông tin về phiên bản
 Không cho phép bạn tìm kiếm ổ cắm kiểu cả IPv4 lẫn IPv6 đều đồng thời không cho phép bạn sử dụng chọn « tất cả » với tùy chọn « im ». fuser (PSmisc) %s
 peekfd (PSmisc) %s
 pstree (PSmisc) %s
 đang bỏ qua điều khớp bộ phần %s(%d)
 
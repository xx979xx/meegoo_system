require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__BITS_SOCKET_H)) {
    eval 'sub __BITS_SOCKET_H () {1;}' unless defined(&__BITS_SOCKET_H);
    unless(defined(&_SYS_SOCKET_H)) {
	die("Never include <bits/socket.h> directly; use <sys/socket.h> instead.");
    }
    eval 'sub __need_size_t () {1;}' unless defined(&__need_size_t);
    require 'stddef.ph';
    require 'sys/types.ph';
    unless(defined(&__socklen_t_defined)) {
	eval 'sub __socklen_t_defined () {1;}' unless defined(&__socklen_t_defined);
    }
    eval("sub SOCK_STREAM () { 1; }") unless defined(&SOCK_STREAM);
    eval("sub SOCK_DGRAM () { 2; }") unless defined(&SOCK_DGRAM);
    eval("sub SOCK_RAW () { 3; }") unless defined(&SOCK_RAW);
    eval("sub SOCK_RDM () { 4; }") unless defined(&SOCK_RDM);
    eval("sub SOCK_SEQPACKET () { 5; }") unless defined(&SOCK_SEQPACKET);
    eval("sub SOCK_DCCP () { 6; }") unless defined(&SOCK_DCCP);
    eval("sub SOCK_PACKET () { 10; }") unless defined(&SOCK_PACKET);
    eval("sub SOCK_CLOEXEC () { 02000000; }") unless defined(&SOCK_CLOEXEC);
    eval("sub SOCK_NONBLOCK () { 04000; }") unless defined(&SOCK_NONBLOCK);
    eval 'sub PF_UNSPEC () {0;}' unless defined(&PF_UNSPEC);
    eval 'sub PF_LOCAL () {1;}' unless defined(&PF_LOCAL);
    eval 'sub PF_UNIX () { &PF_LOCAL;}' unless defined(&PF_UNIX);
    eval 'sub PF_FILE () { &PF_LOCAL;}' unless defined(&PF_FILE);
    eval 'sub PF_INET () {2;}' unless defined(&PF_INET);
    eval 'sub PF_AX25 () {3;}' unless defined(&PF_AX25);
    eval 'sub PF_IPX () {4;}' unless defined(&PF_IPX);
    eval 'sub PF_APPLETALK () {5;}' unless defined(&PF_APPLETALK);
    eval 'sub PF_NETROM () {6;}' unless defined(&PF_NETROM);
    eval 'sub PF_BRIDGE () {7;}' unless defined(&PF_BRIDGE);
    eval 'sub PF_ATMPVC () {8;}' unless defined(&PF_ATMPVC);
    eval 'sub PF_X25 () {9;}' unless defined(&PF_X25);
    eval 'sub PF_INET6 () {10;}' unless defined(&PF_INET6);
    eval 'sub PF_ROSE () {11;}' unless defined(&PF_ROSE);
    eval 'sub PF_DECnet () {12;}' unless defined(&PF_DECnet);
    eval 'sub PF_NETBEUI () {13;}' unless defined(&PF_NETBEUI);
    eval 'sub PF_SECURITY () {14;}' unless defined(&PF_SECURITY);
    eval 'sub PF_KEY () {15;}' unless defined(&PF_KEY);
    eval 'sub PF_NETLINK () {16;}' unless defined(&PF_NETLINK);
    eval 'sub PF_ROUTE () { &PF_NETLINK;}' unless defined(&PF_ROUTE);
    eval 'sub PF_PACKET () {17;}' unless defined(&PF_PACKET);
    eval 'sub PF_ASH () {18;}' unless defined(&PF_ASH);
    eval 'sub PF_ECONET () {19;}' unless defined(&PF_ECONET);
    eval 'sub PF_ATMSVC () {20;}' unless defined(&PF_ATMSVC);
    eval 'sub PF_RDS () {21;}' unless defined(&PF_RDS);
    eval 'sub PF_SNA () {22;}' unless defined(&PF_SNA);
    eval 'sub PF_IRDA () {23;}' unless defined(&PF_IRDA);
    eval 'sub PF_PPPOX () {24;}' unless defined(&PF_PPPOX);
    eval 'sub PF_WANPIPE () {25;}' unless defined(&PF_WANPIPE);
    eval 'sub PF_LLC () {26;}' unless defined(&PF_LLC);
    eval 'sub PF_CAN () {29;}' unless defined(&PF_CAN);
    eval 'sub PF_TIPC () {30;}' unless defined(&PF_TIPC);
    eval 'sub PF_BLUETOOTH () {31;}' unless defined(&PF_BLUETOOTH);
    eval 'sub PF_IUCV () {32;}' unless defined(&PF_IUCV);
    eval 'sub PF_RXRPC () {33;}' unless defined(&PF_RXRPC);
    eval 'sub PF_ISDN () {34;}' unless defined(&PF_ISDN);
    eval 'sub PF_PHONET () {35;}' unless defined(&PF_PHONET);
    eval 'sub PF_IEEE802154 () {36;}' unless defined(&PF_IEEE802154);
    eval 'sub PF_MAX () {37;}' unless defined(&PF_MAX);
    eval 'sub AF_UNSPEC () { &PF_UNSPEC;}' unless defined(&AF_UNSPEC);
    eval 'sub AF_LOCAL () { &PF_LOCAL;}' unless defined(&AF_LOCAL);
    eval 'sub AF_UNIX () { &PF_UNIX;}' unless defined(&AF_UNIX);
    eval 'sub AF_FILE () { &PF_FILE;}' unless defined(&AF_FILE);
    eval 'sub AF_INET () { &PF_INET;}' unless defined(&AF_INET);
    eval 'sub AF_AX25 () { &PF_AX25;}' unless defined(&AF_AX25);
    eval 'sub AF_IPX () { &PF_IPX;}' unless defined(&AF_IPX);
    eval 'sub AF_APPLETALK () { &PF_APPLETALK;}' unless defined(&AF_APPLETALK);
    eval 'sub AF_NETROM () { &PF_NETROM;}' unless defined(&AF_NETROM);
    eval 'sub AF_BRIDGE () { &PF_BRIDGE;}' unless defined(&AF_BRIDGE);
    eval 'sub AF_ATMPVC () { &PF_ATMPVC;}' unless defined(&AF_ATMPVC);
    eval 'sub AF_X25 () { &PF_X25;}' unless defined(&AF_X25);
    eval 'sub AF_INET6 () { &PF_INET6;}' unless defined(&AF_INET6);
    eval 'sub AF_ROSE () { &PF_ROSE;}' unless defined(&AF_ROSE);
    eval 'sub AF_DECnet () { &PF_DECnet;}' unless defined(&AF_DECnet);
    eval 'sub AF_NETBEUI () { &PF_NETBEUI;}' unless defined(&AF_NETBEUI);
    eval 'sub AF_SECURITY () { &PF_SECURITY;}' unless defined(&AF_SECURITY);
    eval 'sub AF_KEY () { &PF_KEY;}' unless defined(&AF_KEY);
    eval 'sub AF_NETLINK () { &PF_NETLINK;}' unless defined(&AF_NETLINK);
    eval 'sub AF_ROUTE () { &PF_ROUTE;}' unless defined(&AF_ROUTE);
    eval 'sub AF_PACKET () { &PF_PACKET;}' unless defined(&AF_PACKET);
    eval 'sub AF_ASH () { &PF_ASH;}' unless defined(&AF_ASH);
    eval 'sub AF_ECONET () { &PF_ECONET;}' unless defined(&AF_ECONET);
    eval 'sub AF_ATMSVC () { &PF_ATMSVC;}' unless defined(&AF_ATMSVC);
    eval 'sub AF_RDS () { &PF_RDS;}' unless defined(&AF_RDS);
    eval 'sub AF_SNA () { &PF_SNA;}' unless defined(&AF_SNA);
    eval 'sub AF_IRDA () { &PF_IRDA;}' unless defined(&AF_IRDA);
    eval 'sub AF_PPPOX () { &PF_PPPOX;}' unless defined(&AF_PPPOX);
    eval 'sub AF_WANPIPE () { &PF_WANPIPE;}' unless defined(&AF_WANPIPE);
    eval 'sub AF_LLC () { &PF_LLC;}' unless defined(&AF_LLC);
    eval 'sub AF_CAN () { &PF_CAN;}' unless defined(&AF_CAN);
    eval 'sub AF_TIPC () { &PF_TIPC;}' unless defined(&AF_TIPC);
    eval 'sub AF_BLUETOOTH () { &PF_BLUETOOTH;}' unless defined(&AF_BLUETOOTH);
    eval 'sub AF_IUCV () { &PF_IUCV;}' unless defined(&AF_IUCV);
    eval 'sub AF_RXRPC () { &PF_RXRPC;}' unless defined(&AF_RXRPC);
    eval 'sub AF_ISDN () { &PF_ISDN;}' unless defined(&AF_ISDN);
    eval 'sub AF_PHONET () { &PF_PHONET;}' unless defined(&AF_PHONET);
    eval 'sub AF_IEEE802154 () { &PF_IEEE802154;}' unless defined(&AF_IEEE802154);
    eval 'sub AF_MAX () { &PF_MAX;}' unless defined(&AF_MAX);
    eval 'sub SOL_RAW () {255;}' unless defined(&SOL_RAW);
    eval 'sub SOL_DECNET () {261;}' unless defined(&SOL_DECNET);
    eval 'sub SOL_X25 () {262;}' unless defined(&SOL_X25);
    eval 'sub SOL_PACKET () {263;}' unless defined(&SOL_PACKET);
    eval 'sub SOL_ATM () {264;}' unless defined(&SOL_ATM);
    eval 'sub SOL_AAL () {265;}' unless defined(&SOL_AAL);
    eval 'sub SOL_IRDA () {266;}' unless defined(&SOL_IRDA);
    eval 'sub SOMAXCONN () {128;}' unless defined(&SOMAXCONN);
    require 'bits/sockaddr.ph';
    eval 'sub __ss_aligntype () {\'unsigned long int\';}' unless defined(&__ss_aligntype);
    eval 'sub _SS_SIZE () {128;}' unless defined(&_SS_SIZE);
    eval 'sub _SS_PADSIZE () {( &_SS_SIZE - (2* $sizeof{ &__ss_aligntype}));}' unless defined(&_SS_PADSIZE);
    eval("sub MSG_OOB () { 0x01; }") unless defined(&MSG_OOB);
    eval("sub MSG_PEEK () { 0x02; }") unless defined(&MSG_PEEK);
    eval("sub MSG_DONTROUTE () { 0x04; }") unless defined(&MSG_DONTROUTE);
    eval("sub MSG_CTRUNC () { 0x08; }") unless defined(&MSG_CTRUNC);
    eval("sub MSG_PROXY () { 0x10; }") unless defined(&MSG_PROXY);
    eval("sub MSG_TRUNC () { 0x20; }") unless defined(&MSG_TRUNC);
    eval("sub MSG_DONTWAIT () { 0x40; }") unless defined(&MSG_DONTWAIT);
    eval("sub MSG_EOR () { 0x80; }") unless defined(&MSG_EOR);
    eval("sub MSG_WAITALL () { 0x100; }") unless defined(&MSG_WAITALL);
    eval("sub MSG_FIN () { 0x200; }") unless defined(&MSG_FIN);
    eval("sub MSG_SYN () { 0x400; }") unless defined(&MSG_SYN);
    eval("sub MSG_CONFIRM () { 0x800; }") unless defined(&MSG_CONFIRM);
    eval("sub MSG_RST () { 0x1000; }") unless defined(&MSG_RST);
    eval("sub MSG_ERRQUEUE () { 0x2000; }") unless defined(&MSG_ERRQUEUE);
    eval("sub MSG_NOSIGNAL () { 0x4000; }") unless defined(&MSG_NOSIGNAL);
    eval("sub MSG_MORE () { 0x8000; }") unless defined(&MSG_MORE);
    eval("sub MSG_CMSG_CLOEXEC () { 0x40000000; }") unless defined(&MSG_CMSG_CLOEXEC);
    if((!defined (&__STRICT_ANSI__)  && (defined(&__GNUC__) ? &__GNUC__ : undef) >= 2) || (defined(&__STDC_VERSION__) ? &__STDC_VERSION__ : undef) >= 199901) {
    }
    if((!defined (&__STRICT_ANSI__)  && (defined(&__GNUC__) ? &__GNUC__ : undef) >= 2) || (defined(&__STDC_VERSION__) ? &__STDC_VERSION__ : undef) >= 199901) {
	eval 'sub CMSG_DATA {
	    my($cmsg) = @_;
    	    eval q((($cmsg)-> &__cmsg_data));
	}' unless defined(&CMSG_DATA);
    } else {
	eval 'sub CMSG_DATA {
	    my($cmsg) = @_;
    	    eval q(( ( ($cmsg) + 1)));
	}' unless defined(&CMSG_DATA);
    }
    eval 'sub CMSG_NXTHDR {
        my($mhdr, $cmsg) = @_;
	    eval q( &__cmsg_nxthdr ($mhdr, $cmsg));
    }' unless defined(&CMSG_NXTHDR);
    eval 'sub CMSG_FIRSTHDR {
        my($mhdr) = @_;
	    eval q(( ($mhdr)-> &msg_controllen >= $sizeof{\'struct cmsghdr\'} ?  ($mhdr)-> &msg_control :  0));
    }' unless defined(&CMSG_FIRSTHDR);
    eval 'sub CMSG_ALIGN {
        my($len) = @_;
	    eval q(((($len) + $sizeof{\'size_t\'} - 1) &  ~($sizeof{\'size_t\'} - 1)));
    }' unless defined(&CMSG_ALIGN);
    eval 'sub CMSG_SPACE {
        my($len) = @_;
	    eval q(( &CMSG_ALIGN ($len) +  &CMSG_ALIGN ($sizeof{\'struct cmsghdr\'})));
    }' unless defined(&CMSG_SPACE);
    eval 'sub CMSG_LEN {
        my($len) = @_;
	    eval q(( &CMSG_ALIGN ($sizeof{\'struct cmsghdr\'}) + ($len)));
    }' unless defined(&CMSG_LEN);
    if(defined(&__USE_EXTERN_INLINES)) {
	unless(defined(&_EXTERN_INLINE)) {
	    eval 'sub _EXTERN_INLINE () { &__extern_inline;}' unless defined(&_EXTERN_INLINE);
	}
    }
    eval("sub SCM_RIGHTS () { 0x01; }") unless defined(&SCM_RIGHTS);
    if(defined(&__USE_GNU)) {
    }
    if(!defined (&__USE_MISC)  && !defined (&__USE_GNU)) {
	unless(defined(&FIOGETOWN)) {
	    eval 'sub __SYS_SOCKET_H_undef_FIOGETOWN () {1;}' unless defined(&__SYS_SOCKET_H_undef_FIOGETOWN);
	}
	unless(defined(&FIOSETOWN)) {
	    eval 'sub __SYS_SOCKET_H_undef_FIOSETOWN () {1;}' unless defined(&__SYS_SOCKET_H_undef_FIOSETOWN);
	}
	unless(defined(&SIOCATMARK)) {
	    eval 'sub __SYS_SOCKET_H_undef_SIOCATMARK () {1;}' unless defined(&__SYS_SOCKET_H_undef_SIOCATMARK);
	}
	unless(defined(&SIOCGPGRP)) {
	    eval 'sub __SYS_SOCKET_H_undef_SIOCGPGRP () {1;}' unless defined(&__SYS_SOCKET_H_undef_SIOCGPGRP);
	}
	unless(defined(&SIOCGSTAMP)) {
	    eval 'sub __SYS_SOCKET_H_undef_SIOCGSTAMP () {1;}' unless defined(&__SYS_SOCKET_H_undef_SIOCGSTAMP);
	}
	unless(defined(&SIOCGSTAMPNS)) {
	    eval 'sub __SYS_SOCKET_H_undef_SIOCGSTAMPNS () {1;}' unless defined(&__SYS_SOCKET_H_undef_SIOCGSTAMPNS);
	}
	unless(defined(&SIOCSPGRP)) {
	    eval 'sub __SYS_SOCKET_H_undef_SIOCSPGRP () {1;}' unless defined(&__SYS_SOCKET_H_undef_SIOCSPGRP);
	}
    }
    require 'asm/socket.ph';
    if(!defined (&__USE_MISC)  && !defined (&__USE_GNU)) {
	if(defined(&__SYS_SOCKET_H_undef_FIOGETOWN)) {
	    undef(&__SYS_SOCKET_H_undef_FIOGETOWN) if defined(&__SYS_SOCKET_H_undef_FIOGETOWN);
	    undef(&FIOGETOWN) if defined(&FIOGETOWN);
	}
	if(defined(&__SYS_SOCKET_H_undef_FIOSETOWN)) {
	    undef(&__SYS_SOCKET_H_undef_FIOSETOWN) if defined(&__SYS_SOCKET_H_undef_FIOSETOWN);
	    undef(&FIOSETOWN) if defined(&FIOSETOWN);
	}
	if(defined(&__SYS_SOCKET_H_undef_SIOCATMARK)) {
	    undef(&__SYS_SOCKET_H_undef_SIOCATMARK) if defined(&__SYS_SOCKET_H_undef_SIOCATMARK);
	    undef(&SIOCATMARK) if defined(&SIOCATMARK);
	}
	if(defined(&__SYS_SOCKET_H_undef_SIOCGPGRP)) {
	    undef(&__SYS_SOCKET_H_undef_SIOCGPGRP) if defined(&__SYS_SOCKET_H_undef_SIOCGPGRP);
	    undef(&SIOCGPGRP) if defined(&SIOCGPGRP);
	}
	if(defined(&__SYS_SOCKET_H_undef_SIOCGSTAMP)) {
	    undef(&__SYS_SOCKET_H_undef_SIOCGSTAMP) if defined(&__SYS_SOCKET_H_undef_SIOCGSTAMP);
	    undef(&SIOCGSTAMP) if defined(&SIOCGSTAMP);
	}
	if(defined(&__SYS_SOCKET_H_undef_SIOCGSTAMPNS)) {
	    undef(&__SYS_SOCKET_H_undef_SIOCGSTAMPNS) if defined(&__SYS_SOCKET_H_undef_SIOCGSTAMPNS);
	    undef(&SIOCGSTAMPNS) if defined(&SIOCGSTAMPNS);
	}
	if(defined(&__SYS_SOCKET_H_undef_SIOCSPGRP)) {
	    undef(&__SYS_SOCKET_H_undef_SIOCSPGRP) if defined(&__SYS_SOCKET_H_undef_SIOCSPGRP);
	    undef(&SIOCSPGRP) if defined(&SIOCSPGRP);
	}
    }
}
1;

#ifndef GNDBUSWRAPPER_GLOBAL_H
#define GNDBUSWRAPPER_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(GNDBUSWRAPPER_LIBRARY)
#  define GNDBUSWRAPPERSHARED_EXPORT Q_DECL_EXPORT
#else
#  define GNDBUSWRAPPERSHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // GNDBUSWRAPPER_GLOBAL_H

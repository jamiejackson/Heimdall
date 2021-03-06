# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = app
TARGET = heimdall-frontend

macx {
	PRIVATE_FRAMEWORKS.files = /Library/Frameworks/QtCore.framework \
		/Library/Frameworks/QtGui.framework /Library/Frameworks/QtXml.framework
	PRIVATE_FRAMEWORKS.path = Contents/Frameworks

	QMAKE_BUNDLE_DATA += PRIVATE_FRAMEWORKS

	QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.4
	QMAKE_MAC_SDK=/Developer/SDKs/MacOSX10.4u.sdk

	config += x86 x86_64 ppc

	isEqual(OUTPUTDIR, "") {
		DESTDIR = /Applications
	} else {
		DESTDIR = $$OUTPUTDIR
	}

} else {
	win32 {	# It's recommended that Windows users compile via VS2010, but just in case...
		DESTDIR = ../Win32

		!isEqual(OUTPUTDIR, "") {
			target.path = $$OUTPUTDIR
			INSTALLS += target
		}
	} else {
		DESTDIR = ../Linux

		isEqual(OUTPUTDIR, "") {
			target.path = /usr/local/bin
		} else {
			target.path = $$OUTPUTDIR
		}

		INSTALLS += target
	}
}

unix:LIBS += -lz ../libpit/libpit-1.3.a
win32:LIBS += ../Win32/Release/lib/libpit.lib

QT += core gui xml
CONFIG += release
DEFINES += QT_LARGEFILE_SUPPORT
INCLUDEPATH += ./GeneratedFiles \
    ./GeneratedFiles/Release \
    ../libpit/Source \
    .
DEPENDPATH += .
MOC_DIR += ./GeneratedFiles/release
OBJECTS_DIR += release
UI_DIR += ./GeneratedFiles
RCC_DIR += ./GeneratedFiles
include(heimdall-frontend.pri)

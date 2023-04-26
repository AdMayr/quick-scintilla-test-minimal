QT       += core gui quick

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

INCLUDEPATH += \
    $$PWD/../../quick-scintilla/scintilla/src \
    $$PWD/../../quick-scintilla/include \
    $$PWD/../../quick-scintilla/scintilla/qt/ScintillaEditBase \
    $$PWD/../../quick-scintilla/scintilla/include

DEFINES += SCINTILLA_QT=1

unix|win32: LIBS += \
    -L$$PWD/../../quick-scintilla/scintilla/bin-x86/ -lScintillaEditBase \
    -L$$PWD/../../quick-scintilla/scintilla/bin-x86/ -lScintillaEditBase5

win32:!win32-g++: PRE_TARGETDEPS += \
    $$PWD/../../quick-scintilla/scintilla/bin-x86/ScintillaEditBase.lib \
    $$PWD/../../quick-scintilla/scintilla/bin-x86/ScintillaEditBase5.lib

else:unix|win32-g++: PRE_TARGETDEPS += \
    $$PWD/../../quick-scintilla/scintilla/bin-x86/libScintillaEditBase.a \
    $$PWD/../../quick-scintilla/scintilla/bin-x86/libScintillaEditBase5.a

TEMPLATE = subdirs

QT       += core gui sql testlib
QT += network
QT += concurrent
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = server
TEMPLATE = app

CONFIG += c++11

win32-msvc* {
    # 对所有 MSVC Kit（Debug/Release）都生效
    QMAKE_CXXFLAGS += /utf-8
}

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
INCLUDEPATH += $$PWD/../public

SOURCES += \
        main.cpp \
        mainwindow.cpp \
        KFileTransferRecevicer.cpp \
        $$PWD/../public/kfiletransfercachemanage.cpp \
        ksqlobject.cpp

HEADERS += \
        mainwindow.h \
        $$PWD/../public/config.h \
        KFileTransferRecevicer.h \
        $$PWD/../public/Singleton.h \
        $$PWD/../public/kfiletransfercachemanage.h \
        ksqlobject.h

FORMS += \
        mainwindow.ui

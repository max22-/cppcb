TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.cpp

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../build-cppcb-Desktop_Qt_5_13_0_GCC_64bit-Debug/release/ -lcppcb
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../build-cppcb-Desktop_Qt_5_13_0_GCC_64bit-Debug/debug/ -lcppcb
else:unix: LIBS += -L$$PWD/../../build-cppcb-Desktop_Qt_5_13_0_GCC_64bit-Debug/ -lcppcb

INCLUDEPATH += $$PWD/../../cppcb
DEPENDPATH += $$PWD/../../cppcb

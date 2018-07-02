
QT += network

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../build-googletest-master-Desktop_Qt_5_11_0_MinGW_32bit-Release/googlemock/ -lgmock
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../build-googletest-master-Desktop_Qt_5_11_0_MinGW_32bit-Debug/googlemock/ -lgmockd

INCLUDEPATH += $$PWD/../../../googletest-master/googlemock/include
DEPENDPATH += $$PWD/../../../googletest-master/googlemock/include

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../build-googletest-master-Desktop_Qt_5_11_0_MinGW_32bit-Release/googlemock/libgmock.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../build-googletest-master-Desktop_Qt_5_11_0_MinGW_32bit-Debug/googlemock/libgmockd.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../build-googletest-master-Desktop_Qt_5_11_0_MinGW_32bit-Release/googlemock/gmock.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../build-googletest-master-Desktop_Qt_5_11_0_MinGW_32bit-Debug/googlemock/gmockd.lib

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../build-googletest-master-Desktop_Qt_5_11_0_MinGW_32bit-Release/googlemock/gtest/ -lgtest
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../build-googletest-master-Desktop_Qt_5_11_0_MinGW_32bit-Debug/googlemock/gtest/ -lgtestd

INCLUDEPATH += $$PWD/../../../googletest-master/googletest/include
DEPENDPATH += $$PWD/../../../googletest-master/googletest/include

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../build-googletest-master-Desktop_Qt_5_11_0_MinGW_32bit-Release/googlemock/gtest/libgtest.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../build-googletest-master-Desktop_Qt_5_11_0_MinGW_32bit-Debug/googlemock/gtest/libgtestd.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../build-googletest-master-Desktop_Qt_5_11_0_MinGW_32bit-Release/googlemock/gtest/gtest.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../build-googletest-master-Desktop_Qt_5_11_0_MinGW_32bit-Debug/googlemock/gtest/gtestd.lib

SOURCES += \
    main.cpp \
    FdCoreTest.cpp \
    FdCore.cpp

HEADERS += \
    FdCore.h

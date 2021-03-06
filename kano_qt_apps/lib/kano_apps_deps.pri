exists(conanbuildinfo.pri) {
    CONFIG += conan_basic_setup
    include(conanbuildinfo.pri)
} else {
    warning("Conan not being used, either run")
    warning("    conan install .")
    warning("or add libtouch_detect.so to your path")
    QMAKE_LFLAGS += -ltouch_detect
}


QMAKE_LFLAGS *= -lparson
INCLUDEPATH *= $$PWD/includes

HEADERS *= \
    $$PWD/includes/config.h \
    $$PWD/includes/logger.h \
    $$PWD/includes/app.h \
    $$PWD/includes/q_app.h \
    $$PWD/includes/installed_apps.h \
    $$PWD/includes/app_list.h \
    $$PWD/includes/q_app_list.h \
    $$PWD/includes/installed_app_list.h \
    $$PWD/includes/installed_app_list_populator.h \
    $$PWD/includes/download_app_list.h

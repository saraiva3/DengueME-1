#-------------------------------------------------
#
# Project created by QtCreator 2013-10-31T12:52:41
#
#-------------------------------------------------

QT += core xml network
QT += help
QT += widgets

TARGET = dengueme
TEMPLATE = app
TRANSLATIONS = portuguese.ts

help.commands += $$[QT_INSTALL_BINS]/qcollectiongenerator help/dengueme.qhcp

QMAKE_EXTRA_TARGETS += help

target.path = /usr/local/bin

#help.path = /usr/local/dengueme
#help.files = help/dengueme.qhc help/doc.qch

models.path = /usr/local/share/dengueme/Models
models.files = Models/*

shortcut.path = /usr/share/applications
shortcut.files = DengueME.desktop

INSTALLS = target models shortcut

SOURCES += main.cpp \
    mainwindow.cpp \
    dengueme.cpp \
    newproject.cpp \
    editor/components/observer.cpp \
    editor/components/database.cpp \
    editor/components/colorbar.cpp \
    options.cpp \
    about.cpp \
    helpbrowser.cpp \
    changeworkspace.cpp \
    renamewizard.cpp \
    filenamepage.cpp \
    newmodel.cpp \
    editor/components/constraints/doublespinboxrules.cpp \
    editor/components/constraints/spinboxrules.cpp \
    builder/modelbuilder.cpp \
    workspaceview.cpp \
    builder/newmodelwizard.cpp \
    dirmodel.cpp \
    workspacemodel.cpp \
    editor/group.cpp \
    editor/grouplist.cpp \
    builder/builderdirmodel.cpp \
    editor/components/field.cpp \
    editor/components/importcsv.cpp \
    editor/components/constraints/comboboxrules.cpp \
    editor/components/populationdata.cpp \
    editor.cpp \
    editor/views/modelview.cpp \
    tests.cpp \
    descriptionwindow.cpp \
    openmodel.cpp \
    syncmodels.cpp \
    downloadmanager.cpp \
    downloadhttp.cpp \
    editor/observerslist.cpp \
    editor/chartgroup.cpp \
    editor/components/chartfield.cpp \
    editor/textscreengroup.cpp \
    editor/visualtablegroup.cpp \
    editor/components/logfield.cpp \
    editor/components/textscreenfield.cpp \
    editor/components/visualtablefield.cpp \
    editor/loggroup.cpp

HEADERS  += \
    mainwindow.h \
    dengueme.h \
    newproject.h \
    editor/components/observer.h \
    editor/components/database.h \
    editor/components/colorbar.h \
    options.h \
    about.h \
    helpbrowser.h \
    changeworkspace.h \
    renamewizard.h \
    filenamepage.h \
    newmodel.h \
    editor/components/constraints/doublespinboxrules.h \
    editor/components/constraints/spinboxrules.h \
    builder/modelbuilder.h \
    workspaceview.h \
    builder/newmodelwizard.h \
    dirmodel.h \
    workspacemodel.h \
    editor/components/field.h \
    editor/group.h \
    editor/grouplist.h \
    builder/builderdirmodel.h \
    editor/components/importcsv.h \
    editor/component.h \
    editor/components/constraints/comboboxrules.h \
    editor/components/populationdata.h \
    editor.h \
    editor/views/modelview.h \
    tests.h \
    descriptionwindow.h \
    openmodel.h \
    syncmodels.h \
    downloadmanager.h \
    downloadhttp.h \
    editor/observerslist.h \
    editor/chartgroup.h \
    editor/components/chartfield.h \
    editor/textscreengroup.h \
    editor/visualtablegroup.h \
    editor/components/logfield.h \
    editor/components/textscreenfield.h \
    editor/components/visualtablefield.h \
    editor/loggroup.h

FORMS    += \
    mainwindow.ui \
    editor/components/database.ui \
    options.ui \
    about.ui \
    editor/components/constraints/doublespinboxrules.ui \
    editor/components/constraints/spinboxrules.ui \
    builder/modelbuilder.ui \
    editor/components/field.ui \
    editor/group.ui \
    editor/grouplist.ui \
    editor/components/importcsv.ui \
    editor/components/constraints/comboboxrules.ui \
    editor.ui \
    editor/views/modelview.ui \
    descriptionwindow.ui \
    openmodel.ui \
    syncmodels.ui \
    editor/observerslist.ui \
    editor/components/chartfield.ui \
    editor/components/logfield.ui \
    editor/components/textscreenfield.ui \
    editor/components/visualtablefield.ui \
    editor/components/vttsfield.ui

RESOURCES += \
    Resource.qrc

RC_FILE = DengueME.rc

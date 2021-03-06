#include "downloadmanager.h"

#include <QFileInfo>
#include <QDateTime>
#include <QDebug>


DownloadManager::DownloadManager(QObject *parent) :
    QObject(parent)
    , _pHTTP(NULL)
{
}


void DownloadManager::download(QUrl url){
        _pHTTP = new DownloadHTTP(this);
        connect(_pHTTP, SIGNAL(addLine(QString)), this, SLOT(localAddLine(QString)));
        connect(_pHTTP, SIGNAL(progress(int)), this, SLOT(localProgress(int)));
        connect(_pHTTP, SIGNAL(downloadComplete()), this, SLOT(localDownloadComplete()));
        _pHTTP->download(url);

}

void DownloadManager::localAddLine(QString qsLine){
    emit addLine(qsLine);
}


void DownloadManager::localProgress(int nPercentage){
    emit progress(nPercentage);
}


void DownloadManager::localDownloadComplete(){

    emit downloadComplete();
}

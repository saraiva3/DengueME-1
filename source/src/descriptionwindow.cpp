#include "descriptionwindow.h"
#include "ui_descriptionwindow.h"
#include <QDebug>
#include <QDir>
#include <QSizePolicy>
DescriptionWindow::DescriptionWindow(QWidget *parent,QString description) :
    QDialog(parent),
    ui(new Ui::DescriptionWindow){

    ui->setupUi(this);

    if(description == ("ModelBuilder")){
     //   QString path = QCoreApplication::applicationDirPath() + "/docs/";

        ui->textBrowser->setSource(*new QUrl("docs/help.html"));
    }
    else
        ui->textBrowser->setText(description);

     this->setWindowFlags(this->windowFlags() & ~Qt::WindowContextHelpButtonHint);

}

DescriptionWindow::~DescriptionWindow(){
    delete ui;
}

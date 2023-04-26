#include "mainwindow.h"
#include <QHBoxLayout>
#include <ScintillaEditBase.h>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , editor(new ScintillaEditBase)
{
    QHBoxLayout *layout = new QHBoxLayout;

    layout->addWidget(editor);

    setCentralWidget(new QWidget);
    centralWidget()->setLayout(layout);
}

MainWindow::~MainWindow()
{
    delete editor;
}


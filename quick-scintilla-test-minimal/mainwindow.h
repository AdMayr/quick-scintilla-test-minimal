#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

class ScintillaEditBase;

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private:
    ScintillaEditBase* editor;
};
#endif // MAINWINDOW_H

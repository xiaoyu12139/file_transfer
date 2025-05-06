﻿#ifndef MAINWINDOW_H
#define MAINWINDOW_H
// #pragma execution_character_set("utf-8")
#include <QMainWindow>
#include "KFileTransferSender.h"
#include <QFileDialog>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void on_btn_connect_clicked();
    void on_btn_selectFile_clicked();
    void on_btn_upFile_clicked();
    void on_btn_cancel_clicked();
    void on_progressValueChanged(const QString&,int);
    void on_error_state(int, int);
    void on_btn_freeDiskCheck_clicked();

    void on_btn_isExistFile_clicked();

private:
    Ui::MainWindow *ui;
    KFileTransferSender *mytcpsocket;
};

#endif // MAINWINDOW_H

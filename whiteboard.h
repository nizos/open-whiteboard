#ifndef WHITEBOARD_H
#define WHITEBOARD_H

#include <QMouseEvent>
#include <QObject>
#include <QDebug>
#include <QFile>
#include <QPoint>
#include <QColor>
#include <QImage>

#include <tesseract/baseapi.h>
#include <leptonica/allheaders.h>
#include <opencv2/opencv.hpp>


class Whiteboard : public QObject
{
    Q_OBJECT
public:
    explicit Whiteboard(QObject *parent = nullptr);
    ~Whiteboard();

    Q_INVOKABLE bool openImage(const QString &fileName);
    Q_INVOKABLE bool saveImage(const QString &fileName, const char *fileFormat);

    Q_INVOKABLE bool getIsModified();

    Q_INVOKABLE void setColor(const QColor &newColor);
    Q_INVOKABLE void setSize(int newSize);

    Q_INVOKABLE QColor getColor();
    Q_INVOKABLE int getSize();

    Q_INVOKABLE void add(double x, double y);
    Q_INVOKABLE void add(QPointF point);

public slots:
    Q_INVOKABLE void clear();
    Q_INVOKABLE void print();

protected:
    void mousePressEvent(QMouseEvent *event);
    void mouseMoveEvent(QMouseEvent *event);
    void mouseReleaseEvent(QMouseEvent *event);
    void paintEvent(QPaintEvent *event);
    void resizeEvent(QResizeEvent *event);

private:
    void drawLineTo(const QPoint &endPoint);
    void resizeImage(QImage *image, const QSize &newSize);

    bool modified;
    bool painting;
    int penSize;
    QColor penColor;
    QImage image;
    QPoint lastPoint;

    QString outText;
    QString imgPath;
    tesseract::TessBaseAPI *ocr;

signals:

};

#endif // WHITEBOARD_H

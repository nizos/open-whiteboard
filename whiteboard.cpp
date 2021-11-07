#include "whiteboard.h"

#include <QMouseEvent>
#include <QPainter>

#if defined(QT_PRINTSUPPORT_LIB)
#include <QtPrintSupport/qtprintsupportglobal.h>
#if QT_CONFIG(printdialog)
#include <QPrinter>
#include <QPrintDialog>
#endif
#endif

Whiteboard::Whiteboard(QObject *parent) : QObject(parent)
{
    modified = false;
    painting = false;
    penSize = 2;
    penColor = penColor.fromRgb(29,78,216,255);

    // Input image path
    imgPath = ":/images/hello-text.JPEG";

    // Output text
    outText = "";

    QFile file(imgPath);

    // Create Tesseract object
    ocr = new tesseract::TessBaseAPI();

    // Initialize tesseract to use English (eng) and the LSTM OCR engine.
    ocr->Init(NULL, "eng", tesseract::OEM_LSTM_ONLY);
    // ocr->Init(NULL, "equ");

    // Set Page segmentation mode to PSM_AUTO
    ocr->SetPageSegMode(tesseract::PSM_AUTO);

    // Open input image using OpenCV
    std::string stdStringPath = imgPath.toStdString();
    qDebug() << "stdStringPath: " << stdStringPath.c_str();

    // cv::Mat im = cv::imread(stdStringPath, cv::IMREAD_COLOR);
    cv::Mat im;
    if(file.open(QIODevice::ReadOnly))
    {
        qint64 sz = file.size();
        std::vector<uchar> buf(sz);
        file.read((char*)buf.data(), sz);
        im = imdecode(buf, cv::IMREAD_COLOR);
    }

    // Set image data
    ocr->SetImage(im.data, im.cols, im.rows, 3, im.step);

    // Run Tesseract OCR on image
    std::string ocrOutput = ocr->GetUTF8Text();

    // Print recognized text
    qDebug() << "Recognized text: " << ocrOutput.c_str();
}


Whiteboard::~Whiteboard()
{
    if (ocr) delete ocr;
}

bool Whiteboard::openImage(const QString &fileName)
{
    qDebug() << "Open Image";
//    QImage loadedImage;
//    if (!loadedImage.load(fileName))
//        return false;

//    QSize newSize = loadedImage.size().expandedTo(size());
//    resizeImage(&loadedImage, newSize);
//    image = loadedImage;
//    modified = false;
//    update();
    return true;
}

bool Whiteboard::saveImage(const QString &fileName, const char *fileFormat)
{
    qDebug() << "Save Image";
//    QImage visibleImage = image;
//    resizeImage(&visibleImage, size());

//    if (visibleImage.save(fileName, fileFormat)) {
//        modified = false;
//        return true;
//    }
    return false;
}


void Whiteboard::add(double x, double y)
{
    QPoint p(x,y);
}

void Whiteboard::add(QPointF point)
{
//    qDebug() << "Adding Float" << point;
}

void Whiteboard::clear()
{
    qDebug() << "Clear";
//    image.fill(qRgb(255, 255, 255));
//    modified = true;
//    update();
}

bool Whiteboard::getIsModified()
{
    return modified;
}

QColor Whiteboard::getColor()
{
    return penColor;
}

int Whiteboard::getSize()
{
    return penSize;
}

void Whiteboard::setColor(const QColor &newColor)
{
    penColor = newColor;
    qDebug() << "Set Pen Color" << newColor;
}

void Whiteboard::setSize(int newSize)
{
    penSize = newSize;
    qDebug() << "Set Pen Size" << newSize;
}


void Whiteboard::mousePressEvent(QMouseEvent *event)
{
    if (event->button() == Qt::LeftButton) {
//        qDebug() << "mousePressEvent LeftButton";
        lastPoint = event->position().toPoint();
        painting = true;
    }
}

void Whiteboard::mouseMoveEvent(QMouseEvent *event)
{
    if ((event->buttons() & Qt::LeftButton) && painting)
//        qDebug() << "mouseMoveEvent LeftButton";
        drawLineTo(event->position().toPoint());
}

void Whiteboard::mouseReleaseEvent(QMouseEvent *event)
{
    if (event->button() == Qt::LeftButton && painting) {
//        qDebug() << "mouseReleaseEvent LeftButton";
        drawLineTo(event->position().toPoint());
        painting = false;
    }
}

void Whiteboard::paintEvent(QPaintEvent *event)
{
//    qDebug() << "paintEvent";
//    QPainter painter(this);
//    QRect dirtyRect = event->rect();
//    painter.drawImage(dirtyRect, image, dirtyRect);
}

void Whiteboard::resizeEvent(QResizeEvent *event)
{
//    qDebug() << "resizeEvent";
//    if (width() > image.width() || height() > image.height()) {
//        int newWidth = qMax(width() + 128, image.width());
//        int newHeight = qMax(height() + 128, image.height());
//        resizeImage(&image, QSize(newWidth, newHeight));
//        update();
//    }
//    QWidget::resizeEvent(event);
}

void Whiteboard::drawLineTo(const QPoint &endPoint)
{
//    QPainter painter(&image);
//    painter.setPen(QPen(penColor, penWidth, Qt::SolidLine, Qt::RoundCap, Qt::RoundJoin));
//    painter.drawLine(lastPoint, endPoint);
//    modified = true;

//    int rad = (penWidth / 2) + 2;
//    update(QRect(lastPoint, endPoint).normalized().adjusted(-rad, -rad, +rad, +rad));
//    lastPoint = endPoint;
}

void Whiteboard::resizeImage(QImage *image, const QSize &newSize)
{
    if (image->size() == newSize)
        return;

//    qDebug() << "resizeImage";
    QImage newImage(newSize, QImage::Format_RGB32);
    newImage.fill(qRgb(255, 255, 255));
    QPainter painter(&newImage);
    painter.drawImage(QPoint(0, 0), *image);
    *image = newImage;
}


void Whiteboard::print()
{
#if defined(QT_PRINTSUPPORT_LIB) && QT_CONFIG(printdialog)
    QPrinter printer(QPrinter::HighResolution);

    QPrintDialog printDialog(&printer, this);

    if (printDialog.exec() == QDialog::Accepted) {
        QPainter painter(&printer);
        QRect rect = painter.viewport();
        QSize size = image.size();
        size.scale(rect.size(), Qt::KeepAspectRatio);
        painter.setViewport(rect.x(), rect.y(), size.width(), size.height());
        painter.setWindow(image.rect());
        painter.drawImage(0, 0, image);
    }
#endif // QT_CONFIG(printdialog)
}

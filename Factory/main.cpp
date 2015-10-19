#include <QDir>
#include <QGuiApplication>
#include <QQmlEngine>
#include <QQmlFileSelector>
#include <QQuickView>
#include <QQmlContext>

int main(int argc, char* argv[])
{
   QGuiApplication app(argc,argv);
   app.setOrganizationName("QtProject");
   app.setOrganizationDomain("qt-project.org");
   app.setApplicationName(QFileInfo(app.applicationFilePath()).baseName());
   QQuickView view;

   view.connect(view.engine(), SIGNAL(quit()), &app, SLOT(quit()));
   new QQmlFileSelector(view.engine(), &view);
   view.setSource(QUrl(QStringLiteral("qrc:/main.qml")));
   //view.setFlags(Qt::Window|Qt::FramelessWindowHint);
   view.setFlags(Qt::Window);
   view.setResizeMode(QQuickView::SizeRootObjectToView);
   //view.setResizeMode(QQuickView::SizeViewToRootObject);
   view.rootContext()->setContextProperty("rootwindow",&view);
   if (QGuiApplication::platformName() == QLatin1String("qnx") ||
         QGuiApplication::platformName() == QLatin1String("eglfs")) {
       view.showFullScreen();
   } else {
       view.show();
   }
   return app.exec();
}

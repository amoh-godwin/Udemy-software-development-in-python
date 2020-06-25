import sys
from PyQt5.QtGui import QGuiApplication, QIcon
from PyQt5.QtQml import QQmlApplicationEngine
from clock_func import Clock

app = QGuiApplication(sys.argv)
app.setWindowIcon(QIcon('resources/images/disc_logo.png'))

clock_work = Clock()
engine = QQmlApplicationEngine()
engine.rootContext().setContextProperty('clock', clock_work)
engine.load('resources/qml/main.qml')
engine.quit.connect(app.quit)

sys.exit(app.exec_())

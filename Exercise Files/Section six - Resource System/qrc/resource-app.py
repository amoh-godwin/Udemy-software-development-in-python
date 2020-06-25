import sys

from PyQt5.QtGui import QGuiApplication, QIcon
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QResource

app = QGuiApplication(sys.argv)

QResource.registerResource('resource.rcc')

app.setWindowIcon(QIcon(':disc_logo.png'))

engine = QQmlApplicationEngine()
engine.load('qrc:///qml/main.qml')
engine.quit.connect(app.quit)

sys.exit(app.exec_())

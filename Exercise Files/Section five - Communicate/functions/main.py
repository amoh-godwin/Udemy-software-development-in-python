import sys
from PyQt5.QtGui import QGuiApplication, QIcon
from PyQt5.QtQml import QQmlApplicationEngine
from chatbot import ChatBot

app = QGuiApplication(sys.argv)
app.setWindowIcon(QIcon("resources/disc_logo.png"))
engine = QQmlApplicationEngine()
chatbb = ChatBot()
engine.rootContext().setContextProperty('chatty', chatbb)
engine.load('main.qml')
engine.quit.connect(app.quit)
sys.exit(app.exec_())

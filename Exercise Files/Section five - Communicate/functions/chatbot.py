import os
from PyQt5.QtCore import QObject, pyqtSlot, pyqtSignal


class ChatBot(QObject):

    def __init__(self):
        QObject.__init__(self)

    return_user = pyqtSignal(str, str, arguments=['getUsername', 'emitter'])

    @pyqtSlot()
    def getUserName(self):
        """
            Return Username
        """
        username = os.environ['USERNAME']
        self.emitter(username)

    def emitter(self, name):
        """
        """
        self.return_user.emit('', name)

import threading
from time import gmtime, strftime, sleep
from PyQt5.QtCore import QObject, pyqtSlot, pyqtSignal

class Clock(QObject):

    def __init__(self):
        QObject.__init__(self)
    recieveTime = pyqtSignal(str, arguments=['_start_clock'])

    @pyqtSlot()
    def start_clock(self):
        start_thread = threading.Thread(target=self._start_clock)
        start_thread.daemon = True
        start_thread.start()
        print('thread_has started')

    def _start_clock(self):
        while True:
            sleep(0.1)
            time_str = strftime('%H:%M:%S', gmtime())
            self.recieveTime.emit(time_str)


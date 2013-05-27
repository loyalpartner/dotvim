import vim

class Position():
    """Docstring for Position """

    def __init__(self, line, col):
        """@todo: to be defined """
        self.line = line
        self.col = col


class VimState(object):
    """Docstring for VimState """

    def __init__(self, line, col):
        """@todo: to be defined

        :line: @todo
        :col: @todo

        """
        self._line = line
        self._col = col
        self._buf = []
        self._length = 0

class Me(object):
    """Docstring for Me """

    def CursorMove(self):
        """@todo: Docstring for CursorMove
        :returns: @todo

        """
        pass


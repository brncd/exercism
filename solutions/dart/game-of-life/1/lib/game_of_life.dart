class GameOfLife {
  List<List<int>> _matrix;
  GameOfLife(this._matrix);
  List<List<int>> matrix() {
    return _matrix;
  }
  void tick() {
    if (_matrix.isEmpty) {
      return;
    }
    int rows = _matrix.length;
    int columns = _matrix[0].length;
    List<List<int>> _newMatrix = List.generate(rows, (_) => List.filled(columns, 0));
    for (int x = 0; x < rows; x++) {
      for (int y = 0; y < columns; y++) {
        int neighbors = 0;
        for (int i = -1; i <= 1; i++)
        {
          for (int j = -1; j <= 1; j++) {
            if (i == 0 && j == 0) {
              continue;
            }
            int nX = x + i;
            int nY = y + j;
            if (nX >= 0 && nX < rows && nY >= 0 && nY < columns) {
              neighbors += _matrix[nX][nY];
            }
          }
        }
        if (_matrix[x][y] == 1 && neighbors == 2 || neighbors == 3){
          _newMatrix[x][y] = 1;
        }else{
          _newMatrix[x][y] = 0;
        }
      }
    }
    _matrix = _newMatrix;
  }
}

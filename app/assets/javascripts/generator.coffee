class Generator
  magic: (wall) ->
    guess_01 = ->
      return Math.floor(Math.random() * 2)

    guess_03 = ->
      return Math.floor(Math.random() * 4)

    # it cannot be 3 horizontal or 3 vertical tiles in a row or column


    for row, i in wall.tiles
      for tile, j in row
        row[j] = new Tile(guess_01(), guess_01(), guess_03())



@Generator = Generator
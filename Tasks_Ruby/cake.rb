def cut_cake(cake, n)
  raisins = cake.count('o')
  raise 'Не достатньо ізюму' if raisins < n

  self.width = cake.index("\n") + 1
  self.height = cake.size / width

  pieces = []
  while n > 0
    piece = ''
    cake.each_char.with_index do |char, i|
      if char == 'o'
        piece += 'o'
        n -= 1
        break if n == 0
      else
        piece += '.'
      end
      if (i + 1) % width == 0
        break if piece.count('o') == 0
        pieces << piece + "\n"
        piece = ''
      end
    end
  end

  pieces.sort_by! { |piece| -piece.index("\n") }
  return pieces
end
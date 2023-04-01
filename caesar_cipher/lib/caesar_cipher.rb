def caesar_cipher(message, shift)
  message.bytes.map do |c|
    lower = c.div(96)
    (((c - 64 - 32*lower + shift - 1) % 26)+65+32*lower).chr
  end
end

# frozen_string_literal: true

def caesar_cipher(message, shift)
  shifted = message.bytes.map do |c|
    if (c >= 65 && c <= 91) || (c >= 97 && c <= 122)
      lower = c.div(96)
      next (((c - 64 - 32 * lower + shift - 1) % 26) + 65 + 32 * lower).chr
    end
    c.chr
  end
  shifted.join('')
end

def caesar_cipher(message, shift_factor)
  shifted_message = []
  message.split("").each do |char|
    index = char.ord
    if char != char.capitalize
      shifted_message.push((((index - 96)% 26) + shift_factor + 96).chr)
    else
      shifted_message.push((((index - 64) % 26) + shift_factor + 64).chr)
    end
  end
  return shifted_message.join("")
end


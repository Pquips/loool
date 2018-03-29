# Song Name:Pokemon Theme
# Sheet Music: https://musescore.com/user/6217456/scores/2525106
# BPM Used: I modified it to my liking

# These are my variables
x = :piano
z = :pretty_bell
b = 110
a = 1
sfx = "C:/Users/amir_roseaminifu/Desktop/Sample/pika.wav"

# This is a function for my first measure
define :fm do
  play :G3, amp: a
  play :Bb3, amp: a
  play :D, amp: a
  sleep 0.5
end

# This is a function for my second measure
define :sm do
  play :F3, amp: a
  play :A3, amp: a
  play :D, amp: a
  sleep 0.5
end

# This is a loop that speeds up gradually
4.times do
  with_synth x do
    use_bpm b
    8.times do
      fm # Here I use the function for the first measure
    end
    8.times do
      sm # Here I use the function for the second measure
    end
    a = (a+0.125)
    b = (b+10)
  end
end

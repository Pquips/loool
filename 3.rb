# Song Name:Custom Transition
# Sheet Music: No sheet music
# BPM Used: 150

# These are my variables
x = :piano
b = 150
a = 1.5
c = 1.5
use_bpm b
melody = "C:/Users/amir_roseaminifu/Desktop/tonight/Sample/melody.wav"

# This is a loop that plays a sample for 64 beats
1.times do
  sample melody, amp: c
end

# this is a loop that gradually lowers in volume over 8 measures
8.times do
  with_synth x do
    2.times do
      8.times do
        play :G3, amp: a
        play :Bb3, amp: a
        play :D, amp: a
        sleep 0.5
      end
      8.times do
        play :F3, amp: a
        play :A3, amp: a
        play :D, amp: a
        sleep 0.5
      end
    end
  end
  a = (a-0.375)
end

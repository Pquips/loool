x = :piano

b = 150

a = 1.5

c = 1.5

use_bpm b

melody = "C:/Users/amir_roseaminifu/Desktop/tonight/Sample/melody.wav"

1.times do
  sample melody, amp: c
  
end

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
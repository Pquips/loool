x = :piano

z = :pretty_bell

b = 150

a = 1.5

sfx = "C:/Users/amir_roseaminifu/Desktop/tonight/Sample/pika.wav"

use_bpm b

live_loop :melody do
  
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
    
    8.times do
      play :Eb, amp: a
      play :Bb3, amp: a
      play :G3, amp: a
      sleep 0.5
    end
    
    11.times do
      play :D, amp: a
      play :Bb3, amp: a
      play :F3, amp: a
      sleep 0.5
    end
    
    3.times do
      play :D, amp: a
      play :C, amp: a
      play :G3, amp: a
      sleep 0.5
    end
    
    10.times do
      play :D, amp: a
      play :A3, amp: a
      play :F3, amp: a
      sleep 0.5
    end
    
  end
  
end


live_loop :bell do
  
  notes = [:D, :D, :D, :D, :D, :C, :Bb3, :F3, :Bb3, :D, :D, :C, :Bb3, :C, :Bb3, :Eb, :Eb, :Eb, :D, :C, :Bb3, :Bb3, :D, :D, :C, :Bb3, :D]
  
  sleeps = [0.5, 0.5, 0.5, 0.5, 1.5, 0.5, 1, 0.5, 2, 0.5, 1, 1, 0.5, 1, 5, 0.5, 1, 1, 0.5, 1, 1, 2, 0.5, 1, 0.5, 1, 0.5, 5]
  
  index1 = 0
  
  index2 = 0
  
  with_synth z do
    
    with_synth_defaults amp: a do
      
      28.times do
        sleep sleeps[index1]
        play notes[index2]
        index1 = index1+1
        index2 = index2+1
      end
      
    end
    
  end
  
end

live_loop :sfx do
  
  sample sfx, amp: 10
  sleep rrand_i(10, 30)
  
end
x = :piano

z = :pretty_bell

b = 110

a = 1

sfx = "C:/Users/amir_roseaminifu/Desktop/Sample/pika.wav"

define :fm do
  play :G3, amp: a
  play :Bb3, amp: a
  play :D, amp: a
  sleep 0.5
end

define :sm do
  play :F3, amp: a
  play :A3, amp: a
  play :D, amp: a
  sleep 0.5
end

4.times do
  
  with_synth x do
    
    use_bpm b
    
    8.times do
      fm
    end
    8.times do
      sm
    end
    
    a = (a+0.125)
    b = (b+10)
    
  end
  
end
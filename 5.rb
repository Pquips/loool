b = 150

a = 3

c = 1.5

use_bpm b

melody = "C:/Users/amir_roseaminifu/Desktop/tonight/Sample/melody.wav"

1.times do
  sample melody, amp: c
  
end

define :s do |c|
  sleep c
end

6.times do
  sample :bd_boom, amp: a
  s 1.5
  sample :bd_boom, amp: a
  s 2
  sample :bd_boom, amp: a
  s 1.5
  sample :bd_boom, amp: a
  s 1
  sample :bd_boom, amp: a
  s 1
  sample :bd_boom, amp: a
  s 1
  a = (a-0.75)
end
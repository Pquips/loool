b = 150

melody = "C:/Users/amir_roseaminifu/Desktop/tonight/Sample/premelody.wav"

use_bpm b

live_loop :melody do
  sample melody, amp: 1.5
  sleep 32
end

define :s do |c|
  sleep c
end

live_loop :bassline do
  
  2.times do
    sample :bd_boom, amp: 3
    s 1.5
    sample :bd_boom, amp: 3
    s 2
    sample :bd_boom, amp: 3
    s 1.5
    sample :bd_boom, amp: 3
    s 1
    sample :bd_boom, amp: 3
    s 1
    sample :bd_boom, amp: 3
    s 1
  end
  
  sample :bd_boom, amp: 3
  s 0.50
  sample :bd_boom, amp: 3
  s 1.00
  sample :bd_boom, amp: 3
  s 2
  sample :bd_boom, amp: 3
  s 1.5
  sample :bd_boom, amp: 3
  s 1
  sample :bd_boom, amp: 3
  s 1
  sample :bd_boom, amp: 3
  s 1
  sample :bd_boom, amp: 3
  s 1.5
  sample :bd_boom, amp: 3
  s 2
  sample :bd_boom, amp: 3
  s 1.5
  sample :bd_boom, amp: 3
  s 1
  sample :bd_boom, amp: 3
  s 1
  sample :bd_boom, amp: 3
  s 1
end
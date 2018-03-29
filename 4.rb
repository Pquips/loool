c
b = 150
melody = "C:/Users/amir_roseaminifu/Desktop/tonight/Sample/premelody.wav"
use_bpm b

# This is a live loop that plays my sample on repeat
live_loop :melody do
  sample melody, amp: 1.5
  sleep 32
end

# This is an example of a parameterized function that I use for sleeps
define :s do |c|
  sleep c
end

# This is a live loop where I repeat my bassline using my parameterized function
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

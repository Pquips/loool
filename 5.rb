# Song Name:Gleen
# Sheet Music: Custom transposition
# BPM Used: 150

# These are my variables
b = 150
a = 3
c = 1.5
use_bpm b
melody = "C:/Users/amir_roseaminifu/Desktop/tonight/Sample/melody.wav"

# This is a loop that plays my melody for 32 beats
1.times do
  sample melody, amp: c
end

# This is a function that i use for sleeps
define :s do |c|
  sleep c
end

# This is a liveloop that plays the baseline gradually fading out
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

# Part 1
(def input (map scan-number (string/split "," (slurp "d02.txt"))))

(var i 0)
(while (< i (length input))
  (def [opcode x y target] (array/slice input i (+ i 4)))
  (case opcode
    1  (put input target (+ (input x) (input y)))
    2  (put input target (* (input x) (input y)))
    99 :break)
  (+= i 4))

(print (first input))

# Part 2
(def final 19690720)

(loop [noun :range [1 100]]
  (loop [verb :range [1 100]]
    # (print noun verb)
    (def input (map scan-number (string/split "," (slurp "d02.txt"))))
    (put input 1 noun)
    (put input 2 verb)
    (var i 0)
    (while (< i (length input))
      (def [opcode x y target] (array/slice input i (+ i 4)))
      (case opcode
        1  (put input target (+ (input x) (input y)))
        2  (put input target (* (input x) (input y)))
        99 :break)
      (+= i 4))
    (if (= (first input) final)
      (print noun " " verb))))

(var input (map scan-number (string/split "," (slurp "d05.txt"))))

# Part 1
(var val 1)

(defn div
  "Integer division."
  [a b]
  (math/trunc (/ a b)))

(defn parse-command
  [cmd ox oy]
  [(if (= (mod (div cmd 100) 10) 0)  (input ox) ox)
   (if (= (mod (div cmd 1000) 10) 0) (input oy) oy)])

(var i 0)
(var break false)

(while (not break)
  (def cmd (input i))
  (def opcode (mod cmd 100))
  (case opcode
    1 (let [[x y]  (parse-command cmd (input (+ i 1)) (input (+ i 2)))
            target (input (+ i 3))]
        (put input target (+ x y))
        (+= i 4))
    2 (let [[x y]  (parse-command cmd (input (+ i 1)) (input (+ i 2)))
            target (input (+ i 3))]
        (put input target (* x y))
        (+= i 4))
    3 (let [target (input (+ i 1))]
        (put input target val)
        (+= i 2))
    4 (let [target (input (+ i 1))]
        (set val (input target))
        (+= i 2))
    99 (set break true)))

(print val)

# Part 2
(set input (map scan-number (string/split "," (slurp "d05.txt"))))
(set val 5)
(set i 0)
(set break false)

(while (not break)
  (def cmd (input i))
  (def opcode (mod cmd 100))
  (case opcode
    1 (let [[x y]  (parse-command cmd (input (+ i 1)) (input (+ i 2)))
            target (input (+ i 3))]
        (put input target (+ x y))
        (+= i 4))
    2 (let [[x y]  (parse-command cmd (input (+ i 1)) (input (+ i 2)))
            target (input (+ i 3))]
        (put input target (* x y))
        (+= i 4))
    3 (let [target (input (+ i 1))]
        (put input target val)
        (+= i 2))
    4 (let [target (input (+ i 1))]
        (set val (input target))
        (+= i 2))
    5 (let [[param jmp] (parse-command cmd (input (+ i 1)) (input (+ i 2)))]
        (if (not= param 0)
          (set i jmp)
          (+= i 3)))
    6 (let [[param jmp] (parse-command cmd (input (+ i 1)) (input (+ i 2)))]
        (if (= param 0)
          (set i jmp)
          (+= i 3)))
    7 (let [[x y]  (parse-command cmd (input (+ i 1)) (input (+ i 2)))
            target (input (+ i 3))]
        (put input target (if (< x y) 1 0))
        (+= i 4))
    8 (let [[x y]  (parse-command cmd (input (+ i 1)) (input (+ i 2)))
            target (input (+ i 3))]
        (put input target (if (= x y) 1 0))
        (+= i 4))
    99 (set break true)))

(print val)

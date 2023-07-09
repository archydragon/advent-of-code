(def input (map scan-number (string/split "\n" (slurp "d01.txt"))))

# Part 1
(defn fuel
  [mass]
  (- (math/trunc (/ mass 3)) 2))

(print (+ ;(map fuel input)))

# Part 2
(defn rec-fuel
  [mass]
  (let [f (fuel mass)]
    (if (> f 0)
      (+ f (rec-fuel f))
      0)))

(print (+ ;(map rec-fuel input)))

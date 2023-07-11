(def input (map |(tuple ;(string/split ")" $)) (string/split "\n" (slurp "d06.txt"))))


(pp input)
# Part 1

(defn parent
  "Get parent object for the specified one."
  [o]
  (find (fn [[p c]] (= o c)) input))

(defn parents
  "Get the whole ancestry chain"
  [o]
  (def ps @[])
  (var last o)
  (while last
    (if-let [par (parent last)
             [p _] par]
      (do (set last p) (array/push ps p))
      (set last nil)))
  ps)

(print (+ ;(map (fn [[_ o]] (length (parents o))) input)))

# Part 2&
(def from "YOU")
(def to   "SAN")
(each o (parents from)
  (if-let [i  (find-index |(= o $) (parents to))
           oi (find-index |(= o $) (parents from))]
    (print (+ i oi))))
# It prints multiple numbers, the first one is the correct one, I'm too lazy to optimize output there.

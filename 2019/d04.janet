(def i-min 265275)
(def i-max 781584)

# Part 1
(defn has-pair?
  [sn]
  (var has false)
  (for i 0 5
    (if (= (sn i) (sn (+ i 1)))
      (set has true)))
  has)

(defn validate
  [n]
  (let [sn (string/bytes (string/format "%d" n))]
    (and (<= ;sn) (has-pair? sn))))

(var valid-count 0)
(for i i-min i-max
  (if (validate i) (++ valid-count)))

(print valid-count)

# Part 2
(defn has-strict-pair?
  [sn]
  (def grps (sorted (map length (values (group-by (fn [v] v) sn))) >))
  (not (nil? (find-index |(= 2 $) grps))))

(defn validate2
  [n]
  (let [sn (string/bytes (string/format "%d" n))]
    (and (<= ;sn) (has-strict-pair? (string/format "%d" n)))))

(set valid-count 0)
(for i i-min i-max
  (if (validate2 i) (++ valid-count)))

(print valid-count)

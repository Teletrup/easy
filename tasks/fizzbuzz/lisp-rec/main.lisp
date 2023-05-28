(defun fizzbuzz (n) 
  (cond ((and (= 0 (mod n 3)) (= 0 (mod n 5))) "FizzBuzz")
        ((= 0 (mod n 3)) "Fizz")
        ((= 0 (mod n 5)) "Buzz")
        (t n)))

(defun rec (f i n)
  (format f "~a~%" (fizzbuzz i))
  (if (< i n) (rec f (+ i 1) n)))


(with-open-file (out "out.txt"
                     :direction :output
                     :if-does-not-exist :create
                     :if-exists :supersede)
  (rec out 1 100))

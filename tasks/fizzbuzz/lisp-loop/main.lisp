(with-open-file (out "out.txt"
                     :direction :output
                     :if-does-not-exist :create
                     :if-exists :supersede)
  (loop for i from 1 to 100 do
        (format out "~a~%"
                (cond ((and (= (mod i 3) 0) (= (mod i 5) 0)) "FizzBuzz")
                      ((= (mod i 3) 0) "Fizz")
                      ((= (mod i 5) 0) "Buzz")
                      (t i)))))

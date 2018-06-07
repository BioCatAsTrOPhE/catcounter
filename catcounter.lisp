(setq dna "CAT")
(loop for line = (read-line *standard-input* nil :eof)
    until (eq line :eof)
    do
    (if (not (char-equal (char line 0) #\>))
	(setq dna (concatenate 'string dna line))
    )
)

(setq cpt 0)
(loop for i from 0 to (- (length dna) 3)
    until (eq i (- (length dna) 3))
    do
    (setq kmer (substring dna i (+ i 3)))
    (if (string-equal kmer "CAT")
	(incf cpt)
    )
)
(write-line (format nil "CAT ~D" cpt))

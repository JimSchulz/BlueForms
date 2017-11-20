  SELECT DISTINCT sd.term_code_key "TERM",
                  sd.id           "ID",
                  sd.first_name   "FIRST_NAME",
                  sd.middle_initial "MI",
                  sd.last_name    "LAST_NAME",
                  sd.stst_desc    "STATUS",
                  sd.clas_desc    "CLASS"
    FROM as_cc_student_data sd
   WHERE     sd.term_code_key = :search_term
         AND (:search_status IS NULL OR sd.stst_code = :search_status)
         AND (:search_class IS NULL OR sd.clas_code = :search_class)
         AND ROWNUM < 21
ORDER BY UPPER (sd.last_name), UPPER (sd.first_name)
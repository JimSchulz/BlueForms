  SELECT sd.ID                             "STU_ID",
         sd.full_name_lfmi                 "STU_NAME",
         a.home_city || ', ' || a.home_state "CITY_STATE"
    FROM as_cc_student_data sd
         INNER JOIN as_cc_address a ON a.pidm_key = sd.pidm_key
   WHERE     sd.term_code_key = '201810'
         AND sd.stst_code NOT LIKE 'G%'
         AND sd.stst_code = 'AS'
         AND sd.levl_code = 'UG'
         AND UPPER (a.home_city) LIKE UPPER ('%' || :loc || '%')
ORDER BY UPPER (sd.last_name), UPPER (sd.first_name)
SELECT COUNT (*)"FTECountCurrentTerm"
  FROM as_cc_student_data sd
 WHERE     sd.term_code_key = sz_dates.this_term
       AND sd.stst_code NOT LIKE 'G%'
       AND sd.stst_code = 'AS'
       AND sd.levl_code = 'UG'
       AND sd.deceased_ind IS NULL
       AND sd.full_part_time_ind = 'F'
  SELECT ao.academic_period_graduation "TERM", COUNT (*)"COUNT"
    FROM as_cc_academic_outcome ao
   WHERE     ao.academic_period_graduation BETWEEN 200010
                                               AND sz_dates.this_term
         AND ao.status = 'AW'
         AND ao.student_level = 'UG'
GROUP BY ao.academic_period_graduation
ORDER BY ao.academic_period_graduation DESC
  SELECT stvterm_code "TERM_VALUE", stvterm_desc "TERM_LABEL"
    FROM stvterm
   WHERE stvterm_code <= sz_dates.next_term (3)
ORDER BY stvterm_code DESC
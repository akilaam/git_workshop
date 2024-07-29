select emple_nbr,fiscalweek,fisc_yr_skey,
 loc_id from
(select count(distinct emple_nbr) as emple_nbr,fiscalweek,fisc_yr_skey,
cast((left(loc_id,3)) as varchar) as loc_id from edwp.org_emple_hr_mstr_dim
 oehmd

join (select day_dt,case when cal.fisc_wk_of_yr_nbr<10
 then 'W0'+cast(cal.fisc_wk_of_yr_nbr as varchar)
else 'W'+cast(cal.fisc_wk_of_yr_nbr as varchar)
end as fiscalweek,
fisc_yr_skey  from edwp.cal_day_dim cal where day_nm ='Saturday' 
)
--and day_dt >=current_date-760

on 1=1
where  
  rec_eff_strt_dt <= day_dt+1 and  
  rec_eff_trm_dt>= day_dt+1
and src_del_ind <> 'Y'

and sts_ind in ('Active','Paid Leave','Unpaid Leave') 
and emple_trm_dt>= day_dt

group by 2,3,4)
where fisc_yr_skey in ('2023')
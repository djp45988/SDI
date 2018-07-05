SELECT cs.name,
  cs.CI_DESCRIPTION,
  cs.serial_number,
  cs.CI_ID,
  cs.category,
  cs.type,
  cs.item,
  cs.model_number,
  cs.MANUFACTURER_NAME,
  cs.asset_lifecycle_status,
  cs.country,
  cs.Site,
  cs.site_code,
  cs.building,
  cs.room,
  cs.ITRB_CURRENT,
  cs.ITRB_EMERGING,
  cs.ITRB_MAINTAINED,
  cs.ITRB_MANAGEMENT,
  cs.ITRB_PHASE_OUT_NON_STANDARD,
  cs.ITRB_RETIRED
FROM aradmin.pan_computer_system cs
WHERE 
NOT exists
  (SELECT *
  FROM aradmin.pan_asset_people ap2
  WHERE ap2.ci_id=cs.ci_id
  AND ap2.person_role = 'Supported by'
  AND ap2.FULL_NAME LIKE '%EIS NETWORK%'
  )
AND cs.asset_lifecycle_status NOT IN ('Disposed', 'End of Life')
AND ( cs.model_number LIKE '%3702%'
OR cs.model_number LIKE '%1552%'
OR cs.model_number LIKE '%2602%'
OR cs.model_number LIKE '%3502%'
OR cs.model_number LIKE '%3602%'
OR cs.model_number LIKE '%1041%'
OR cs.model_number LIKE '%1131%'
OR cs.model_number LIKE '%1141%'
OR cs.model_number LIKE '%1142%'
OR cs.model_number LIKE '%1231%'
OR cs.model_number LIKE '%1232%'
OR cs.model_number LIKE '%1242%'
OR cs.model_number LIKE '%1252%'
OR cs.model_number LIKE '%1262%'
OR cs.model_number LIKE '%2504%'
OR cs.model_number LIKE '%5508%'
OR cs.model_number LIKE '%5520%'
OR cs.model_number LIKE '%4402%'
OR cs.model_number LIKE '%4404%' )
AND cs.ITEM <> 'Printer'
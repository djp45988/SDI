SELECT   cs.name,
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
  cs.impact,
  cs.urgency,
  cs.priority,
  cs.INSTALLATION_DATE,
  cs.PURCHASE_DATE,
  cs.ITRB_CURRENT,
  cs.ITRB_EMERGING,
  cs.ITRB_MAINTAINED,
  cs.ITRB_MANAGEMENT,
  cs.ITRB_PHASE_OUT_NON_STANDARD,
  cs.ITRB_RETIRED

FROM aradmin.pan_computer_system cs
WHERE 
cs.asset_lifecycle_status NOT IN ('Disposed', 'End of Life','Delete','Down')
---and cs.ci_id = 'P015049722'


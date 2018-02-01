DB

Garments
  style_code:
  name:
 has_many
  locations:

Ink_colors
  color_code:
  name:

Locations
  location_code:
  name:
 belongs_to
  dimension:

Art_ref
  art_color_amount:
  art_ref_code:
 belongs_to
  process:
 has_many
  ink_colors

Art_production
  art_production_code:
  color_amount:
 belongs_to
  Art_ref

 Dimension
  width:
  height:
 has_many
  locations:

----------- Will Require Authentication -----------------
Sales_reps
  name:
 belongs_to
  Region:
 has_many
  Clients:

Clients
  name:
 belongs_to
  Sales_reps
 has_many
  Art_production

----------- Later Date -----------------------------------

Decoration_type
  code:
  name:
 has_many
  Art_ref
  Art_production

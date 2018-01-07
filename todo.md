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

Art_ref
  ink_color_amount:
 belongs_to
  process:
 has_many
  ink_colors

Art_production
  name:
 belongs_to
  Art_ref

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

locals {
  min_capacity_matrix = {
    GP_S_Gen5_1 = 0.5
    GP_S_Gen5_2 = 0.5
    GP_S_Gen5_4 = 0.5
    GP_S_Gen5_6 = 0.75
    GP_S_Gen5_8 = 1
  }
  min_capacity = lookup(local.min_capacity_matrix, var.sku_name, null)
}
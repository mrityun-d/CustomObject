locals {

 csv_data = <<-CSV

    name,key,description,slug,orderhint

     shirt,FormalShrit,newdress,mydress,1
  CSV

  instances = csvdecode(local.csv_data)

}

resource "commercetools_category" "testing-category" {

  for_each = { for inst in local.instances : inst.key => inst }
   name = {
    en-US = each.value.name
   }
  key = each.value.key
  description = {

    en-US = each.value.description

  }

  slug = {

    en-US = each.value.slug

  }
   order_hint = each.value.orderhint

 }

  resource "commercetools_custom_object" "my-custom-object" {
   for_each = { for inst in local.instances : inst.key => inst }
  container = each.value.container
  key       = each.value.key
  value     = each.value.value
  }
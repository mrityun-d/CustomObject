resource "commercetools_type" "additional-category-info" {
 
  key = "additional-category-info"

  name = {

    en = "Additional category information"

  }
  description = {
    en = "Additional category information"
  }

  resource_type_ids = ["category"]
 
 field {

    name = "additional-data"

    label = {

      en = "Additional category information"

     }

    required = false

    type {

      name = "Reference"  

      reference_type_id = "key-value-document"

    }

    input_hint = "SingleLine"

  }

  field {

    name = "size-guide"

    label = {

      en = "Size Guide" 
    }

    required = false

    type {

      name = "Reference"

      reference_type_id = "key-value-document"

    }

    input_hint = "SingleLine"

  }

}

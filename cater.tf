resource "commercetools_category" "navigation-category" {
 name = {
  
  en-US = "Navigation Category"
    }

key = "navigation"

  description = {

    en-US = "Top level category for navigation categories"

  }

  slug = {

    en-US = "navigation"

  }

  order_hint = "0.400000"


}
resource "commercetools_category" "womens-category" {

  name = {

    en-US = "Womens"

  }

  key = "womens"

  description = {

    en-US = "Top level category for womens"

  }

  parent = commercetools_category.navigation-category.id

  slug = {

    en-US = "womens"

  }

  order_hint = "0.5555555"

}

resource "commercetools_category" "womens-tops-category" {

  name = {

    en-US = "Tops"

  }

  key = "womens-tops"

  description = {

    en-US = "Womens Tops"

  }

  parent = commercetools_category.womens-category.id

  slug = {

    en-US = "womens-tops"

  }

  order_hint = "0.556666"

}


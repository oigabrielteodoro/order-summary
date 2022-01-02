module Colors = {
  let primary = #hex("#3829e0")
  let title = #hex("#1f2f56")
  let paragraphy = #hex("#7280a7")
  let card = #hex("#ffffff")
  let shape = #hex("#e0e8ff")
  let buttonText = #hex("#ffffff")
  let secondary = #hex("#f8f9fe")

  let toString = color =>
    switch color {
    | #hex(color) => color
    }
}

module Typography = {
  let fontFamily = "'Red Hat Display', sans-serif"
}

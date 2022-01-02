open Ancestor.Default

let {toString: colorToString} = module(Theme.Colors)

Emotion.injectGlobal({
  "*": {
    "padding": "0",
    "outline": "0",
    "margin": "0",
    "boxSizing": "border-box",
    "-webkit-font-smoothing": "antialiased",
    "-moz-osx-font-smoothing": "grayscale",
  },
  "body": {
    "fontFamily": Theme.Typography.fontFamily,
    "background": Theme.Colors.shape->colorToString,
    "backgroundImage": `url(${Assets.patternBackground})`,
    "backgroundRepeat": "no-repeat",
    "height": "100vh",
    "display": "flex",
    "flexDirection": "column",
    "justifyContent": "center",
    "alignItems": "center",
  },
  "html": {
    "fontSize": "62.5%",
  },
  "button": {
    "cursor": "pointer",
  },
})

module Styles = {
  open Emotion

  let image = css({
    "borderRadius": "1rem 1rem 0 0",
  })
}

@react.component
let make = () => {
  <Box
    display=[xs(#flex)]
    flexDirection=[xs(#column)]
    alignSelf=[xs(#center)]
    bgColor=[xs(Theme.Colors.card)]
    maxW=[xs(450->#px)]
    height=[xs(600->#px)]
    borderRadius=[xs(2)]>
    <img src={Assets.illustrationHero} className=Styles.image />
    <Box p=[xs(4)]> <Button> "Proceed to Payment" </Button> </Box>
  </Box>
}

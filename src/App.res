open Render
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

  let title = css({
    "fontSize": "2.4rem",
    "color": Theme.Colors.title->colorToString,
    "textAlign": "center",
    "fontWeight": "900",
  })

  let description = css({
    "fontSize": "1.8rem",
    "fontWeight": "700",
    "color": Theme.Colors.paragraphy->colorToString,
    "textAlign": "center",
    "marginTop": "2rem",
  })

  let cancelOrderButton = css({
    "background": "transparent",
    "color": Theme.Colors.paragraphy->colorToString,
    "boxShadow": "none",
    "marginTop": "2rem",
  })
}

@react.component
let make = () => {
  <Card>
    <Box p=[xs(4)]>
      <h1 className=Styles.title> {"Order Summary"->s} </h1>
      <p className=Styles.description>
        {"You can now listen to millions of songs, audiobooks, and podcasts on any device anywhare you like"->s}
      </p>
      <Order title="Annual Plan" price=59.99 />
      <Button> "Proceed to Payment" </Button>
      <Button className=Styles.cancelOrderButton> "Cancel Order" </Button>
    </Box>
  </Card>
}

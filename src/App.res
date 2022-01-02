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

  let image = css({
    "borderRadius": "1rem 1rem 0 0",
  })

  let title = css({
    "fontSize": "2.4rem",
    "color": Theme.Colors.title->colorToString,
    "textAlign": "center",
    "fontWeight": "bold",
  })

  let description = css({
    "fontSize": "1.8rem",
    "fontWeight": "500",
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

  let orderContainer = css({
    "margin": "2.5rem 0",
  })

  let orderTitle = css({
    "fontSize": "1.8rem",
    "color": Theme.Colors.title->colorToString,
  })

  let orderPrice = css({
    "fontSize": "1.6rem",
    "fontWeight": "500",
    "color": Theme.Colors.paragraphy->colorToString,
  })

  let orderChangeButton = css({
    "background": "transparent",
    "border": "0",
    "color": Theme.Colors.primary->colorToString,
    "fontWeight": "600",
    "fontSize": "1.4rem",
    "marginLeft": "auto",
    "transition": "300ms",
    "&:hover": {
      "opacity": "0.8",
    },
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
    borderRadius=[xs(2)]>
    <img src=Assets.illustrationHero className=Styles.image alt="Illustration Hero" />
    <Box p=[xs(4)]>
      <h1 className=Styles.title> {"Order Summary"->s} </h1>
      <p className=Styles.description>
        {"You can now listen to millions of songs, audiobooks, and podcasts on any device anywhare you like"->s}
      </p>
      <Box
        bgColor=[xs(Theme.Colors.secondary)]
        borderRadius=[xs(2)]
        p=[xs(3)]
        display=[xs(#flex)]
        alignItems=[xs(#center)]
        className=Styles.orderContainer>
        <img src=Assets.iconMusic alt="Icon Music" />
        <Box ml=[xs(2)]>
          <strong className=Styles.orderTitle> {"Annual Plan"->s} </strong>
          <p className=Styles.orderPrice> {"$59.99/year"->s} </p>
        </Box>
        <button className=Styles.orderChangeButton> {"Change"->s} </button>
      </Box>
      <Button> "Proceed to Payment" </Button>
      <Button className=Styles.cancelOrderButton> "Cancel Order" </Button>
    </Box>
  </Box>
}

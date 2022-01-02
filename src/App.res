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
    "background": Theme.Colors.shape,
    "backgroundImage": `url(${Assets.patternBackground})`,
    "backgroundRepeat": "no-repeat",
    "height": "100vh",
  },
  "html": {
    "fontSize": "62.5%",
  },
  "button": {
    "cursor": "pointer",
  },
})

@react.component
let make = () => {
  <h1> {"Order summary component"->React.string} </h1>
}

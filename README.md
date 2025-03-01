[![Typst Package](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fraw.githubusercontent.com%2FTypsium%2Ftypsium-atomic%2Fmain%2Ftypst.toml&query=%24.package.version&prefix=v&logo=typst&label=package&color=239DAD)](https://typst.app/universe/package/typsium-atomic)
[![MIT License](https://img.shields.io/badge/license-MIT-blue)](https://github.com/Typsium/typsium/blob/main/LICENSE)
![User Manual](https://img.shields.io/badge/manual-.pdf-purple)

# Draw Atoms in Typst

Draw simple atomic models consisely using the power of CeTZ and Typst.


## Usage
To draw a simple atom use
```typst
#draw-atom-shells(
  element: (
    atomic-number(proton-count),
    mass-number(nucleon-count),
    symbol), 
  electrons: (2,8),
  core-distance: 1,
  shell-distance: 0.4,
  core-radius: 0.6,
  fill: luma(90%),
  stroke: 1pt + black,
)
```

The electrons should be passed in an array where the index corresponds to the shell, while the value is the amount of electrons on that shell. Here is an example: 
```typst
#draw-atom-shells(element:"Cu", electrons:(1, 8, 18, 2))
```
![image](https://github.com/user-attachments/assets/42e3ffb2-68d1-44dc-b8e3-039e19b1e942)

To draw the same in a CeTZ canvas, use ```draw-atom-shells```, which takes the same arguments as ```atom-shells```

```typst
#cetz.canvas({
  draw-atom-shells(element: (atomic-number:29, mass-number:64, symbol: "Cu"), electrons:(1, 8, 18, 2))
})
```

If you'd like to exclusively draw the shells (for example to draw your own core) use 
```typst
draw-shell(electrons: 20, radius: 5, fill: blue, stroke: 0.5pt + gray)
```


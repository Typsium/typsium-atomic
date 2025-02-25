[![Typst Package](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fraw.githubusercontent.com%2FTypsium%2Ftypsium-atomic%2Fmain%2Ftypst.toml&query=%24.package.version&prefix=v&logo=typst&label=package&color=239DAD)](https://typst.app/universe/package/quick-cards)
[![MIT License](https://img.shields.io/badge/license-MIT-blue)](https://github.com/Typsium/typsium/blob/main/LICENSE)
![User Manual](https://img.shields.io/badge/manual-.pdf-purple)

# Draw Atoms in Typst

Draw simple atomic models consisely using the power of CeTZ and Typst.


## Usage
To draw a simple atom use
```typst
#draw-atom-shells(atomic-number(proton-count), mass-number(nucleon-count), electrons per shell, shells: 1.0, step: 0.4, center: 0.6, color: luma(90%))
```

The electrons should be passed in an array where the index corresponds to the shell, while the value is the amount of electrons on that shell. Here is an example: 
```typst
#draw-atom-shells(29,64, "Cu", (1, 8, 18, 2))
```
![image](https://github.com/user-attachments/assets/42e3ffb2-68d1-44dc-b8e3-039e19b1e942)

To draw the same in a CeTZ canvas, use ```draw-atom-shells-canvas```, which takes the same arguments as ```draw-atom-shells```

```typst
#cetz.canvas({
  draw-atom-shells-canvas(29,64, "Cu", (1, 8, 18, 2))
})
```

If you'd like to exclusively draw the shells (for example to draw your own core) use ```draw_shell(radius, electrons, color: luma(90%))```


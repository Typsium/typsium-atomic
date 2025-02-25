[![Typst Package](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fraw.githubusercontent.com%2FTypsium%2Ftypsium-atomic%2Fmain%2Ftypst.toml&query=%24.package.version&prefix=v&logo=typst&label=package&color=239DAD)](https://typst.app/universe/package/quick-cards)
[![MIT License](https://img.shields.io/badge/license-MIT-blue)](https://github.com/Typsium/typsium/blob/main/LICENSE)
![User Manual](https://img.shields.io/badge/manual-.pdf-purple)

# Draw Atoms in Typst

Draw simple atomic models consisely using the power of CeTZ and Typst.


## Usage
To draw a simple atom outside of a CeTZ block, use
```typst
#atom(atomic, mass, atom, electrons, orbitals: 1.0, step: 0.4, center: 0.6, color: luma(90%))
```

For example,
```typst
#atom(29,64, "Cu", (1, 8, 18, 2))
```
makes \
![image](https://github.com/user-attachments/assets/42e3ffb2-68d1-44dc-b8e3-039e19b1e942)

To draw the same in a CeTZ block, use ```draw_atom```, which takes the same arguments as ```atom```

```typst
#cetz.canvas({
  draw_atom(29,64, "Cu", (1, 8, 18, 2))
})
```

If you'd like to exclusively draw the shells (for example to draw your own core) use ```draw_orbit(radius, electrons, color: luma(90%))```


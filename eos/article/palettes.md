## Palettes

A palette is a form of *referenced data*. This means you can record a set of 
values once and then refer back to this at any point in the future, without 
having to input those values from scratch again.

For example, if you found a specific shade of lavender you liked, you could 
record this into color palette 1. Now, if you ever want to access that shade 
of lavender again in the future, all you need to type is Color Palette 1.

### Recording Palettes

You can use the live data currently on stage to record a palette. For example, 
set your fixtures to the colour you would like and then type `Record Color 
Palette 1`. Note that this will record the colours of everything which is not 
currently in it's default colour. In order to just record the colour of a few 
channels, specify them before you record the palette. For example `Chan 1 Thru
12 Record Color Palette 1` will ignore any channels other than 1 through 12.

There are five types of palettes in Eos: Intensity, Focus, Color, Beam and 
Presets. The first four can record data about their associated parameter group 
(Beam covers Form, Image and Shutter). Presets can record any combination of 
parameter types. In order to specify which parameters you want to record, put 
them in the command line when you record the palette. For example `Chan 501 
Thru 503 Intens Shutter Record Preset 1` will record only the intensity and 
shutter values of 501 through 503 into preset 1. This might be helpful for a 
stroboscope preset.

As with most other things in Eos, you can label a palette: `Beam Palette 1 
Label` will bring up a dialog to label beam palette 1.

### Applying Palettes

You can apply a palette on the command line: `Chan 1 Color Palette 1` applies 
colour palette 1 to channel 1.

You can also recall an entire palette without having to specify any channels 
at all: `Recall From Color Palette 1` applies colour palette 1 to any channels 
which were recorded into it.

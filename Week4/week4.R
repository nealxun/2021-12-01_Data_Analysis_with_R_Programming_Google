## week 3

library(tidyverse)
library(palmerpenguins)

ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
        geom_point() +
        geom_smooth(method = "lm", aes(color = "lm"), se = FALSE) +
        geom_smooth(method = "loess", aes(color = "loess"), se = FALSE) +
        geom_smooth(method = "gam", formula = y ~ s(x), aes(color = "gam"), se = FALSE)

# facet_warp and facet_grid
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
        geom_point(aes(color = species)) +
        facet_wrap(~species) +
        scale_x_continuous(guide = guide_axis(check.overlap = TRUE)) +
        labs(title = "Facet Wrap")
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
        geom_point(aes(color = species)) +
        facet_grid(sex~species) +
        scale_x_continuous(guide = guide_axis(check.overlap = TRUE)) +
        labs(title = "Facet Grid")

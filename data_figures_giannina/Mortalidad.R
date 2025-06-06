library(ggplot2)
library(tidyr)
library(dplyr)

# Datos
datos <- data.frame(
Days = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21),
Control_34g_L = c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33),
`36.4g_L` = c(0, 0, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33),
`45.8g_L` = c(0, 0, 0, 0, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 3.33, 6.67, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10),
`51.8g_L` = c(0, 3.33, 10, 13.33, 13.33, 16.67, 23.33, 23.33, 23.33, 23.33, 26.67, 26.67, 30, 33.33, 33.33, 50, 60, 63.33, 63.33, 63.33, 73.33, 73.33),
`57.7g_L` = c(0, 46.67, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100),
Control_34g_L_SD = c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.77, 0, 0, 0, 0, 0, 0, 0, 0, 0),
`36.4g_L_SD` = c(0, 0, 5.77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
`45.8g_L_SD` = c(0, 0, 0, 0, 5.77, 0, 0, 0, 0, 0, 0, 0, 5.77, 5.77, 0, 0, 0, 0, 0, 0, 0, 0),
`51.8g_L_SD` = c(0, 5.77, 5.77, 5.77, 0, 5.77, 5.77, 0, 0, 0, 5.77, 0, 0, 0, 0, 15.27, 10, 5.77, 0, 0, 0, 10),
`57.7g_L_SD` = c(0, 5.77, 5.77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
)
colnames(datos) <- c("Days", "Control_34g_L", "36.4g_L", "45.8g_L", "51.8g_L", "57.7g_L", "Control_34g_L_SD", "36.4g_L_SD", "45.8g_L_SD", "51.8g_L_SD", "57.7g_L_SD")
# Crear el gráfico
ggplot(datos, aes(x = Days)) +
geom_line(aes(y = Control_34g_L, color = "Control (34g/L)")) +
geom_line(aes(y = `36.4g_L`, color = "36.4g/L")) +
geom_line(aes(y = `45.8g_L`, color = "45.8g/L")) +
geom_line(aes(y = `51.8g_L`, color = "51.8g/L")) +
geom_line(aes(y = `57.7g_L`, color = "57.7g/L")) +
geom_point(aes(y = Control_34g_L, color = "Control (34g/L)")) +
geom_point(aes(y = `36.4g_L`, color = "36.4g/L")) +
geom_point(aes(y = `45.8g_L`, color = "45.8g/L")) +
geom_point(aes(y = `51.8g_L`, color = "51.8g/L")) +
geom_point(aes(y = `57.7g_L`, color = "57.7g/L")) +
geom_errorbar(aes(ymin = Control_34g_L - Control_34g_L_SD, ymax = Control_34g_L + Control_34g_L_SD), width = 0.2, color = "black") +
geom_errorbar(aes(ymin = `36.4g_L` - `36.4g_L_SD`, ymax = `36.4g_L` + `36.4g_L_SD`), width = 0.2, color = "black") +
geom_errorbar(aes(ymin = `45.8g_L` - `45.8g_L_SD`, ymax = `45.8g_L` + `45.8g_L_SD`), width = 0.2, color = "black") +
geom_errorbar(aes(ymin = `51.8g_L` - `51.8g_L_SD`, ymax = `51.8g_L` + `51.8g_L_SD`), width = 0.2, color = "black") +
geom_errorbar(aes(ymin = `57.7g_L` - `57.7g_L_SD`, ymax = `57.7g_L` + `57.7g_L_SD`), width = 0.2, color = "black") +
labs(
x = "Days",
y = "Cumulative mortality (%)",
color = "Dilutions of brine") +
theme_minimal() +
  theme(
    axis.title = element_text(size = 14, face = "bold"),  # Aumenta el tamaño de los títulos de los ejes
    axis.text = element_text(size = 12)  # Aumenta el tamaño del texto de los ejes
  )

install.packages("drc")
install.packages("ggplot2")

library(drc)
library(ggplot2)

library(drc)
library(ggplot2)

data <- data.frame(
  Salinity = c(34, 36.4, 45.8, 51.8, 57.7, 58, 58.8, 59.4),
  Replica1 = c(0, 0, 0, 10, 100, 100, 100, 100),
  Replica2 = c(0, 0, 0, 20, 100, 100, 100, 100),
  Replica3 = c(0, 10, 10, 10, 100, 100, 100, 100)
)

# Calcular la media de las réplicas
data$response <- rowMeans(data[, 2:4])

# Ajustar el modelo
model <- drm(response ~ Salinity, data = data, fct = LL.4())

# Crear datos para la curva de predicción
pred_data <- data.frame(Salinity = seq(min(data$Salinity), max(data$Salinity), length.out = 100))
pred_data$response <- predict(model, newdata = pred_data)

# Calcular el LC50 y la respuesta correspondiente
lc50 <- ED(model, 50)[1]
lc50_response <- predict(model, newdata = data.frame(Salinity = lc50))

# Graficar los datos y la curva de dosis-respuesta
ggplot(data, aes(x = Salinity, y = response)) +
  geom_point(size = 2) +
  geom_line(data = pred_data, aes(x = Salinity, y = response), color = "blue") +
  geom_segment(aes(x = lc50, xend = lc50, y = 0, yend = lc50_response), linetype = "dashed", color = "red") +
  geom_segment(aes(x = min(data$Salinity), xend = lc50, y = lc50_response, yend = lc50_response), linetype = "dashed", color = "red") +
  geom_point(aes(x = lc50, y = lc50_response), color = "red", size = 3) +
  annotate("text", x = lc50, y = lc50_response, label = paste("LC50 =", round(lc50, 2), "g/L"), hjust = 1.1, vjust = -0.5, color = "red") +
  labs(title = "Dose-Response Curve",
       x = "Salinity (g/L)",
       y = "Response (%)") +
  theme_minimal()

#Instalar paquetes
install.packages("ggplot2")
install.packages("tidyr")
install.packages("dplyr")

library(ggplot2)
library(tidyr)
library(dplyr)

# Datos
datos <- data.frame(
    Days = c(0, 4, 7, 14, 21, 28),
    `Time_zero_34g_L` = c(1.031734019, 0, 0, 0, 0, 0),
    `34.0g_L_Control` = c(0, 1.024935205, 1.114925221, 0.823582485, 0.893139169, 0.875077406),
    `36.4g_L` = c(0, 1.1397497, 1.026295514, 1.027948679, 1.242366688, 0.866009485),
    `45.8g_L` = c(0, 0.956491178, 1.532134649, 1.207600056, 1.034911572, 0.825596951),
    `51.8g_L` = c(0, 0.986656474, 2.120419366, 1.090119452, 0.990433877, 0),
    `Time_zero_34g_L_SD` = c(0.388545856, 0, 0, 0, 0, 0),
    `34.0g_L_Control_SD` = c(0, 0.2468778953869110, 0.314448087, 0.367220998, 0.347007926, 0.228253099),
    `36.4g_L_SD` = c(0, 0.297794031, 0.410478213, 0.294946039, 0.470254437, 0.257062724),
    `45.8g_L_SD` = c(0, 0.370832585, 0.366118233, 0.51771424, 0.354422945,  0.296555527),
    `51.8g_L_SD` = c(0, 0.282842294, 0.165252402, 0.6551973, 0.231334674, 0)
)

colnames(datos) <- c("Days", "Time Zero (34 g/L)", "34 g/L (Control)", "36.4g/L", "45.8g/L", "51.8g/L", 
                     "Time Zero (34 g/L)_SD", "34 g/L (Control)_SD", "36.4g/L_SD", "45.8g/L_SD", "51.8g/L_SD")
datos_largo <- pivot_longer(datos, cols = c(`Time Zero (34 g/L)`, `34 g/L (Control)`, `36.4g/L`, `45.8g/L`, `51.8g/L`), names_to = "Group", values_to = "Value")
datos_sd_largo <- pivot_longer(datos, cols = c(`Time Zero (34 g/L)_SD`, `34 g/L (Control)_SD`, `36.4g/L_SD`, `45.8g/L_SD`, `51.8g/L_SD`), names_to = "Group_SD", values_to = "SD")
datos_completo <- cbind(datos_largo, SD = datos_sd_largo$SD)
datos_completo$Group <- factor(datos_completo$Group, levels = c("Time Zero (34 g/L)", "34 g/L (Control)", "36.4g/L", "45.8g/L", "51.8g/L"))
ggplot(datos_completo, aes(x = as.factor(Days), y = Value, fill = Group)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.9), color = "black") +
  geom_errorbar(aes(ymin = Value, ymax = Value + SD), width = 0.2, color = "black", position = position_dodge(width = 0.9)) +
  geom_text(data = subset(datos_completo, Days == 7 & Group == "51.8g/L"), 
            aes(label = "*", y = Value + SD + 0.1),
            color = "black", position = position_dodge(width = 0.9), size = 6, vjust = 0.5, hjust = -2.6) +
  labs(x = "Days", y = "Relative Expression", fill = "Dilutions of brine") +
  scale_fill_discrete(labels = c(
    "Time Zero (34 g/L)" = "Time Zero (34 g/L)",
    "34 g/L (Control)" = "34 g/L (Control)",
    "36.4g/L" = "36.4g/L",
    "45.8g/L" = "45.8g/L",
    "51.8g/L" = "51.8g/L"
  )) +
  scale_x_discrete(expand = expansion(add = c(1, 0))) +
  scale_y_continuous(expand = expansion(add = c(0, 1))) +
  theme_minimal() +
  theme(
    axis.title = element_text(size = 14, face = "bold"),
    axis.text = element_text(size = 12)
  )


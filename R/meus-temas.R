# VISUALIZAÇÃO CARTOGRÁFICA DO TERRITÓRIO BRASILEIRO

# Nesta etapa, são elaborados três mapas temáticos para representar o contorno territorial do Brasil, a distribuição de seus biomas e a divisão do país em grandes regiões. 

# São utilizadas diferentes paletas de cores e configurações de elementos gráficos para personalizar a apresentação dos mapas.


# Paleta principal
cores_projeto <- c(
  azul_marinho  = "#08306B",
  azul_profundo = "#08519C",
  azul_medio    = "#2171B5",
  azul_oceano   = "#4292C6",
  azul_celeste  = "#6BAED6",
  azul_nevoa    = "#9ECAE1",
  azul_gelo     = "#C6DBEF"
)

# Cores complementares
cor_fundo  <- "#F4F8FA"
cor_texto  <- "#263746"
cor_borda  <- "#FFFFFF"


# TEMA GRÁFICO PADRONIZADO
# Configurações compartilhadas pelos mapas do projeto.

tema_mapa <- theme_void(base_family = "sans") +
  theme(
    plot.background = element_rect(
      fill = cor_fundo,
      color = NA
    ),
    panel.background = element_rect(
      fill = cor_fundo,
      color = NA
    ),
    plot.title = element_text(
      color = cor_texto,
      size = 22,
      face = "bold",
      hjust = 0.5,
      margin = margin(t = 16, b = 4)
    ),
    plot.subtitle = element_text(
      color = cor_texto,
      size = 13,
      hjust = 0.5,
      margin = margin(b = 8)
    ),
    plot.caption = element_text(
      color = cor_texto,
      size = 8,
      hjust = 1,
      margin = margin(b = 10, r = 12)
    ),
    legend.title = element_text(
      color = cor_texto,
      size = 10,
      face = "bold"
    ),
    legend.text = element_text(
      color = cor_texto,
      size = 9
    ),
    legend.position = "right",
    plot.margin = margin(20, 20, 10, 20)
  )

# PALETA PARA OS BIOMAS
# Cada categoria recebe uma tonalidade de azul.

biome_colors <- c(
  "Amazônia"         = "#08306B",
  "Cerrado"          = "#2171B5",
  "Mata Atlântica"   = "#4292C6",
  "Caatinga"         = "#08519C",
  "Pampa"            = "#6BAED6",
  "Pantanal"         = "#9ECAE1",
  "Sistema Costeiro" = "#C6DBEF"
)

# PALETA PARA AS GRANDES REGIÕES

region_colors <- c(
  "Norte"        = "#08306B",
  "Nordeste"     = "#2171B5",
  "Centro-Oeste" = "#4292C6",
  "Sudeste"      = "#6BAED6",
  "Sul"          = "#9ECAE1"
)


# criação da função def pol
def_pol <- function(x, y, pol){
  as.logical(sp::point.in.polygon(point.x = x,
                                  point.y = y,
                                  pol.x = pol[,1],
                                  pol.y = pol[,2]))
}

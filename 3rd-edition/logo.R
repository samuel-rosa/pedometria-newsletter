# Geração da nuvem de palavras ligadas à pedometria usada como logo da Newsletter da Comissão de Pedometria da SBCS
# Você está livre para editar o quanto quiser!!!

# Instalar e carregar pacores necessários ============================
install.packages(c("wordcloud","tm", "slam"), repos = "http://cran.r-project.org")
require(wordcloud)
require(RColorBrewer)
display.brewer.all(type="seq")

# Cria objeto com dados textuais =====================================
words <- c("pedometria pedometria pedometria pedometria solo estatística estatística estatística matemática matemática matemática sensores pedologia mapeamento gênese espaço variabilidade amostra dados métodos variação informática informática informática tecnologia programação script amostragem GPS satélite MDE pedólogo regressão geoestatística pedotransferência modelos resíduo incerteza computador mapas covariáveis tempo 3D função validação calibração SIG SIG SIG sistema predição interpolação ajuste curva rede neural árvore decisão classificação especialista erro erro correlação seleção automático paisagem logística simulação terreno terreno atributo geologia clima imagem pixel pixel escala resolução resolução ensino pesquisa extensão agricultura ambiente precisão precisão acurácia acurácia pedometria")

# Definir paleta de cores ======================================================
pal <- brewer.pal(9, "YlOrBr")

# Salvar arquivo no formato PNG ================================================
dev.off()
x11(width = 17/2.5, height = 5/2.5, bg = "black")
wordcloud(words = words, min.freq = Inf, random.order = FALSE, random.color = TRUE, colors = pal, rot.per = 0, fixed.asp = FALSE)
savePlot(filename = "figuras/wordcloud-black.png")
dev.off()

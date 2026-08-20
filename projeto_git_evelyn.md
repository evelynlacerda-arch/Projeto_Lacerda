Projeto_Lacerda
================
Evelyn Lacerda
2026-08-20

## Legenda: Esse output indica que o arquivo .Rmd será renderizado (convertido) para .md para ir para o Github, através do knitr (pacote do R que serve para executar o código e gerar o documento final).

Assim, conseguimos misturar: texto, código R, resultados, figuras e
tabelas, o que é ótimo para projetos científicos.

<!-- README.md is generated from README.Rmd. Please edit that file -->

## Legenda:

- collapse = true = aparecer o código e o resultado juntos (bom para
  organização).
- warning = false = não mostre avisos quando o este bloco de código for
  executado.
- message = false = não mostrar mensagens dos pacotes carregados que não
  fazem parte da análise de dados.  
- eval = false = não execute o código deste bloco, apenas mostre o
  código no documento.

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax
for authoring HTML, PDF, and MS Word documents. For more details on
using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that
includes both content as well as the output of any embedded R code
chunks within the document. You can embed an R code chunk like this:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

## Including Plots

You can also embed plots, for example:

![](projeto_git_evelyn_files/figure-gfm/pressure-1.png)<!-- -->

Note that the `echo = FALSE` parameter was added to the code chunk to
prevent printing of the R code that generated the plot.


# Bibliotecas -------------------------------------------------------------

library(shiny)
library(tidyverse)
library(shinydashboard)
library(shinydashboardPlus)
library(dashboardthemes)


# Tema --------------------------------------------------------------------

source("tema.R")

# Header ------------------------------------------------------------------

Header <-
  dashboardHeader(
    title = "Portfolio"
    
    # titleWidth = "0px"#,
    ,titleWidth = 160
  )


# Sidebar -----------------------------------------------------------------

Sidebar <-
  dashboardSidebar(#disable = F,
                   width = "0px", 
                   sidebarMenu(
                     menuItem("Portfolio", tabName = "portfolio",  icon = icon('file-alt'))
                   )
  )


# Footer ------------------------------------------------------------------


Footer = dashboardFooter(left_text = "Desenvolvido por: Érika S. Machado", 
                         right_text = "Brasil, 2021")
# Body --------------------------------------------------------------------

# #D39832 bege, alaranjado rgb(211,152,50)
# rgb(250, 238, 216) fundo dashboard rgb(255, 251, 243)
# #FFFFFF branco, fundo rgb(255,255,255)
# #727E58 verde musgo rgb(114,126,88)
Body <-
  dashboardBody(
    tags$style(".small-box.bg-olive { background-color: #D39832 !important; color: #000000 !important; }"),
    Tema,
    tabItems(
      tabItem(tabName = 'portfolio',
              fluidPage(
               
                fluidRow(
                  socialBox(
                  title = "Análise individual",
                  width = 4, closable = F,
                  subtitle = "Março/2021",
                  src = "pp3.jpg",
                  attachmentBlock(
                    src = "post1.PNG",
                    title = "Análise de Dados iFood",
                    title_url = "https://erika-sm.shinyapps.io/LeandroIfood/"
                    
                  ),
                  # appButton(
                  #   url = "http://google.com",
                  #   label = "Users", 
                  #   icon = "fa fa-users", 
                  #   enable_badge = FALSE, 
                  #   badgeColor = NULL, 
                  #   badgeLabel = NULL
                  # ),
                  footer = "Análise de dados fornecidos pelo app do Ifood para os 
                  usuários que pedirem."
                ),
                socialBox(
                  title = "FAPEG",
                  width = 4, closable = F,
                  subtitle = "Novembro/2020",
                  src = "fapeg.png",
                  attachmentBlock(
                    src = "post2.PNG",
                    title = "Lógica Pareceristas PDCTR",
                    title_url = "https://fapeg.shinyapps.io/Pareceristas_PDCTR/"
                  ),
                  footer = "Dashboard feito para facilitar a atribuição de pareceristas em
                    um recente edital da FAPEG"
                ),
                socialBox(
                  title = "Análise Individual",
                  width = 4, closable = F,
                  subtitle = "Novembro/2019",
                  src = "pp3.jpg",
                  attachmentBlock(
                    src = "post3.PNG",
                    title = "Trabalhos para Estatísticos",
                    title_url = "https://emprego-estatistico.shinyapps.io/VagaEstat/"
                  ),
                  footer = "Análise sobre vagas de emprego para Estatísticos em todo o 
                  Brasil. Estudo feito com intuito de direcionar os graduandos para se prepararem
                  para as exigências do mercado."
                )
                # socialBox(
                #   title = "Disciplina UFG",
                #   width = 4, closable = F,
                #   subtitle = "Setembro/2020",
                #   src = "ufg.png",
                #   attachmentBlock(
                #     src = "post4.PNG",
                #     title = "Trabalho Séries Temporais",
                #     title_url = "http://google.com"
                #   ),
                #   footer = "Trabalho feito para aprendizado e apresentação na disciplina de Análise
                #   de Séries Temporais ministrado em 2020, graduação em Estatística/UFG."
                # )
                ),
                fluidRow(
                socialBox(
                  title = "MPGO",
                  width = 4, closable = F,
                  subtitle = "Setembro/2019",
                  src = "mpgo-simples.png",
                  attachmentBlock(
                    src = "post6.PNG",
                    title = "Análise Questionário SF-36", 
                    title_url = "https://erika-sm.shinyapps.io/SF36app/"
                  ),
                  footer = "Análise de questionário aplicado a servidores/membros do MPGO
                  com o intuito de verificar a saúde mental e física dos mesmos."
                ),
                # socialBox(
                #   title = "MPGO",
                #   width = 4, closable = F,
                #   subtitle = "Novembro/2019",
                #   src = "mpgo-simples.png",
                #   attachmentBlock(
                #     src = "post7.PNG",
                #     title = "Situação Sedes",
                #     title_url = "http://google.com"
                #   ),
                #   footer = "Painel desenvolvido para visualizar amplamente o tipo de situação
                #   das sedes do MPGO no Estado."
                # ),
                socialBox(
                  title = "Análise Individual",
                  width = 4, closable = F,
                  subtitle = "Dezembro/2020",
                  src = "pp3.jpg",
                  attachmentBlock(
                    src = "post8.PNG",
                    title = "Vagas de Emprego Simplificado",
                    title_url = "https://erika-sm.shinyapps.io/maps_of_stats_jobs_br/"
                  ),
                  footer = "Simplificação do dashboard sobre o estudo de vagas de 
                  emprego para estatísticos, apresentando somente o mapa da quantidade de vagas."
                ),
                socialBox(
                  title = "MPGO",
                  width = 4, closable = F,
                  subtitle = "Janeiro/2020",
                  src = "mpgo-simples.png",
                  attachmentBlock(
                    src = "post5.PNG",
                    title = "Acompanhamento Avaliadores",
                    title_url = "https://erika-sm.shinyapps.io/ContAvapp/"
                  ),
                  footer = "Dashboard feito para acompanhar o trabalho de avaliadores de
                  pedidos relacionados a saúde no MPGO."
                ))
                
              )
      ) )
    
  )



# User Interface ----------------------------------------------------------

UI <-
  dashboardPagePlus(
    header = Header
    ,sidebar = Sidebar
    ,body = Body
    ,footer = Footer
    ,title = "Portfolio Shiny Erika" 
    ,enable_preloader = TRUE 
    ,loading_duration = 2
  )



# Server ------------------------------------------------------------------

Server <-
  function(input, output){
    
 
    
    
  }


shinyApp(ui = UI, server = Server)
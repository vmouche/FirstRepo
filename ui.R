library(shiny)

# Define UI for application that draws a histogram----
shinyUI(fluidPage(

    # Application title----
    titlePanel("Attestation covid-19"),

    # Sidebar with a slider input for number of bins----
    sidebarLayout(
        sidebarPanel(
            textInput("nompre", label = "Nom Prenom", value = "", width=NULL, placeholder=NULL),
            dateInput(inputId = "idDateNaissance", label = "Date de naissance", value = NULL,
                      format = "dd/mm/yyyy", startview = "decade", weekstart = 0, language = "fr"),
            #dateInput(inputId = "idDateDuJour", label = "Le", value = NULL, format = "dd/mm/yyyy", startview = "decade", weekstart = 0, language = "fr"),
            textInput(inputId = "idText", label = "Adresse du domicile",
                      value = "", width = NULL, placeholder = NULL),
            radioButtons(inputId = "idRadio", label = "Quel est votre motif ?", selected = NULL,
                         choices = c("Activite professionnelle, enseignement et formation, mission d'interet general" = 1, 
                                     "Sante (consultations et soins)" = 2, 
                                     "Motif familial imperieux" = 3, 
                                     "Convocation juicidaire ou administrative" = 4,
                                     "Deplacements lies a des transferts" = 5,
                                     "Animaux de compagnie" = 6)
                         ),
            dateInput(
                inputId = "idDate",
                label = "Fait le",
                value = 2021-05-03,
                min = 2020,
                max = NULL,
                format = "yyyy-mm-dd",
                startview = "month",
                weekstart = 0,
                language = "en",
                width = NULL,
                autoclose = TRUE,
                datesdisabled = NULL,
                daysofweekdisabled = NULL),
            
            textInput(inputId = "idText2", label = "a (heure)",
                      value = "", width = NULL, placeholder = NULL),
            radioButtons(inputId = "isRadio2", label = "Certification sur l'honneur",selected = NULL,
                         choices = c("ce n'est pas moi"= 1,
                                     "C'est moi" = 2)),
            downloadButton("report", "Generate report")
        ),
            

        # Show a plot of the generated distribution----
        mainPanel(
            #plotOutput()
        )
    )
))

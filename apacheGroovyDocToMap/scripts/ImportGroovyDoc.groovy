@Grab('org.jsoup:jsoup:1.13.1')
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import java.io.File
import javax.swing.JOptionPane


// dictionary html to markdown
H2M =['<code>':'`','</code>':'`']
verbose = true 
//TODO: hacer que con verbose se agreguen en details la identificación del tipo de elemento. pasar a subrutinas

//formats:
    // 'o': //outerHtml
    // 'h': //html
    // 'p': //plain
    // 'm': //markdown
//images
    // 'p': //plain, just link to image
    // 'i': //image as externalObject
    // 'm': //image as markdown in node text
    // 'd': //image as markdown in details
    // 'n': //image as markdown in note

//TODO: ver como esto lo puede parametrizar el usuario (quizás dejar como parámetros en mapa "Titulares")
format = [                                     //  original
    'h'                          :  'p'    ,   //  'o'   
//    'div'                      :  'XXX'  ,   //  'XXX' 
//    'paragraph'                :  'XXX'  ,   //  'XXX' 
    'paragraphText'              :  'p'    ,   //  'h'   
    'paragraphImage'             :  'i'    ,   //  'h'   
    'imageblock'                 :  'i'    ,   //  'h'   
    'listingblock'               :  'p'    ,   //  'h'   
    'title'                      :  'p'    ,   //  'h'   
    'colist arabic'              :  'p'    ,   //  'o'   
    'ulist'                      :  'p'    ,   //  'h'   
    'olist arabic'               :  'p'    ,   //  'h'   
    'admonitionblock note'       :  'p'    ,   //  'h'   
    'admonitionblock tip'        :  'p'    ,   //  'h'   
    'admonitionblock warning'    :  'p'    ,   //  'h'   
    'admonitionblock important'  :  'p'    ,   //  'h'   
    'admonitionblock caution'    :  'p'    ,   //  'h'   
    'table'                      :  'h'    ,   //  'h'   
    'dt'                         :  'p'    ,   //  'h'   
    'dd'                         :  'p'        //  'h'   
]

//arma arbol desde nodo seleccionado
def nodo = node

def baseUrl = "https://groovy-lang.org/"

//definir doc como variable general
Document doc

// cargar html en doc (true: desde página web, false: desde disco local para hacer pruebas)
if (true){
    String url = "https://groovy-lang.org/documentation.html"
    doc = org.jsoup.Jsoup.connect(url).get()
} else {
    def inputFile = "C:/Temp/sacando groovy scripts de página web/documentation.html"
    File input = new File(inputFile)
    doc = Jsoup.parse(input, "UTF-8", "")
}

// con listado de headers arma opciones para InputDialog
def headers = doc.getElementById('content').getElementsByTag('h2')
String[] options = headers*.text()
def group = showInputDialogList(options,'Apache Groovy documentation','Please select a topic',1)

//group: number indicating the 'Group of Topics' selected by the user

//gets list of topics for the selected group, their titles and urls
def topics = doc.getElementById('content').getElementsByTag('h2')[group].parent().getElementsByTag('li').flatten()
String[] titles = topics*.text()
def urls = topics*.getElementsByTag('a')*.attr('href').collect{ baseUrl + it}
// return urls

// shows list of topics to the user and gets the url of the selected one
String url =  urls[showInputDialogList(titles,'Apache Groovy documentation','Please select a subtopic')]
// return url

//redefines doc to get the content of the selected topic
doc = org.jsoup.Jsoup.connect(url).get()
// return doc

//gets the main content
def contenido = doc.getElementsByTag('h1')[0].parent()
def j=0 //counter for code nodes added inside the same header, to give them different ID to each other

//TODO: mostrar avance (¿en función de los h2 y h3?)
//TODO: crear mapa con titulares y en un segundo mapa nuevo tirar el contenido de la página
traducirSect2(contenido,nodo,0)


//------------------------- Methods -------------------------

def traducirSect2(s2,n,i){
    def ndo = n
    def ndo2
    s2.children().each{ e ->
        def tag = e.tag().toString()
        def f = format[tag]
        switch (tag){
            case "h${i+1}":
                titulo = e.text()
                j = 0
                ndo = addNode(e, n, 'h','header')
                break;
            case "div":
                def clase = e.className().toString()
                f = format[clase]
                switch (clase){
                    case 'paragraph':  //TODO: separar caso texto vs caso imagen
                        ndo2 = addParagraphNode(e, ndo, format['paragraphText'],format['paragraphImage'])
                        //ndo2.details = "div - $clase"
                        break
                    case 'imageblock':
                        ndo2 = addImageNode(e, ndo, f)
                        ndo2.details = "div - $clase"
                        break
                    case 'listingblock':
                        ndo2 = addContentNode(e, ndo, f, clase)
                        //ndo2.style.backgroundColorCode = '#66ffff'
                        //ndo2.details = "div - $clase"
                        addCodeNode(e, ndo2)
                        break
                    case '':
                        switch(e.id().toString()){
                            case 'preamble':
                                traducirSect2(e,ndo,i)
                                break
                        }
                        break
                    case ['sectionbody','sidebarblock','content','exampleblock','dlist']:
                        traducirSect2(e,ndo,i)
                        break
                    case ~/sect\d/:
                        traducirSect2(e,ndo,i+1)
                        break
                    case 'title':
                        ndo = addNode(e, ndo, f, clase)
                        //ndo.style.name = 'styles.topic'
                        ndo.details = "div - $clase"
                        break
                    case 'colist arabic':
                        e.getElementsByTag('tr')eachWithIndex{ ele,k ->
                            addNode(ele, ndo2, f, clase)//.details = "div - $clase" //.icons.add("full-${k+1}")
                        }
                        break
                    case ['ulist','olist arabic']:
                        ndo2 = ndo.createChild('List')
                        e.getElementsByTag('li')each{ ele ->
                            def ndo3 = addNode(ele, ndo2, f, clase)
                            addCodeNode(ele, ndo3)
                        }
                        //ndo2.details = "div - $clase"
                        ndo2.icons.add("list") //TODO: crear style para 'list'
                        break
                    case ['admonitionblock note','admonitionblock tip','admonitionblock warning','admonitionblock important','admonitionblock caution']:
                        addContentNode(e,ndo,f,clase)//.details = "div - $clase"
                        break
                    default:
                        ndo.createChild("div - class:$clase").style.name = "Tarea pendiente"
                        break
                }
                break;
            case 'table':
                ndo2 = addTableNode(e, ndo, f) // , "attach"
                ndo2.details = tag
                addCodeNode(e, ndo2)
                break
            case 'dl':
                traducirSect2(e,ndo,i)
                break
            case 'dt':
                ndo = addNode(e,n,f,tag)
                ndo.details = tag
                break
            case 'dd':
                addNode(e,ndo,f,tag).details = tag
                break
            default:
                n.createChild("element - tag:$tag").style.name = "Tarea pendiente"
                break
        }
    }
    ndo.folded = true
}

//TODO: utilizar subrutina común para imagen con addParagraphNode
def addImageNode(e, ndo, type){
    def tI = type.toString().take(1).toLowerCase()
    def texto
    def details
    def note
    def imagen
    def link
    def eImagenes = e.getElementsByClass("content")
    if(eImagenes){
        def img = eImagenes[0].getElementsByTag("img")[0]
        def url = img.attr('src')
        def alt = img.attr('alt')
        switch(tI){
            case 'p': //plain, just link to image
                texto   = alt
                link    = url
                break
            case 'h': //html
                texto = "<html>${e.html()}</html>"
                break
            case 'i': //image as externalObject
                texto   = alt
                imagen  = url
                break            
            case 'm': //image as markdown in node text
                texto   = "![${alt}](${url})"
                break            
            case 'd': //image as markdown in details
                texto   = alt
                details = "![${alt}](${url})"
                break            
            case 'n': //image as markdown in note
                texto   = alt
                note    = "![${alt}](${url})"
                break            
        }
        def ndo3 = ndo.createChild(texto)
        if (details) {ndo3.details            = details}
        if (note   ) {ndo3.note               = note   }
        if (imagen ) {ndo3.externalObject.uri = imagen }
        if (link   ) {ndo3.link.text          = link   }
        return ndo3
    }
}   

//TODO: para caso markdown ver que no contenga tag <p>
//TODO: sacar dos subrutinas: imagen, texto
def addParagraphNode(e, ndo, typeTxt, typeImg){
    def tT = typeTxt.toString().take(1).toLowerCase()
    def tI = typeImg.toString().take(1).toLowerCase()
    if(tT == 'h' && tI == 'h'){
        return addNode(e, ndo, 'h')  
    }
    def texto
    def details
    def note
    def imagen
    def link
    def eImagenes = e.getElementsByClass("image")
    if(eImagenes){
        def img = eImagenes[0].getElementsByTag("img")[0]
        def url = img.attr('src')
        def alt = img.attr('alt')
        switch(tI){
            case 'p': //plain, just link to image
                texto   = alt
                link    = url
                break
            case 'h': //html
                texto = "<html>${e.html()}</html>"
                break
            case 'i': //image as externalObject
                texto   = alt
                imagen  = url
                break            
            case 'm': //image as markdown in node text
                texto   = "![${alt}](${url})"
                break            
            case 'd': //image as markdown in details
                texto   = alt
                details = "![${alt}](${url})"
                break            
            case 'n': //image as markdown in note
                texto   = alt
                note    = "![${alt}](${url})"
                break            
        }
        def ndo3 = ndo.createChild(texto)
        if (details) {ndo3.details            = details}
        if (note   ) {ndo3.note               = note   }
        if (imagen ) {ndo3.externalObject.uri = imagen }
        if (link   ) {ndo3.link.text          = link   }
        return ndo3
    } else {
        def parrafo = e.getElementsByTag("p")[0]
        switch(tT){
            case 'p': //plain
                texto = parrafo.text()
                break
            case 'h': //html
                texto = noTags(parrafo)?parrafo.text():"<html>${parrafo.html()}</html>"
                break
            case 'm': //markdown
                texto = htmlToMarkdown(parrafo)
                break            
        }
        def ndo3 = ndo.createChild(texto)
        ndo3.style.name = 'paragraph'
        return ndo3
    }
}

//TODO: ver como mejorar traductor HTML to markdown. Incluir librería java externa
def htmlToMarkdown(p){
    def t
    if(noTags(p)){
        t = p.text()
    } else {
        t = p.html()
        H2M.each{ d ->
            t = t.replace(d.key,d.value)
        }
    }
    return t
}

//TODO: ojo que al parecer se enreda con los <p> </p>
def noTags(p){
    p.html() == p.text()
}

def addNode(elem, n, type){
    return addNode(elem, n, type, null)
}

def addNode(elem, n, type, eType){
    def texto
    switch(type.toString().take(1).toLowerCase()){
        case 'p': //plain
            texto = elem.text()
            break
        case 'h': //html
            texto = "<html>${elem.html()}</html>"
            break
        case 'o': //outerHtml
            texto = "<html>${elem.outerHtml()}</html>"
            break            
        case 'm': //markdown
            texto = htmlToMarkdown(elem)
            break            
    }
    if(!n){
        def txto = "error Nodo null: \ntexto de elemento = ${elem.text()}\n tag = ${elem.tag()?:'x'}\n class = ${elem.className()?:'x'}"
        ui.informationMessage(txto.toString())
    }
    def ndo3 = n.createChild(texto)
    if(eType){ndo3.style.name = eType}
    return ndo3
}

def addContentNode(elem, n, type){
    return addContentNode(elem, n, type, null)
}

def addContentNode(elem, n, type,eType){
    def aN = elem.getElementsByClass("content")
    def ndo3 = addNode(aN, n, type, eType)
    return ndo3
}


def addTableNode(elem, n, type){
    return addTableNode(elem, n, type, null)
}

//TODO: agregar opción markdown a Tabla
def addTableNode(elem, n, type, iconName){
    def tituloTabla = elem.getElementsByClass("title").text()?:'Table'
    def ndo3 = n.createChild(tituloTabla)
    if(iconName){ndo3.icons.add(iconName)}
    ndo3.details = "look table in node's note"
    def texto
    switch(type.toString().take(1).toLowerCase()){
        case 'p': //plain
            texto = elem.text()
            break
        case ['h','o']: //html
            texto = """<html>
  <head>
    <style type="text/css">
      <!--
        body { font-family: Dialog; font-size: 10pt; color: #000000; background-color: #ffffff; text-align: left }
        p { margin-top: 0 }
        table, th, td {border: 1px solid black}
      -->
    </style>

  </head>
  <body>
  ${elem.outerHtml()}
  </body>
</html>"""
            break          
    }
    ndo3.note = texto
    ndo3.style.name = 'table'
    return ndo3
}

// adds a node with the code as note. It has the format to be open with the groovy console
def addCodeNode(elem, n){
    def codes = elem.getElementsByTag("code").findAll{it.className().startsWith('language-')}
    codes.each{ gr ->
        def lang = gr.attr("data-lang")
        gr.getElementsByTag('b').each{it.prepend("    //___note_").append("___")}
        def codeNode = n.createChild( "${titulo} - ${++j}") //<code class="language-groovy" data-lang="groovy">
        codeNode.note = gr.text()
        codeNode.style.backgroundColorCode = '#66CCCC'
        //codeNode.note = "<html>${gr.outerHtml()}</html>"
        codeNode.details =".${lang}"
    }
}

//region: UI

    // shows InputDialog with list of options and returns the number of the selected option by the user (as integer)
    def showInputDialogList(
            String[] options, 
            String title = 'Input dialog',
            String question = 'Please select an option',
            int defaultOption = 0
        ){
        String result = (String)JOptionPane.showInputDialog(
           null,
           question,
           title,
           JOptionPane.QUESTION_MESSAGE,
           null,
           options,
           options[defaultOption]
        )
        return (options as ArrayList).indexOf(result)
    }

//end
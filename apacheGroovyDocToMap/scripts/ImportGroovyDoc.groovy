@Grab('org.jsoup:jsoup:1.13.1')
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import java.io.File
import javax.swing.JOptionPane

def nodo = node

def baseUrl = "https://groovy-lang.org/"

Document doc
if (true){
    String url = "https://groovy-lang.org/documentation.html"
    doc = org.jsoup.Jsoup.connect(url).get()
} else {
    def inputFile = "C:/Temp/sacando groovy scripts de p�gina web/documentation.html"
    File input = new File(inputFile)
    doc = Jsoup.parse(input, "UTF-8", "")
}

def headers = doc.getElementById('content').getElementsByTag('h2')
String[] options = headers*.text()
def group = showInputDialogList(options,'Apache Groovy documentation','Please select a topic',1)

def topics = doc.getElementById('content').getElementsByTag('h2')[group].parent().getElementsByTag('li').flatten()
String[] titles = topics*.text()
def urls = topics*.getElementsByTag('a')*.attr('href').collect{ baseUrl + it}
// return urls

String url =  urls[showInputDialogList(titles,'Apache Groovy documentation','Please select a subtopic')]
// return url

doc = org.jsoup.Jsoup.connect(url).get()
// return doc
def contenido = doc.getElementsByTag('h1')[0].parent()
def j=0

traducirSect2(contenido,nodo,0)


def traducirSect2(s2,n,i){
    def ndo = n
    def ndo2
    s2.children().each{ e ->
        switch (e.tag().toString()){
            case "h${i+1}":
                titulo = e.text()
                j = 0
                ndo = n.createChild("<html>${e.outerHtml()}</html>")
                //ndo.style.name = 'styles.topic'
                //ndo.folded = true
                //c.statusInfo = titulo
                break;
            case "div":
                switch (e.className().toString()){
                    case 'paragraph':
                        ndo2 = ndo.createChild()
                       // ndo2.text = e.text()
                        ndo2.text ="<html>${e.html()}</html>"
                        break
                    case 'listingblock':
                        ndo2 = ndo.createChild( "<html>${e.html()}</html>")
                        ndo2.style.backgroundColorCode = '#66ffff'
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
                        // ndo.folded = true
                        traducirSect2(e,ndo,i)
                        break
                    case ~/sect\d/:
                        // ndo.folded = true
                        traducirSect2(e,ndo,i+1)
                        break
                    case 'title':
                        ndo = ndo.createChild( e.text())
                        ndo.style.name = 'styles.topic'
                        break
                    case 'colist arabic':
                        e.getElementsByTag('tr')eachWithIndex{ ele,k ->
                            // ndo2.createChild(ele.text()).icons.add("emoji-1F535") //"<html>${e.html()}</html>"
                            // ndo2.createChild(ele.text()).icons.add("full-${k+1}") //"<html>${e.html()}</html>"
                            ndo2.createChild("<html>${ele.outerHtml()}</html>")   //.icons.add("full-${k+1}")
                        }
                    case ['ulist','olist arabic']:
                        e.getElementsByTag('li')each{
                            // ndo2.createChild(it.text()) //"<html>${e.html()}</html>"
                            def ndo3 = ndo2.createChild("<html>${it.html()}</html>")
                            ndo3.icons.add('emoji-1F539')
                            addCodeNode(it, ndo3)
                        }
                        ndo2.icons.add("list")
                        break
                    case 'admonitionblock note':
                        def aN = e.getElementsByClass("content")
                        def ndo3 = ndo.createChild("<html>${aN.html()}</html>")
                        ndo3.icons.add("clock2")
                        break
                    case 'admonitionblock tip':
                        def aN = e.getElementsByClass("content")
                        def ndo3 = ndo.createChild("<html>${aN.html()}</html>")
                        ndo3.icons.add("idea")
                        break
                    case 'admonitionblock warning':
                        def aN = e.getElementsByClass("content")
                        def ndo3 = ndo.createChild("<html>${aN.html()}</html>")
                        ndo3.icons.add("messagebox_warning")
                        break
                    case 'admonitionblock important':
                        def aN = e.getElementsByClass("content")
                        def ndo3 = ndo.createChild("<html>${aN.html()}</html>")
                        ndo3.icons.add("yes")
                        break
                    case 'admonitionblock caution':
                        def aN = e.getElementsByClass("content")
                        def ndo3 = ndo.createChild("<html>${aN.html()}</html>")
                        ndo3.icons.add("closed")
                        break
                    default:
                        ndo.createChild(e.className().toString()).style.name = "Tarea pendiente"
                        break
                }
                break;
            case 'table':
                def titulo = e.getElementsByClass("title").text()?:'Table'
                ndo2 = ndo.createChild(titulo)
                //ndo.note = "<html>${e.html()}</html>"
                ndo2.icons.add("attach")
                // ndo2.createChild("<html>${e.outerHtml()}</html>")
                ndo2.note = """<html>
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
  ${e.outerHtml()}
  </body>
</html>"""
                ndo2.details = "look table in node's note"
                addCodeNode(e, ndo2)
                break
            case 'dl':
                traducirSect2(e,ndo,i)
                break
            case 'dt':
                ndo = n.createChild("<html>${e.html()}</html>")
                break
            case 'dd':
                ndo.createChild("<html>${e.html()}</html>")
                break
            default:
                n.createChild(e.tag().toString()).style.name = "Tarea pendiente"
                break
        }
    }
    ndo.folded = true
}


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

    def showInputDialogList(String[] options, String title = 'Input dialog',String question = 'Please select an option',int defaultOption = 0){
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
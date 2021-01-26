<map version="freeplane 1.8.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Apache Groovy Doc to Map" FOLDED="false" ID="ID_885966712" CREATED="1611689719904" MODIFIED="1611689742214" LINK="https://github.com/EdoFro/Freeplane_Apache_Groovy_Documentation_To_Map" BACKGROUND_COLOR="#97c7dc" STYLE="oval">
<font SIZE="16" BOLD="true" ITALIC="true"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" fit_to_viewport="false" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="11" RULE="ON_BRANCH_CREATION"/>
<attribute_layout VALUE_WIDTH="174.74999 pt"/>
<attribute NAME="name" VALUE="apacheGroovyDocToMap"/>
<attribute NAME="version" VALUE="v0.1"/>
<attribute NAME="author" VALUE="EdoFro"/>
<attribute NAME="freeplaneVersionFrom" VALUE="vv1.8.0"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
<attribute NAME="updateUrl" VALUE="https://raw.githubusercontent.com/EdoFro/Freeplane_Apache_Groovy_Documentation_To_Map/main/apacheGroovyDocToMap/version.properties"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The homepage of this add-on should be set as the link of the root node.
    </p>
    <p>
      The basic properties of this add-on. They can be used in script names and other attributes, e.g. &quot;${name}.groovy&quot;.
    </p>
    <ul>
      <li>
        name: The name of the add-on, normally a technically one (no spaces, no special characters except _.-).
      </li>
      <li>
        author: Author's name(s) and (optionally) email adresses.
      </li>
      <li>
        version: Since it's difficult to protect numbers like 1.0 from Freeplane's number parser it's advised to prepend a 'v' to the number, e.g. 'v1.0'.
      </li>
      <li>
        freeplane-version-from: The oldest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too old.
      </li>
      <li>
        freeplane-version-to: Normally empty: The newest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too new.
      </li>
      <li>
        updateUrl: URL of the file containing information (version, download url) on the latest version of this add-on. By default: &quot;${homepage}/version.properties&quot;
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="description" POSITION="left" ID="ID_1961542267" CREATED="1611689719908" MODIFIED="1611689742245">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Description would be awkward to edit as an attribute.
    </p>
    <p>
      So you have to put the add-on description as a child of the <i>'description'</i>&nbsp;node.
    </p>
    <p>
      To translate the description you have to define a translation for the key 'addons.${name}.description'.
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_516188483" CREATED="1611689719908" MODIFIED="1611689719908"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This AddOn gives you the possibility to import the desired topic of the <a href="https://groovy-lang.org/documentation.html">Apache Groovy documentation</a>&nbsp;as a new branch into the active Mindmap.
    </p>
    <p>
      This way you can add your own notes, examples and tips when learning Groovy scripting.
    </p>
    <p>
      
    </p>
    <p>
      Hope it helps!
    </p>
    <p>
      
    </p>
    <p>
      edo
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="changes" FOLDED="true" POSITION="left" ID="ID_1959275827" CREATED="1611689719908" MODIFIED="1611689742249">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Change log of this add-on: append one node for each noteworthy version and put the details for each version into a child node.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="v0.1" ID="ID_1175788363" CREATED="1611689719908" MODIFIED="1611689719908">
<node TEXT="initial release" ID="ID_946188466" CREATED="1611689719908" MODIFIED="1611689719908"/>
</node>
</node>
<node TEXT="license" FOLDED="true" POSITION="left" ID="ID_1558324697" CREATED="1611689719908" MODIFIED="1611689742254">
<edge COLOR="#00ff00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The add-ons's license that the user has to accept before she can install it.
    </p>
    <p>
      
    </p>
    <p>
      The License text has to be entered as a child of the <i>'license'</i>&nbsp;node, either as plain text or as HTML.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="&#xa;This add-on is free software: you can redistribute it and/or modify&#xa;it under the terms of the GNU General Public License as published by&#xa;the Free Software Foundation, either version 2 of the License, or&#xa;(at your option) any later version.&#xa;&#xa;This program is distributed in the hope that it will be useful,&#xa;but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the&#xa;GNU General Public License for more details.&#xa;" ID="ID_669449" CREATED="1611689719908" MODIFIED="1611689719908"/>
</node>
<node TEXT="preferences.xml" POSITION="left" ID="ID_654321058" CREATED="1611689719908" MODIFIED="1611689742260">
<edge COLOR="#ff00ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000" face="SansSerif, sans-serif">The child node contains the add-on configuration as an extension to mindmapmodemenu.xml (in Tools-&gt;Preferences-&gt;Add-ons). </font>
    </p>
    <p>
      <font color="#000000" face="SansSerif, sans-serif">Every property in the configuration should receive a default value in <i>default.properties</i>&nbsp;node.</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="default.properties" POSITION="left" ID="ID_962465616" CREATED="1611689719908" MODIFIED="1611689742265">
<edge COLOR="#00ffff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      These properties are used for:
    </p>
    <ul>
      <li>
        Each property defined in the preferences should have a default value in the attributes of this node.
      </li>
      <li>
        For each menu item with an icon add an attribute with the icon key (use developer tool menuItemInfo) as key and the icon path as value. Example: '${name}.icon': '/images/${name}-icon.png'
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node TEXT="translations" FOLDED="true" POSITION="left" ID="ID_1888964132" CREATED="1611689719908" MODIFIED="1611689742269">
<edge COLOR="#7c0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The translation keys that this script uses. Define one child node per supported locale. The attributes contain the translations. Define at least
    </p>
    <ul>
      <li>
        'addons.${name}' for the add-on's name
      </li>
      <li>
        'addons.${name}.description' for the description, e.g. in the add-on overview dialog (not necessary for English)
      </li>
      <li>
        'addons.${name}.&lt;scriptname&gt;' for each script since it will be the menu title.
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="en" ID="ID_1273265815" CREATED="1611689719908" MODIFIED="1611689719908">
<attribute_layout NAME_WIDTH="162 pt" VALUE_WIDTH="162 pt"/>
<attribute NAME="addons.${name}" VALUE="Apache Groovy Doc to Map"/>
<attribute NAME="addons.${name}.ImportGroovyDoc" VALUE="Import Groovy Documentation Topic as a branch"/>
</node>
</node>
<node TEXT="deinstall" POSITION="left" ID="ID_158316487" CREATED="1611689719908" MODIFIED="1611689742274">
<edge COLOR="#00007c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      List of files and/or directories to remove on uninstall
    </p>
  </body>
</html>
</richcontent>
<attribute_layout NAME_WIDTH="45.75 pt" VALUE_WIDTH="299.99999 pt"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}.script.xml"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/ImportGroovyDoc.groovy"/>
</node>
<node TEXT="scripts" POSITION="right" ID="ID_864831091" CREATED="1611689719909" MODIFIED="1611689742280">
<edge COLOR="#007c00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain multiple scripts. The node text defines the script name (e.g. insertInlineImage.groovy). The name must have a suffix of a supported script language like .groovy or .js and may only consist of letters and digits. The script properties have to be configured via attributes:
    </p>
    <p>
      
    </p>
    <p>
      * menuLocation: &lt;locationkey&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- Defines the menu location, defaults a sub menu 'main_menu_scripting/addons.${name}'.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;-&nbsp;Use developer tool menuItemInfo to inspect menu location keys.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * menuTitleKey: &lt;key&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- The menu item title will be looked up under the translation key &lt;key&gt; - don't forget to define its translation.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * executionMode: &lt;mode&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- The execution mode as described in the Freeplane wiki (http://freeplane.sourceforge.net/wiki/index.php/Scripting)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- ON_SINGLE_NODE: Execute the script once. The <i>node</i>&nbsp;variable is set to the selected node.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- ON_SELECTED_NODE: Execute the script n times for n selected nodes, once for each node.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- ON_SELECTED_NODE_RECURSIVELY: Execute the script on every selected node and recursively on all of its children.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- In doubt use ON_SINGLE_NODE.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * keyboardShortcut: &lt;shortcut&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- Optional: keyboard combination / accelerator for this script, e.g. control alt I
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- Use lowercase letters for modifiers and uppercase for letters. Use no + signs.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- The available key names are listed at http://download.oracle.com/javase/1.4.2/docs/api/java/awt/event/KeyEvent.html#VK_0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In the list only entries with a 'VK_' prefix count. Omit the prefix in the shortcut definition.
    </p>
    <p>
      
    </p>
    <p>
      * Permissions&nbsp;that the script(s) require, each either false or true:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_asking
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_file_restriction: permission to read files
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_write_restriction: permission to create/change/delete files
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_exec_restriction: permission to execute other programs
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_network_restriction: permission to access the network
    </p>
    <p>
      &nbsp;&nbsp;Notes:
    </p>
    <p>
      &nbsp;&nbsp;- The set of permissions is fixed.
    </p>
    <p>
      &nbsp;&nbsp;- Don't change the attribute names, don't omit one.
    </p>
    <p>
      &nbsp;&nbsp;- Set the values either to true or to false
    </p>
    <p>
      &nbsp;&nbsp;- In any case set execute_scripts_without_asking to true unless you want to annoy users.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="ImportGroovyDoc.groovy" FOLDED="true" ID="ID_1699461725" CREATED="1611689719909" MODIFIED="1611689719909">
<attribute_layout NAME_WIDTH="202.49999 pt" VALUE_WIDTH="202.49999 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.ImportGroovyDoc"/>
<attribute NAME="menuLocation" VALUE="/menu_bar/edoTools/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="true"/>
<node TEXT="@Grab(&apos;org.jsoup:jsoup:1.13.1&apos;)&#xa;import org.jsoup.Jsoup&#xa;import org.jsoup.nodes.Document&#xa;import java.io.File&#xa;import javax.swing.JOptionPane&#xa;&#xa;def nodo = node&#xa;&#xa;def baseUrl = &quot;https://groovy-lang.org/&quot;&#xa;&#xa;Document doc&#xa;if (true){&#xa;    String url = &quot;https://groovy-lang.org/documentation.html&quot;&#xa;    doc = org.jsoup.Jsoup.connect(url).get()&#xa;} else {&#xa;    def inputFile = &quot;C:/Temp/sacando groovy scripts de página web/documentation.html&quot;&#xa;    File input = new File(inputFile)&#xa;    doc = Jsoup.parse(input, &quot;UTF-8&quot;, &quot;&quot;)&#xa;}&#xa;&#xa;def headers = doc.getElementById(&apos;content&apos;).getElementsByTag(&apos;h2&apos;)&#xa;String[] options = headers*.text()&#xa;def group = showInputDialogList(options,&apos;Apache Groovy documentation&apos;,&apos;Please select a topic&apos;,1)&#xa;&#xa;def topics = doc.getElementById(&apos;content&apos;).getElementsByTag(&apos;h2&apos;)[group].parent().getElementsByTag(&apos;li&apos;).flatten()&#xa;String[] titles = topics*.text()&#xa;def urls = topics*.getElementsByTag(&apos;a&apos;)*.attr(&apos;href&apos;).collect{ baseUrl + it}&#xa;// return urls&#xa;&#xa;String url =  urls[showInputDialogList(titles,&apos;Apache Groovy documentation&apos;,&apos;Please select a subtopic&apos;)]&#xa;// return url&#xa;&#xa;doc = org.jsoup.Jsoup.connect(url).get()&#xa;// return doc&#xa;def contenido = doc.getElementsByTag(&apos;h1&apos;)[0].parent()&#xa;&#xa;traducirSect2(contenido,nodo,0)&#xa;&#xa;&#xa;def traducirSect2(s2,n,i){&#xa;    def ndo = n&#xa;    def ndo2&#xa;    def j=0&#xa;    s2.children().each{ e -&gt;&#xa;        switch (e.tag().toString()){&#xa;            case &quot;h${i+1}&quot;:&#xa;                titulo = e.text()&#xa;                ndo = n.createChild(&quot;&lt;html&gt;${e.outerHtml()}&lt;/html&gt;&quot;)&#xa;                //ndo.style.name = &apos;styles.topic&apos;&#xa;                //ndo.folded = true&#xa;                //c.statusInfo = titulo&#xa;                break;&#xa;            case &quot;div&quot;:&#xa;                switch (e.className().toString()){&#xa;                    case &apos;paragraph&apos;:&#xa;                        ndo2 = ndo.createChild()&#xa;                       // ndo2.text = e.text()&#xa;                        ndo2.text =&quot;&lt;html&gt;${e.html()}&lt;/html&gt;&quot;&#xa;                        break&#xa;                    case &apos;listingblock&apos;:&#xa;                        def gr = e.getElementsByTag(&quot;code&quot;)[0]&#xa;                        def lang = gr.attr(&quot;data-lang&quot;)&#xa;                        gr.getElementsByTag(&apos;b&apos;).each{it.prepend(&quot;    //___note_&quot;).append(&quot;___&quot;)}&#xa;                        ndo2 = ndo.createChild( &quot;${titulo} - ${++j}&quot;) //&lt;code class=&quot;language-groovy&quot; data-lang=&quot;groovy&quot;&gt;&#xa;                        ndo2.note = gr.text()&#xa;                        //ndo2.note = &quot;&lt;html&gt;${gr.outerHtml()}&lt;/html&gt;&quot;&#xa;                        ndo2.details =&quot;.${lang}&quot;&#xa;                        break&#xa;                    case &apos;&apos;:&#xa;                        switch(e.id().toString()){&#xa;                            case &apos;preamble&apos;:&#xa;                                traducirSect2(e,ndo,i)&#xa;                                break&#xa;                        }&#xa;                        break&#xa;                    case &apos;sectionbody&apos;:&#xa;                        // ndo.folded = true&#xa;                        traducirSect2(e,ndo,i)&#xa;                        break&#xa;                    case ~/sect\d/:&#xa;                        // ndo.folded = true&#xa;                        traducirSect2(e,ndo,i+1)&#xa;                        break&#xa;                    case &apos;colist arabic&apos;:&#xa;                        e.getElementsByTag(&apos;tr&apos;)eachWithIndex{ ele,k -&gt;&#xa;                            // ndo2.createChild(ele.text()).icons.add(&quot;emoji-1F535&quot;) //&quot;&lt;html&gt;${e.html()}&lt;/html&gt;&quot;&#xa;                            // ndo2.createChild(ele.text()).icons.add(&quot;full-${k+1}&quot;) //&quot;&lt;html&gt;${e.html()}&lt;/html&gt;&quot;&#xa;                            ndo2.createChild(&quot;&lt;html&gt;${ele.outerHtml()}&lt;/html&gt;&quot;)   //.icons.add(&quot;full-${k+1}&quot;)&#xa;                        }&#xa;                    case &apos;ulist&apos;:&#xa;                        e.getElementsByTag(&apos;li&apos;)each{&#xa;                            // ndo2.createChild(it.text()) //&quot;&lt;html&gt;${e.html()}&lt;/html&gt;&quot;&#xa;                            ndo2.createChild(&quot;&lt;html&gt;${it.html()}&lt;/html&gt;&quot;).icons.add(&apos;emoji-1F539&apos;) //&quot;&lt;html&gt;${e.html()}&lt;/html&gt;&quot;&#xa;                        }&#xa;                        ndo2.icons.add(&quot;list&quot;)&#xa;                        break&#xa;                    case &apos;admonitionblock note&apos;:&#xa;                        def aN = e.getElementsByClass(&quot;content&quot;)&#xa;                        def ndo3 = ndo.createChild(&quot;&lt;html&gt;${aN.html()}&lt;/html&gt;&quot;)&#xa;                        ndo3.icons.add(&quot;clock2&quot;)&#xa;                        break&#xa;                    case &apos;admonitionblock tip&apos;:&#xa;                        def aN = e.getElementsByClass(&quot;content&quot;)&#xa;                        def ndo3 = ndo.createChild(&quot;&lt;html&gt;${aN.html()}&lt;/html&gt;&quot;)&#xa;                        ndo3.icons.add(&quot;idea&quot;)&#xa;                        break&#xa;                    case &apos;admonitionblock warning&apos;:&#xa;                        def aN = e.getElementsByClass(&quot;content&quot;)&#xa;                        def ndo3 = ndo.createChild(&quot;&lt;html&gt;${aN.html()}&lt;/html&gt;&quot;)&#xa;                        ndo3.icons.add(&quot;messagebox_warning&quot;)&#xa;                        break&#xa;                    default:&#xa;                        ndo.createChild(e.className().toString()).style.name = &quot;Tarea pendiente&quot;&#xa;                        break&#xa;                }&#xa;                break;&#xa;            case &apos;table&apos;:&#xa;                def titulo = e.getElementsByClass(&quot;title&quot;).text()?:&apos;Table&apos;&#xa;                ndo2 = ndo.createChild(titulo)&#xa;                //ndo.note = &quot;&lt;html&gt;${e.html()}&lt;/html&gt;&quot;&#xa;                ndo2.createChild(&quot;&lt;html&gt;${e.outerHtml()}&lt;/html&gt;&quot;)&#xa;                ndo2.icons.add(&quot;attach&quot;)&#xa;                break&#xa;            default:&#xa;                n.createChild(e.tag().toString()).style.name = &quot;Tarea pendiente&quot;&#xa;                break&#xa;        }&#xa;    }&#xa;    ndo.folded = true&#xa;}&#xa;&#xa;//region: UI&#xa;&#xa;    def showInputDialogList(String[] options, String title = &apos;Input dialog&apos;,String question = &apos;Please select an option&apos;,int defaultOption = 0){&#xa;        String result = (String)JOptionPane.showInputDialog(&#xa;           null,&#xa;           question,&#xa;           title,&#xa;           JOptionPane.QUESTION_MESSAGE,&#xa;           null,&#xa;           options,&#xa;           options[defaultOption]&#xa;        )&#xa;        return (options as ArrayList).indexOf(result)&#xa;    }&#xa;&#xa;//end" ID="ID_611276706" CREATED="1611689764655" MODIFIED="1611689764661"/>
</node>
</node>
<node TEXT="lib" POSITION="right" ID="ID_1387366621" CREATED="1611689719909" MODIFIED="1611689742316">
<edge COLOR="#7c007c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing binary files (normally .jar files) to be added to the add-on's classpath.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The immediate child nodes contain the name of the file, e.g. 'mysql-connector-java-5.1.25.jar'). Put the file into a 'lib' subdirectory of the add-on base directory.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The child nodes of these nodes contain the actual files.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- Any lib file will be extracted in &lt;installationbase&gt;/&lt;addonname&gt;/lib.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="zips" POSITION="right" ID="ID_1834259806" CREATED="1611689719909" MODIFIED="1611689742323">
<edge COLOR="#007c7c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing zip files.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The immediate child nodes contain a description of the zip. The devtools script releaseAddOn.groovy allows automatic zip creation if the name of this node matches a directory in the current directory.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The child nodes of these nodes contain the actual zip files.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- Any zip file will be extracted in the &lt;installationbase&gt;. Currently, &lt;installationbase&gt; is always Freeplane's &lt;userhome&gt;, e.g. ~/.freeplane/1.3.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="images" POSITION="right" ID="ID_906656687" CREATED="1611689719909" MODIFIED="1611689742328">
<edge COLOR="#7c7c00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may define any number of images as child nodes of the images node. The actual image data has to be placed as base64 encoded binary data into the text of a subnode.
    </p>
    <p>
      The images are saved to the <i>${installationbase}/resources/images</i>&nbsp;directory.
    </p>
    <p>
      
    </p>
    <p>
      The following images should be present:
    </p>
    <ul>
      <li>
        <i>${name}-icon.png</i>, like <i>oldicons-theme-icon.png</i>. This will be used in the app-on overview.
      </li>
      <li>
        <i>${name}-screenshot-1.png</i>, like <i>oldicons-theme-screenshot-1.png</i>. This will be used in the app-on details dialog. Further images can be included but they are not used yet.
      </li>
    </ul>
    <p>
      Images can be added automatically by releaseAddOn.groovy or must be uploaded into the map via the script <i>Tools-&gt;Scripts-&gt;Insert Binary</i>&nbsp;since they have to be (base64) encoded as simple strings.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</map>

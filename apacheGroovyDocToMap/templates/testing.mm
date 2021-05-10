<map version="freeplane 1.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node LOCALIZED_TEXT="new_mindmap" FOLDED="false" ID="ID_696401721" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle" background="#f9f9f8">
    <conditional_styles>
        <conditional_style ACTIVE="true" STYLE_REF="file" LAST="false">
            <script_condition>
                <script>{node.link?.uri?.scheme == &apos;file&apos;}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="modifiedFile" LAST="false">
            <attribute_contains_condition ATTRIBUTE="modifiedFile" VALUE="true"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file_folder" LAST="false">
            <script_condition>
                <script>{node.link?.uri?.scheme == &apos;file&apos; &amp;&amp; (node.link.file?.exists()? node.link.file.directory : node.link.uri.path?.reverse()[0] == &apos;/&apos;)}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file_folder_with_icon" LAST="false">
            <conjunct_condition>
                <style_contains_condition TEXT="file_folder"/>
                <script_condition>
                    <script>import org.freeplane.core.util.FreeplaneVersion&#xd;
return (c.freeplaneVersion &lt; FreeplaneVersion.getVersion(&quot;1.9.0&quot;) || !(node.link?.uri?.scheme == &apos;file&apos;) )</script>
                </script_condition>
            </conjunct_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="GroovyNode" LAST="false">
            <script_condition>
                <script>try { edofro.wikdshellextension.WSE.isGroovyNode(node) } catch(e) { false }</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="Warning" LAST="false">
            <node_contains_condition VALUE=".EXIT_ON_CLOSE" ITEM="filter_any_text"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="hasGroovyNode" LAST="false">
            <script_condition>
                <script>(node.findAll() - node).any{
    edofro.wikdshellextension.WSE.isGroovyNode(it)
}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="false" STYLE_REF="hasGroovyNode" LAST="false">
            <script_condition>
                <script>node.children.any{edofro.wikdshellextension.WSE.isGroovyNode(it) || it.hasStyle(&apos;hasGroovyNode&apos;)}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="BotonMenu" LAST="false">
            <hyper_link_contains TEXT="menuitem:"/>
        </conditional_style>
        <conditional_style ACTIVE="false" STYLE_REF="Siguiente tarea" LAST="false">
            <script_condition>
                <script>node.children.any{it.hasStyle(&apos;Siguiente tarea&apos;)}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="contieneSigTareas" LAST="true">
            <script_condition>
                <script>(node.findAll() - node)?.any{it.hasStyle(&apos;Siguiente tarea&apos;)} </script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="contieneTareaPend" LAST="false">
            <script_condition>
                <script>(node.findAll() - node)?.any{it.hasStyle(&apos;Tarea pendiente&apos;)} </script>
            </script_condition>
        </conditional_style>
    </conditional_styles>
    <properties .addon.mm="file" show_icon_for_attributes="true" fit_to_viewport="false" show_note_icons="true" followedMapLastTime="1616419839141" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" followedMapLocation="file:/C:/Users/Edo/AppData/Roaming/Freeplane/1.9.x/templates/vis01%20light_nord_template%20vEdo.mm" mapUsesOwnSaveOptions="true" save_folding="save_folding_if_map_is_changed" save_last_visited_node="default" save_modification_times="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" ID="ID_118736178" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_506805493" ICON_SIZE="12 pt" FORMAT_AS_HYPERLINK="false" COLOR="#484747" BACKGROUND_COLOR="#efefef" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#8fbcbb" BORDER_DASH_LIKE_EDGE="true" BORDER_DASH="SOLID" VGAP_QUANTITY="2 px">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#bf5d3f" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_506805493" STARTINCLINATION="45 pt;-14.25 pt;" ENDINCLINATION="57 pt;30 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="Dialog" SIZE="10" BOLD="false" STRIKETHROUGH="false" ITALIC="false"/>
<edge STYLE="horizontal" COLOR="#2e3440" WIDTH="1" DASH="SOLID"/>
<richcontent CONTENT-TYPE="plain/auto" TYPE="DETAILS"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details" ID="ID_861824498" COLOR="#006666" BACKGROUND_COLOR="#a5cece" BACKGROUND_ALPHA="204" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#f0f0f0" BORDER_DASH_LIKE_EDGE="true">
<font NAME="Lucida Sans" SIZE="8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes" ID="ID_199621123">
<font NAME="Lucida Sans" SIZE="8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" ID="ID_810825098" COLOR="#004600" BACKGROUND_COLOR="#e8e8c8" TEXT_ALIGN="LEFT">
<icon BUILTIN="clock2"/>
<font NAME="Consolas" SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.floating" ID="ID_608497754">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" COLOR="#eceff4" BACKGROUND_COLOR="#bf616a" STYLE="bubble" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#bf616a"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_915433779" BORDER_COLOR="#bf616a">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#bf616a" TRANSPARENCY="255" DESTINATION="ID_915433779"/>
<font NAME="Ubuntu" SIZE="14"/>
<edge COLOR="#bf616a"/>
</stylenode>
<stylenode TEXT="GroovyNode" ID="ID_1733786247" BACKGROUND_COLOR="#66cccc" STYLE="rectangle">
<icon BUILTIN="emoji-1F951"/>
<font NAME="Consolas"/>
</stylenode>
<stylenode TEXT="Warning" ID="ID_563989319" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="6 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#990000">
<icon BUILTIN="closed"/>
</stylenode>
<stylenode TEXT="hasGroovyNode" ID="ID_1499912535">
<icon BUILTIN="emoji-1F951"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.topic" ID="ID_1660990374" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" ID="ID_855774355" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" ID="ID_1556400490" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode TEXT="Siguiente tarea" ID="ID_136394413" BACKGROUND_COLOR="#ffff33">
<icon BUILTIN="yes"/>
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="Tarea pendiente" ID="ID_1099697471" BACKGROUND_COLOR="#99ffff">
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="Tarea finalizada" ID="ID_852059680" COLOR="#333333" BACKGROUND_COLOR="#cccccc">
<icon BUILTIN="checked"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="Tarea Descartada" ID="ID_1504583752" COLOR="#666666" BACKGROUND_COLOR="#cccccc">
<icon BUILTIN="Descartado"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="contieneSigTareas" ID="ID_1357840131" BACKGROUND_COLOR="#eaea86">
<icon BUILTIN="emoji-1F7E5"/>
</stylenode>
<stylenode TEXT="contieneTareaPend" ID="ID_295943573" BACKGROUND_COLOR="#b5d7d7">
<icon BUILTIN="emoji-23F9"/>
</stylenode>
<stylenode TEXT="header" ID="ID_695227403" MAX_WIDTH="10 cm" MIN_WIDTH="10 cm">
<font SIZE="16" BOLD="true" ITALIC="false"/>
</stylenode>
<stylenode TEXT="paragraph" ID="ID_1479019966" MAX_WIDTH="10 cm" MIN_WIDTH="10 cm" FORMAT="markdownPatternFormat"/>
<stylenode TEXT="listingblock" ID="ID_1932930386" BACKGROUND_COLOR="#66ffff" STYLE="rectangle" SHAPE_HORIZONTAL_MARGIN="10 px" SHAPE_VERTICAL_MARGIN="6 px" MAX_WIDTH="20 cm" MIN_WIDTH="10 cm" BORDER_WIDTH="3 px" BORDER_COLOR="#416d6c" BORDER_DASH_LIKE_EDGE="false" BORDER_DASH="SOLID">
<font NAME="Consolas"/>
</stylenode>
<stylenode TEXT="title" ID="ID_1640202410" COLOR="#18898b" STYLE="fork" MIN_WIDTH="10 cm">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode TEXT="colist arabic" ID="ID_1067268293" MAX_WIDTH="10 cm" MIN_WIDTH="10 cm" FORMAT="markdownPatternFormat">
<icon BUILTIN="emoji-25AA"/>
</stylenode>
<stylenode TEXT="ulist" ID="ID_1619941682" MAX_WIDTH="10 cm" MIN_WIDTH="10 cm" FORMAT="markdownPatternFormat">
<icon BUILTIN="emoji-1F538"/>
</stylenode>
<stylenode TEXT="olist arabic" ID="ID_292928144" MAX_WIDTH="10 cm" MIN_WIDTH="10 cm" FORMAT="markdownPatternFormat">
<icon BUILTIN="emoji-1F539"/>
</stylenode>
<stylenode TEXT="admonitionblock note" ID="ID_1903970667" ICON_SIZE="20 pt" BACKGROUND_COLOR="#f5f5a2" STYLE="rectangle" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" FORMAT="markdownPatternFormat" MIN_WIDTH="10 cm">
<icon BUILTIN="emoji-1F4DD"/>
</stylenode>
<stylenode TEXT="admonitionblock tip" ID="ID_784654658" ICON_SIZE="20 pt" BACKGROUND_COLOR="#f5f5a2" STYLE="rectangle" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" FORMAT="markdownPatternFormat" MIN_WIDTH="10 cm">
<icon BUILTIN="emoji-1F50D"/>
</stylenode>
<stylenode TEXT="admonitionblock warning" ID="ID_71057850" ICON_SIZE="20 pt" BACKGROUND_COLOR="#f5f5a2" STYLE="rectangle" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" FORMAT="markdownPatternFormat" MIN_WIDTH="10 cm">
<icon BUILTIN="emoji-26A0"/>
</stylenode>
<stylenode TEXT="admonitionblock important" ID="ID_862227581" ICON_SIZE="20 pt" BACKGROUND_COLOR="#f5f5a2" STYLE="rectangle" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" FORMAT="markdownPatternFormat" MIN_WIDTH="10 cm">
<icon BUILTIN="emoji-203C"/>
</stylenode>
<stylenode TEXT="admonitionblock caution" ID="ID_1696769276" ICON_SIZE="20 pt" BACKGROUND_COLOR="#f5f5a2" STYLE="rectangle" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" FORMAT="markdownPatternFormat" MIN_WIDTH="10 cm">
<icon BUILTIN="emoji-1F6A7"/>
</stylenode>
<stylenode TEXT="table" ID="ID_1188869015" MIN_WIDTH="10 cm">
<icon BUILTIN="emoji-1F4CF"/>
</stylenode>
<stylenode TEXT="dt" ID="ID_146293452" MIN_WIDTH="10 cm">
<icon BUILTIN="emoji-1F980"/>
</stylenode>
<stylenode TEXT="dd" ID="ID_1791947919" MIN_WIDTH="10 cm">
<icon BUILTIN="emoji-1F965"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" ID="ID_1209359852" COLOR="#ffffff" BACKGROUND_COLOR="#484747" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt" TEXT_ALIGN="CENTER">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" ID="ID_144205114" COLOR="#eceff4" BACKGROUND_COLOR="#d08770" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" ID="ID_159773648" COLOR="#3b4252" BACKGROUND_COLOR="#ebcb8b">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#2e3440" BACKGROUND_COLOR="#a3be8c">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#2e3440" BACKGROUND_COLOR="#b48ead">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5" COLOR="#e5e9f0" BACKGROUND_COLOR="#5e81ac">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6" BACKGROUND_COLOR="#81a1c1">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7" BACKGROUND_COLOR="#88c0d0">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8" BACKGROUND_COLOR="#8fbcbb">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9" BACKGROUND_COLOR="#d8dee9">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10" BACKGROUND_COLOR="#e5e9f0">
<font SIZE="9"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="prueba 1" POSITION="right" ID="ID_411652371">
<node STYLE_REF="header" FOLDED="true" ID="ID_214390242"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Creating Swing UIs
  </body>
</html>

</richcontent>
<node TEXT="SwingBuilder allows you to create full-fledged Swing GUIs in a declarative and concise fashion. It accomplishes this by employing a common idiom in Groovy, builders. Builders handle the busywork of creating complex objects for you, such as instantiating children, calling Swing methods, and attaching these children to their parents. As a consequence, your code is much more readable and maintainable, while still allowing you access to the full range of Swing components." STYLE_REF="paragraph" ID="ID_388745398"/>
<node TEXT="Here’s a simple example of using SwingBuilder:" STYLE_REF="paragraph" ID="ID_359641889"/>
<node TEXT="import groovy.swing.SwingBuilder&#xd;&#xa;import java.awt.BorderLayout as BL&#xd;&#xa;&#xd;&#xa;count = 0&#xd;&#xa;new SwingBuilder().edt {&#xd;&#xa;  frame(title: &apos;Frame&apos;, size: [250, 75], show: true) {&#xd;&#xa;    borderLayout()&#xd;&#xa;    textlabel = label(text: &apos;Click the button!&apos;, constraints: BL.NORTH)&#xd;&#xa;    button(text:&apos;Click Me&apos;,&#xd;&#xa;         actionPerformed: {count++; textlabel.text = &quot;Clicked ${count} time(s).&quot;; println &quot;clicked&quot;}, constraints:BL.SOUTH)&#xd;&#xa;  }&#xd;&#xa;}" STYLE_REF="listingblock" ID="ID_99929516">
<node TEXT="Creating Swing UIs - 1" ID="ID_1984090579" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import groovy.swing.SwingBuilder
    </p>
    <p>
      import java.awt.BorderLayout as BL
    </p>
    <p>
      
    </p>
    <p>
      count = 0
    </p>
    <p>
      new SwingBuilder().edt {
    </p>
    <p>
      &nbsp;&nbsp;frame(title: 'Frame', size: [250, 75], show: true) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;borderLayout()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;textlabel = label(text: 'Click the button!', constraints: BL.NORTH)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;button(text:'Click Me',
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;actionPerformed: {count++; textlabel.text = &quot;Clicked ${count} time(s).&quot;; println &quot;clicked&quot;}, constraints:BL.SOUTH)
    </p>
    <p>
      &nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Here is what it will look like:" STYLE_REF="paragraph" ID="ID_788080329"/>
<node TEXT="SwingBuilder001" ID="ID_1102368040">
<hook URI="https://docs.groovy-lang.org/latest/html/documentation/assets/img/SwingBuilder001.png" SIZE="1.0" NAME="ExternalObject"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      div - imageblock
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="This hierarchy of components would normally be created through a series of repetitive instantiations, setters, and finally attaching this child to its respective parent. Using SwingBuilder, however, allows you to define this hierarchy in its native form, which makes the interface design understandable simply by reading the code." STYLE_REF="paragraph" ID="ID_321983460"/>
<node TEXT="The flexibility shown here is made possible by leveraging the many programming features built-in to Groovy, such as closures, implicit constructor calling, import aliasing, and string interpolation. Of course, these do not have to be fully understood in order to use SwingBuilder; as you can see from the code above, their uses are intuitive." STYLE_REF="paragraph" ID="ID_927087411"/>
<node TEXT="Here is a slightly more involved example, with an example of SwingBuilder code re-use via a closure." STYLE_REF="paragraph" ID="ID_1292297655"/>
<node TEXT="import groovy.swing.SwingBuilder&#xd;&#xa;import javax.swing.*&#xd;&#xa;import java.awt.*&#xd;&#xa;&#xd;&#xa;def swing = new SwingBuilder()&#xd;&#xa;&#xd;&#xa;def sharedPanel = {&#xd;&#xa;     swing.panel() {&#xd;&#xa;        label(&quot;Shared Panel&quot;)&#xd;&#xa;    }&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;count = 0&#xd;&#xa;swing.edt {&#xd;&#xa;    frame(title: &apos;Frame&apos;, defaultCloseOperation: JFrame.EXIT_ON_CLOSE, pack: true, show: true) {&#xd;&#xa;        vbox {&#xd;&#xa;            textlabel = label(&apos;Click the button!&apos;)&#xd;&#xa;            button(&#xd;&#xa;                text: &apos;Click Me&apos;,&#xd;&#xa;                actionPerformed: {&#xd;&#xa;                    count++&#xd;&#xa;                    textlabel.text = &quot;Clicked ${count} time(s).&quot;&#xd;&#xa;                    println &quot;Clicked!&quot;&#xd;&#xa;                }&#xd;&#xa;            )&#xd;&#xa;            widget(sharedPanel())&#xd;&#xa;            widget(sharedPanel())&#xd;&#xa;        }&#xd;&#xa;    }&#xd;&#xa;}" STYLE_REF="listingblock" ID="ID_1596245635">
<node TEXT="Creating Swing UIs - 2" ID="ID_922321392" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import groovy.swing.SwingBuilder
    </p>
    <p>
      import javax.swing.*
    </p>
    <p>
      import java.awt.*
    </p>
    <p>
      
    </p>
    <p>
      def swing = new SwingBuilder()
    </p>
    <p>
      
    </p>
    <p>
      def sharedPanel = {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;swing.panel() {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label(&quot;Shared Panel&quot;)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      count = 0
    </p>
    <p>
      swing.edt {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;frame(title: 'Frame', defaultCloseOperation: JFrame.EXIT_ON_CLOSE, pack: true, show: true) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vbox {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;textlabel = label('Click the button!')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;button(
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;text: 'Click Me',
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;actionPerformed: {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;count++
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;textlabel.text = &quot;Clicked ${count} time(s).&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;println &quot;Clicked!&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;widget(sharedPanel())
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;widget(sharedPanel())
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Here’s another variation that relies on observable beans and binding:" STYLE_REF="paragraph" ID="ID_918291479"/>
<node TEXT="import groovy.swing.SwingBuilder&#xd;&#xa;import groovy.beans.Bindable&#xd;&#xa;&#xd;&#xa;class MyModel {&#xd;&#xa;   @Bindable int count = 0&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;def model = new MyModel()&#xd;&#xa;new SwingBuilder().edt {&#xd;&#xa;  frame(title: &apos;Java Frame&apos;, size: [100, 100], locationRelativeTo: null, show: true) {&#xd;&#xa;    gridLayout(cols: 1, rows: 2)&#xd;&#xa;    label(text: bind(source: model, sourceProperty: &apos;count&apos;, converter: { v -&gt;  v? &quot;Clicked $v times&quot;: &apos;&apos;}))&#xd;&#xa;    button(&apos;Click me!&apos;, actionPerformed: { model.count++ })&#xd;&#xa;  }&#xd;&#xa;}" STYLE_REF="listingblock" ID="ID_856366127">
<node TEXT="Creating Swing UIs - 3" ID="ID_674162367" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import groovy.swing.SwingBuilder
    </p>
    <p>
      import groovy.beans.Bindable
    </p>
    <p>
      
    </p>
    <p>
      class MyModel {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;@Bindable int count = 0
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def model = new MyModel()
    </p>
    <p>
      new SwingBuilder().edt {
    </p>
    <p>
      &nbsp;&nbsp;frame(title: 'Java Frame', size: [100, 100], locationRelativeTo: null, show: true) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;gridLayout(cols: 1, rows: 2)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;label(text: bind(source: model, sourceProperty: 'count', converter: { v -&gt;&nbsp;&nbsp;v? &quot;Clicked $v times&quot;: ''}))
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;button('Click me!', actionPerformed: { model.count++ })
    </p>
    <p>
      &nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="@Bindable is one of the core AST Transformations. It generates all the required boilerplate code to turn a simple bean into an observable one. The bind() node creates appropriate PropertyChangeListeners that will update the interested parties whenever a PropertyChangeEvent is fired." STYLE_REF="paragraph" ID="ID_1412631205"/>
</node>
<node STYLE_REF="header" FOLDED="true" ID="ID_719045254"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Working with a relational database
  </body>
</html>

</richcontent>
<node TEXT="Groovy’s groovy-sql module provides a higher-level abstraction over Java’s JDBC technology. JDBC itself provides a lower-level but fairly comprehensive API which provides uniform access to a whole variety of supported relational database systems. We’ll use HSQLDB in our examples here but you can alternatively use Oracle, SQL Server, MySQL and a host of others. The most frequently used class within the groovy-sql module is the groovy.sql.Sql class which raises the JDBC abstractions up one level. We’ll cover that first." STYLE_REF="paragraph" ID="ID_1641700919"/>
<node STYLE_REF="header" FOLDED="true" ID="ID_403819880"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_connecting_to_the_database">
</a>1. Connecting to the database
  </body>
</html>

</richcontent>
<node TEXT="Connecting to a database with Groovy’s Sql class requires four pieces of information:" STYLE_REF="paragraph" ID="ID_1016421375"/>
<node TEXT="List" ID="ID_4462138">
<icon BUILTIN="list"/>
<node TEXT="The database uniform resource locator (URL)" STYLE_REF="ulist" ID="ID_1481877851"/>
<node TEXT="Username" STYLE_REF="ulist" ID="ID_1167847247"/>
<node TEXT="Password" STYLE_REF="ulist" ID="ID_1902687142"/>
<node TEXT="The driver class name (which can be derived automatically in some situations)" STYLE_REF="ulist" ID="ID_463925234"/>
</node>
<node TEXT="For our HSQLDB database, the values will be something like that shown in the following table:" STYLE_REF="paragraph" ID="ID_608805378"/>
<node TEXT="Table" STYLE_REF="table" ID="ID_1193959037"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      table
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    <style type="text/css">
      <!--
        body { font-family: Dialog; font-size: 10pt; color: #000000; background-color: #ffffff; text-align: left }
        p { margin-top: 0 }
        table { border-top-color: black; border-top-style: solid; border-top-width: 1px; border-right-color: black; border-right-style: solid; border-right-width: 1px; border-bottom-color: black; border-bottom-style: solid; border-bottom-width: 1px; border-left-color: black; border-left-style: solid; border-left-width: 1px }
        th { border-top-color: black; border-top-style: solid; border-top-width: 1px; border-right-color: black; border-right-style: solid; border-right-width: 1px; border-bottom-color: black; border-bottom-style: solid; border-bottom-width: 1px; border-left-color: black; border-left-style: solid; border-left-width: 1px }
        td { border-top-color: black; border-top-style: solid; border-top-width: 1px; border-right-color: black; border-right-style: solid; border-right-width: 1px; border-bottom-color: black; border-bottom-style: solid; border-bottom-width: 1px; border-left-color: black; border-left-style: solid; border-left-width: 1px }
      -->
    </style>
    
  </head>
  <body>
    <table class="tableblock frame-all grid-all spread">
      <colgroup>
      <col style="width: 50%"/>
      <col style="width: 50%"/>
      </colgroup>
      

      <tr>
        <th class="tableblock halign-left valign-top">
          Property
        </th>
        <th class="tableblock halign-left valign-top">
          Value
        </th>
      </tr>
      <tr>
        <td class="tableblock halign-left valign-top">
          <p class="tableblock">
            url
          </p>
        </td>
        <td class="tableblock halign-left valign-top">
          <p class="tableblock">
            <code>jdbc:hsqldb:mem:yourdb</code>
          </p>
        </td>
      </tr>
      <tr>
        <td class="tableblock halign-left valign-top">
          <p class="tableblock">
            user
          </p>
        </td>
        <td class="tableblock halign-left valign-top">
          <p class="tableblock">
            sa (or your <em>username</em>)
          </p>
        </td>
      </tr>
      <tr>
        <td class="tableblock halign-left valign-top">
          <p class="tableblock">
            password
          </p>
        </td>
        <td class="tableblock halign-left valign-top">
          <p class="tableblock">
            <em>yourPassword</em>
          </p>
        </td>
      </tr>
      <tr>
        <td class="tableblock halign-left valign-top">
          <p class="tableblock">
            driver
          </p>
        </td>
        <td class="tableblock halign-left valign-top">
          <p class="tableblock">
            <code>org.hsqldb.jdbcDriver</code>
          </p>
        </td>
      </tr>
    </table>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Consult the documentation for the JDBC driver that you plan to use to determine the correct values for your situation." STYLE_REF="paragraph" ID="ID_1448425875"/>
<node TEXT="The Sql class has a newInstance factory method which takes these parameters. You would typically use it as follows:" STYLE_REF="paragraph" ID="ID_1356117111"/>
<node TEXT="import groovy.sql.Sql&#xd;&#xa;&#xd;&#xa;def url = &apos;jdbc:hsqldb:mem:yourDB&apos;&#xd;&#xa;def user = &apos;sa&apos;&#xd;&#xa;def password = &apos;&apos;&#xd;&#xa;def driver = &apos;org.hsqldb.jdbcDriver&apos;&#xd;&#xa;def sql = Sql.newInstance(url, user, password, driver)&#xd;&#xa;&#xd;&#xa;// use &apos;sql&apos; instance ...&#xd;&#xa;&#xd;&#xa;sql.close()" STYLE_REF="listingblock" ID="ID_936973276">
<node TEXT="1. Connecting to the database - 1" ID="ID_83617460" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import groovy.sql.Sql
    </p>
    <p>
      
    </p>
    <p>
      def url = 'jdbc:hsqldb:mem:yourDB'
    </p>
    <p>
      def user = 'sa'
    </p>
    <p>
      def password = ''
    </p>
    <p>
      def driver = 'org.hsqldb.jdbcDriver'
    </p>
    <p>
      def sql = Sql.newInstance(url, user, password, driver)
    </p>
    <p>
      
    </p>
    <p>
      // use 'sql' instance ...
    </p>
    <p>
      
    </p>
    <p>
      sql.close()
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="If you don’t want to have to handle resource handling yourself (i.e. call close() manually) then you can use the withInstance variation as shown here:" STYLE_REF="paragraph" ID="ID_1705124556"/>
<node TEXT="Sql.withInstance(url, user, password, driver) { sql -&gt;&#xd;&#xa;  // use &apos;sql&apos; instance ...&#xd;&#xa;}" STYLE_REF="listingblock" ID="ID_565204265">
<node TEXT="1. Connecting to the database - 2" ID="ID_1063896951" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Sql.withInstance(url, user, password, driver) { sql -&gt;
    </p>
    <p>
      &nbsp;&nbsp;// use 'sql' instance ...
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node STYLE_REF="header" FOLDED="true" ID="ID_369436830"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_connecting_with_a_datasource">
</a>1.1. Connecting with a DataSource
  </body>
</html>

</richcontent>
<node TEXT="It is often preferred to use a DataSource. You may have one available to you from a connection pool. Here we’ll use the one provided as part of the HSQLDB driver jar as shown here:" STYLE_REF="paragraph" ID="ID_1034223179"/>
<node TEXT="import groovy.sql.Sql&#xd;&#xa;import org.hsqldb.jdbc.JDBCDataSource&#xd;&#xa;&#xd;&#xa;def dataSource = new JDBCDataSource(&#xd;&#xa;    database: &apos;jdbc:hsqldb:mem:yourDB&apos;, user: &apos;sa&apos;, password: &apos;&apos;)&#xd;&#xa;def sql = new Sql(dataSource)&#xd;&#xa;&#xd;&#xa;// use then close &apos;sql&apos; instance ..." STYLE_REF="listingblock" ID="ID_1375606852">
<node TEXT="1.1. Connecting with a DataSource - 1" ID="ID_974511857" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import groovy.sql.Sql
    </p>
    <p>
      import org.hsqldb.jdbc.JDBCDataSource
    </p>
    <p>
      
    </p>
    <p>
      def dataSource = new JDBCDataSource(
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;database: 'jdbc:hsqldb:mem:yourDB', user: 'sa', password: '')
    </p>
    <p>
      def sql = new Sql(dataSource)
    </p>
    <p>
      
    </p>
    <p>
      // use then close 'sql' instance ...
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="If you have your own connection pooling, the details will be different, e.g. for Apache Commons DBCP:" STYLE_REF="paragraph" ID="ID_1364393365"/>
<node TEXT="@Grab(&apos;commons-dbcp:commons-dbcp:1.4&apos;)&#xd;&#xa;import groovy.sql.Sql&#xd;&#xa;import org.apache.commons.dbcp.BasicDataSource&#xd;&#xa;&#xd;&#xa;def ds = new BasicDataSource(driverClassName: &quot;org.hsqldb.jdbcDriver&quot;,&#xd;&#xa;    url: &apos;jdbc:hsqldb:mem:yourDB&apos;, username: &apos;sa&apos;, password: &apos;&apos;)&#xd;&#xa;def sql = new Sql(ds)&#xd;&#xa;// use then close &apos;sql&apos; instance ..." STYLE_REF="listingblock" ID="ID_394636797">
<node TEXT="1.1. Connecting with a DataSource - 2" ID="ID_1415867061" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      @Grab('commons-dbcp:commons-dbcp:1.4')
    </p>
    <p>
      import groovy.sql.Sql
    </p>
    <p>
      import org.apache.commons.dbcp.BasicDataSource
    </p>
    <p>
      
    </p>
    <p>
      def ds = new BasicDataSource(driverClassName: &quot;org.hsqldb.jdbcDriver&quot;,
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;url: 'jdbc:hsqldb:mem:yourDB', username: 'sa', password: '')
    </p>
    <p>
      def sql = new Sql(ds)
    </p>
    <p>
      // use then close 'sql' instance ...
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node STYLE_REF="header" FOLDED="true" ID="ID_545590216"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_connecting_using_grab">
</a>1.2. Connecting using @Grab
  </body>
</html>

</richcontent>
<node TEXT="The previous examples assume that the necessary database driver jar is already on your classpath. For a self-contained script you can add @Grab statements to the top of the script to automatically download the necessary jar as shown here:" STYLE_REF="paragraph" ID="ID_89329166"/>
<node TEXT="@Grab(&apos;org.hsqldb:hsqldb:2.5.1&apos;)&#xd;&#xa;@GrabConfig(systemClassLoader=true)&#xd;&#xa;// create, use, and then close sql instance ..." STYLE_REF="listingblock" ID="ID_503426534">
<node TEXT="1.2. Connecting using @Grab - 1" ID="ID_1020376467" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      @Grab('org.hsqldb:hsqldb:2.5.1')
    </p>
    <p>
      @GrabConfig(systemClassLoader=true)
    </p>
    <p>
      // create, use, and then close sql instance ...
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="The @GrabConfig statement is necessary to make sure the system classloader is used. This ensures that the driver classes and system classes like java.sql.DriverManager are in the same classloader." STYLE_REF="paragraph" ID="ID_814485453"/>
</node>
</node>
<node STYLE_REF="header" FOLDED="true" ID="ID_867116195"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_executing_sql">
</a>2. Executing SQL
  </body>
</html>

</richcontent>
<node TEXT="You can execute arbitrary SQL commands using the execute() method. Let’s have a look at using it to create a table." STYLE_REF="paragraph" ID="ID_799107937"/>
<node STYLE_REF="header" FOLDED="true" ID="ID_175100220"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_creating_tables">
</a>2.1. Creating tables
  </body>
</html>

</richcontent>
<node TEXT="The simplest way to execute SQL is to call the execute() method passing the SQL you wish to execute as a String as shown here:" STYLE_REF="paragraph" ID="ID_1261837111"/>
<node TEXT="// ... create &apos;sql&apos; instance&#xd;&#xa;sql.execute &apos;&apos;&apos;&#xd;&#xa;  CREATE TABLE Author (&#xd;&#xa;    id          INTEGER GENERATED BY DEFAULT AS IDENTITY,&#xd;&#xa;    firstname   VARCHAR(64),&#xd;&#xa;    lastname    VARCHAR(64)&#xd;&#xa;  );&#xd;&#xa;&apos;&apos;&apos;&#xd;&#xa;// close &apos;sql&apos; instance ..." STYLE_REF="listingblock" ID="ID_1516660667">
<node TEXT="2.1. Creating tables - 1" ID="ID_1023184517" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // ... create 'sql' instance
    </p>
    <p>
      sql.execute '''
    </p>
    <p>
      &nbsp;&nbsp;CREATE TABLE Author (
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INTEGER GENERATED BY DEFAULT AS IDENTITY,
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;firstname&nbsp;&nbsp;&nbsp;VARCHAR(64),
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;lastname&nbsp;&nbsp;&nbsp;&nbsp;VARCHAR(64)
    </p>
    <p>
      &nbsp;&nbsp;);
    </p>
    <p>
      '''
    </p>
    <p>
      // close 'sql' instance ...
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="There is a variant of this method which takes a GString and another with a list of parameters. There are also other variants with similar names: executeInsert and executeUpdate. We’ll see examples of these variants in other examples in this section." STYLE_REF="paragraph" ID="ID_1191006221"/>
</node>
</node>
<node STYLE_REF="header" FOLDED="true" ID="ID_912570836"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_basic_crud_operations">
</a>3. Basic CRUD operations
  </body>
</html>

</richcontent>
<node TEXT="The basic operations on a database are Create, Read, Update and Delete (the so-called CRUD operations). We’ll examine each of these in turn." STYLE_REF="paragraph" ID="ID_437797847"/>
<node STYLE_REF="header" FOLDED="true" ID="ID_223754148"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_creating_inserting_data">
</a>3.1. Creating/Inserting data
  </body>
</html>

</richcontent>
<node TEXT="You can use the same execute() statement we saw earlier but to insert a row by using a SQL insert statement as follows:" STYLE_REF="paragraph" ID="ID_208566973"/>
<node TEXT="sql.execute &quot;INSERT INTO Author (firstname, lastname) VALUES (&apos;Dierk&apos;, &apos;Koenig&apos;)&quot;" STYLE_REF="listingblock" ID="ID_1410081114">
<node TEXT="3.1. Creating/Inserting data - 1" ID="ID_950497404" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      sql.execute &quot;INSERT INTO Author (firstname, lastname) VALUES ('Dierk', 'Koenig')&quot;
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="You can use a special executeInsert method instead of execute. This will return a list of all keys generated. Both the execute and executeInsert methods allow you to place &apos;?&apos; placeholders into your SQL string and supply a list of parameters. In this case a PreparedStatement is used which avoids any risk of SQL injection. The following example illustrates executeInsert using placeholders and parameters:" STYLE_REF="paragraph" ID="ID_1210602221"/>
<node TEXT="def insertSql = &apos;INSERT INTO Author (firstname, lastname) VALUES (?,?)&apos;&#xd;&#xa;def params = [&apos;Jon&apos;, &apos;Skeet&apos;]&#xd;&#xa;def keys = sql.executeInsert insertSql, params&#xd;&#xa;assert keys[0] == [1]" STYLE_REF="listingblock" ID="ID_1471903830">
<node TEXT="3.1. Creating/Inserting data - 2" ID="ID_1113379548" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def insertSql = 'INSERT INTO Author (firstname, lastname) VALUES (?,?)'
    </p>
    <p>
      def params = ['Jon', 'Skeet']
    </p>
    <p>
      def keys = sql.executeInsert insertSql, params
    </p>
    <p>
      assert keys[0] == [1]
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="In addition, both the execute and executeInsert methods allow you to use GStrings. Any &apos;$&apos; placeholders within the SQL are assumed to be placeholders. An escaping mechanism exists if you want to supply part of the GString with a variable in a position which isn’t where normal placeholders go within SQL. See the GroovyDoc for more details. Also, executeInsert allows you to supply a list of key column names, when multiple keys are returned and you are only interested in some of them. Here is a fragment illustrating key name specification and GStrings:" STYLE_REF="paragraph" ID="ID_1796741561"/>
<node TEXT="def first = &apos;Guillaume&apos;&#xd;&#xa;def last = &apos;Laforge&apos;&#xd;&#xa;def myKeyNames = [&apos;ID&apos;]&#xd;&#xa;def myKeys = sql.executeInsert &quot;&quot;&quot;&#xd;&#xa;  INSERT INTO Author (firstname, lastname)&#xd;&#xa;  VALUES (${first}, ${last})&#xd;&#xa;&quot;&quot;&quot;, myKeyNames&#xd;&#xa;assert myKeys[0] == [ID: 2]" STYLE_REF="listingblock" ID="ID_509524945">
<node TEXT="3.1. Creating/Inserting data - 3" ID="ID_789094744" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def first = 'Guillaume'
    </p>
    <p>
      def last = 'Laforge'
    </p>
    <p>
      def myKeyNames = ['ID']
    </p>
    <p>
      def myKeys = sql.executeInsert &quot;&quot;&quot;
    </p>
    <p>
      &nbsp;&nbsp;INSERT INTO Author (firstname, lastname)
    </p>
    <p>
      &nbsp;&nbsp;VALUES (${first}, ${last})
    </p>
    <p>
      &quot;&quot;&quot;, myKeyNames
    </p>
    <p>
      assert myKeys[0] == [ID: 2]
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node STYLE_REF="header" FOLDED="true" ID="ID_153701571"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_reading_rows">
</a>3.2. Reading rows
  </body>
</html>

</richcontent>
<node TEXT="Reading rows of data from the database is accomplished using one of several available methods: query, eachRow, firstRow and rows." STYLE_REF="paragraph" ID="ID_316567886"/>
<node TEXT="Use the query method if you want to iterate through the ResultSet returned by the underlying JDBC API as shown here:" STYLE_REF="paragraph" ID="ID_1915142805"/>
<node TEXT="def expected = [&apos;Dierk Koenig&apos;, &apos;Jon Skeet&apos;, &apos;Guillaume Laforge&apos;]&#xd;&#xa;&#xd;&#xa;def rowNum = 0&#xd;&#xa;sql.query(&apos;SELECT firstname, lastname FROM Author&apos;) { resultSet -&gt;&#xd;&#xa;  while (resultSet.next()) {&#xd;&#xa;    def first = resultSet.getString(1)&#xd;&#xa;    def last = resultSet.getString(&apos;lastname&apos;)&#xd;&#xa;    assert expected[rowNum++] == &quot;$first $last&quot;&#xd;&#xa;  }&#xd;&#xa;}" STYLE_REF="listingblock" ID="ID_601464">
<node TEXT="3.2. Reading rows - 1" ID="ID_1835877613" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def expected = ['Dierk Koenig', 'Jon Skeet', 'Guillaume Laforge']
    </p>
    <p>
      
    </p>
    <p>
      def rowNum = 0
    </p>
    <p>
      sql.query('SELECT firstname, lastname FROM Author') { resultSet -&gt;
    </p>
    <p>
      &nbsp;&nbsp;while (resultSet.next()) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def first = resultSet.getString(1)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def last = resultSet.getString('lastname')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;assert expected[rowNum++] == &quot;$first $last&quot;
    </p>
    <p>
      &nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Use the eachRow method if you want a slightly higher-level abstraction which provides a Groovy friendly map-like abstraction for the ResultSet as shown here:" STYLE_REF="paragraph" ID="ID_528449454"/>
<node TEXT="rowNum = 0&#xd;&#xa;sql.eachRow(&apos;SELECT firstname, lastname FROM Author&apos;) { row -&gt;&#xd;&#xa;  def first = row[0]&#xd;&#xa;  def last = row.lastname&#xd;&#xa;  assert expected[rowNum++] == &quot;$first $last&quot;&#xd;&#xa;}" STYLE_REF="listingblock" ID="ID_776054477">
<node TEXT="3.2. Reading rows - 2" ID="ID_1809481036" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      rowNum = 0
    </p>
    <p>
      sql.eachRow('SELECT firstname, lastname FROM Author') { row -&gt;
    </p>
    <p>
      &nbsp;&nbsp;def first = row[0]
    </p>
    <p>
      &nbsp;&nbsp;def last = row.lastname
    </p>
    <p>
      &nbsp;&nbsp;assert expected[rowNum++] == &quot;$first $last&quot;
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Note that you can use Groovy list-style and map-style notations when accessing the row of data." STYLE_REF="paragraph" ID="ID_1280608001"/>
<node TEXT="Use the firstRow method if you for similar functionality as eachRow but returning only one row of data as shown here:" STYLE_REF="paragraph" ID="ID_233367493"/>
<node TEXT="def first = sql.firstRow(&apos;SELECT lastname, firstname FROM Author&apos;)&#xd;&#xa;assert first.values().sort().join(&apos;,&apos;) == &apos;Dierk,Koenig&apos;" STYLE_REF="listingblock" ID="ID_270768424">
<node TEXT="3.2. Reading rows - 3" ID="ID_760152989" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def first = sql.firstRow('SELECT lastname, firstname FROM Author')
    </p>
    <p>
      assert first.values().sort().join(',') == 'Dierk,Koenig'
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Use the rows method if you want to process a list of map-like data structures as shown here:" STYLE_REF="paragraph" ID="ID_1531337434"/>
<node TEXT="List authors = sql.rows(&apos;SELECT firstname, lastname FROM Author&apos;)&#xd;&#xa;assert authors.size() == 3&#xd;&#xa;assert authors.collect { &quot;$it.FIRSTNAME ${it[-1]}&quot; } == expected" STYLE_REF="listingblock" ID="ID_1703434912">
<node TEXT="3.2. Reading rows - 4" ID="ID_1741858615" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      List authors = sql.rows('SELECT firstname, lastname FROM Author')
    </p>
    <p>
      assert authors.size() == 3
    </p>
    <p>
      assert authors.collect { &quot;$it.FIRSTNAME ${it[-1]}&quot; } == expected
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Note that the map-like abstraction has case-insensitive keys (hence we can use &apos;FIRSTNAME&apos; or &apos;firstname&apos; as the key) and also that -ve indices (a standard Groovy feature) works when using an index value (to count column numbers from the right)." STYLE_REF="paragraph" ID="ID_1783927650"/>
<node TEXT="You can also use any of the above methods to return scalar values, though typically firstRow is all that is required in such cases. An example returning the count of rows is shown here:" STYLE_REF="paragraph" ID="ID_1655889988"/>
<node TEXT="assert sql.firstRow(&apos;SELECT COUNT(*) AS num FROM Author&apos;).num == 3" STYLE_REF="listingblock" ID="ID_1506580204">
<node TEXT="3.2. Reading rows - 5" ID="ID_170417269" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      assert sql.firstRow('SELECT COUNT(*) AS num FROM Author').num == 3
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node STYLE_REF="header" FOLDED="true" ID="ID_33418184"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_updating_rows">
</a>3.3. Updating rows
  </body>
</html>

</richcontent>
<node TEXT="Updating rows can again be done using the execute() method. Just use a SQL update statement as the argument to the method. You can insert an author with just a lastname and then update the row to also have a firstname as follows:" STYLE_REF="paragraph" ID="ID_986700486"/>
<node TEXT="sql.execute &quot;INSERT INTO Author (lastname) VALUES (&apos;Thorvaldsson&apos;)&quot;&#xd;&#xa;sql.execute &quot;UPDATE Author SET firstname=&apos;Erik&apos; where lastname=&apos;Thorvaldsson&apos;&quot;" STYLE_REF="listingblock" ID="ID_1788312618">
<node TEXT="3.3. Updating rows - 1" ID="ID_1366030795" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      sql.execute &quot;INSERT INTO Author (lastname) VALUES ('Thorvaldsson')&quot;
    </p>
    <p>
      sql.execute &quot;UPDATE Author SET firstname='Erik' where lastname='Thorvaldsson'&quot;
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="There is also a special executeUpdate variant which returns the number of rows updated as a result of executing the SQL. For example, you can change the lastname of an author as follows:" STYLE_REF="paragraph" ID="ID_358251678"/>
<node TEXT="def updateSql = &quot;UPDATE Author SET lastname=&apos;Pragt&apos; where lastname=&apos;Thorvaldsson&apos;&quot;&#xd;&#xa;def updateCount = sql.executeUpdate updateSql&#xd;&#xa;assert updateCount == 1&#xd;&#xa;&#xd;&#xa;def row = sql.firstRow &quot;SELECT * FROM Author where firstname = &apos;Erik&apos;&quot;&#xd;&#xa;assert &quot;${row.firstname} ${row.lastname}&quot; == &apos;Erik Pragt&apos;" STYLE_REF="listingblock" ID="ID_917816660">
<node TEXT="3.3. Updating rows - 2" ID="ID_1362215223" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def updateSql = &quot;UPDATE Author SET lastname='Pragt' where lastname='Thorvaldsson'&quot;
    </p>
    <p>
      def updateCount = sql.executeUpdate updateSql
    </p>
    <p>
      assert updateCount == 1
    </p>
    <p>
      
    </p>
    <p>
      def row = sql.firstRow &quot;SELECT * FROM Author where firstname = 'Erik'&quot;
    </p>
    <p>
      assert &quot;${row.firstname} ${row.lastname}&quot; == 'Erik Pragt'
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node STYLE_REF="header" FOLDED="true" ID="ID_1783573075"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_deleting_rows">
</a>3.4. Deleting rows
  </body>
</html>

</richcontent>
<node TEXT="The execute method is also used for deleting rows as this example shows:" STYLE_REF="paragraph" ID="ID_944613616"/>
<node TEXT="assert sql.firstRow(&apos;SELECT COUNT(*) as num FROM Author&apos;).num == 3&#xd;&#xa;sql.execute &quot;DELETE FROM Author WHERE lastname = &apos;Skeet&apos;&quot;&#xd;&#xa;assert sql.firstRow(&apos;SELECT COUNT(*) as num FROM Author&apos;).num == 2" STYLE_REF="listingblock" ID="ID_1204849117">
<node TEXT="3.4. Deleting rows - 1" ID="ID_854542710" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      assert sql.firstRow('SELECT COUNT(*) as num FROM Author').num == 3
    </p>
    <p>
      sql.execute &quot;DELETE FROM Author WHERE lastname = 'Skeet'&quot;
    </p>
    <p>
      assert sql.firstRow('SELECT COUNT(*) as num FROM Author').num == 2
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node STYLE_REF="header" FOLDED="true" ID="ID_1998717495"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_advanced_sql_operations">
</a>4. Advanced SQL operations
  </body>
</html>

</richcontent>
<node STYLE_REF="header" FOLDED="true" ID="ID_436820292"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_working_with_transactions">
</a>4.1. Working with transactions
  </body>
</html>

</richcontent>
<node TEXT="The easiest way to perform database operations within a transaction is to include the database operation within a withTransaction closure as shown in the following example:" STYLE_REF="paragraph" ID="ID_1928454145"/>
<node TEXT="assert sql.firstRow(&apos;SELECT COUNT(*) as num FROM Author&apos;).num == 0&#xd;&#xa;sql.withTransaction {&#xd;&#xa;  sql.execute &quot;INSERT INTO Author (firstname, lastname) VALUES (&apos;Dierk&apos;, &apos;Koenig&apos;)&quot;&#xd;&#xa;  sql.execute &quot;INSERT INTO Author (firstname, lastname) VALUES (&apos;Jon&apos;, &apos;Skeet&apos;)&quot;&#xd;&#xa;}&#xd;&#xa;assert sql.firstRow(&apos;SELECT COUNT(*) as num FROM Author&apos;).num == 2" STYLE_REF="listingblock" ID="ID_585851548">
<node TEXT="4.1. Working with transactions - 1" ID="ID_246729144" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      assert sql.firstRow('SELECT COUNT(*) as num FROM Author').num == 0
    </p>
    <p>
      sql.withTransaction {
    </p>
    <p>
      &nbsp;&nbsp;sql.execute &quot;INSERT INTO Author (firstname, lastname) VALUES ('Dierk', 'Koenig')&quot;
    </p>
    <p>
      &nbsp;&nbsp;sql.execute &quot;INSERT INTO Author (firstname, lastname) VALUES ('Jon', 'Skeet')&quot;
    </p>
    <p>
      }
    </p>
    <p>
      assert sql.firstRow('SELECT COUNT(*) as num FROM Author').num == 2
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Here the database starts empty and has two rows after successful completion of the operation. Outside the scope of the transaction, the database is never seen as having just one row." STYLE_REF="paragraph" ID="ID_1231894384"/>
<node TEXT="If something goes wrong, any earlier operations within the withTransaction block are rolled back. We can see that in operation in the following example where we use database metadata (more details coming up shortly) to find the maximum allowable size of the firstname column and then attempt to enter a firstname one larger than that maximum value as shown here:" STYLE_REF="paragraph" ID="ID_898737376"/>
<node TEXT="def maxFirstnameLength&#xd;&#xa;def metaClosure = { meta -&gt; maxFirstnameLength = meta.getPrecision(1) }&#xd;&#xa;def rowClosure = {}&#xd;&#xa;def rowCountBefore = sql.firstRow(&apos;SELECT COUNT(*) as num FROM Author&apos;).num&#xd;&#xa;try {&#xd;&#xa;  sql.withTransaction {&#xd;&#xa;    sql.execute &quot;INSERT INTO Author (firstname) VALUES (&apos;Dierk&apos;)&quot;&#xd;&#xa;    sql.eachRow &quot;SELECT firstname FROM Author WHERE firstname = &apos;Dierk&apos;&quot;, metaClosure, rowClosure&#xd;&#xa;    sql.execute &quot;INSERT INTO Author (firstname) VALUES (?)&quot;, &apos;X&apos; * (maxFirstnameLength + 1)&#xd;&#xa;  }&#xd;&#xa;} catch(ignore) { println ignore.message }&#xd;&#xa;def rowCountAfter = sql.firstRow(&apos;SELECT COUNT(*) as num FROM Author&apos;).num&#xd;&#xa;assert rowCountBefore == rowCountAfter" STYLE_REF="listingblock" ID="ID_523162903">
<node TEXT="4.1. Working with transactions - 2" ID="ID_1174681163" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def maxFirstnameLength
    </p>
    <p>
      def metaClosure = { meta -&gt; maxFirstnameLength = meta.getPrecision(1) }
    </p>
    <p>
      def rowClosure = {}
    </p>
    <p>
      def rowCountBefore = sql.firstRow('SELECT COUNT(*) as num FROM Author').num
    </p>
    <p>
      try {
    </p>
    <p>
      &nbsp;&nbsp;sql.withTransaction {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;sql.execute &quot;INSERT INTO Author (firstname) VALUES ('Dierk')&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;sql.eachRow &quot;SELECT firstname FROM Author WHERE firstname = 'Dierk'&quot;, metaClosure, rowClosure
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;sql.execute &quot;INSERT INTO Author (firstname) VALUES (?)&quot;, 'X' * (maxFirstnameLength + 1)
    </p>
    <p>
      &nbsp;&nbsp;}
    </p>
    <p>
      } catch(ignore) { println ignore.message }
    </p>
    <p>
      def rowCountAfter = sql.firstRow('SELECT COUNT(*) as num FROM Author').num
    </p>
    <p>
      assert rowCountBefore == rowCountAfter
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Even though the first sql execute succeeds initially, it will be rolled back and the number of rows will remain the same." STYLE_REF="paragraph" ID="ID_906464790"/>
</node>
<node STYLE_REF="header" FOLDED="true" ID="ID_208772622"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_using_batches">
</a>4.2. Using batches
  </body>
</html>

</richcontent>
<node TEXT="When dealing with large volumes of data, particularly when inserting such data, it can be more efficient to chunk the data into batches. This is done using the withBatch statement as shown in the following example:" STYLE_REF="paragraph" ID="ID_411455772"/>
<node TEXT="sql.withBatch(3) { stmt -&gt;&#xd;&#xa;  stmt.addBatch &quot;INSERT INTO Author (firstname, lastname) VALUES (&apos;Dierk&apos;, &apos;Koenig&apos;)&quot;&#xd;&#xa;  stmt.addBatch &quot;INSERT INTO Author (firstname, lastname) VALUES (&apos;Paul&apos;, &apos;King&apos;)&quot;&#xd;&#xa;  stmt.addBatch &quot;INSERT INTO Author (firstname, lastname) VALUES (&apos;Guillaume&apos;, &apos;Laforge&apos;)&quot;&#xd;&#xa;  stmt.addBatch &quot;INSERT INTO Author (firstname, lastname) VALUES (&apos;Hamlet&apos;, &apos;D&apos;&apos;Arcy&apos;)&quot;&#xd;&#xa;  stmt.addBatch &quot;INSERT INTO Author (firstname, lastname) VALUES (&apos;Cedric&apos;, &apos;Champeau&apos;)&quot;&#xd;&#xa;  stmt.addBatch &quot;INSERT INTO Author (firstname, lastname) VALUES (&apos;Erik&apos;, &apos;Pragt&apos;)&quot;&#xd;&#xa;  stmt.addBatch &quot;INSERT INTO Author (firstname, lastname) VALUES (&apos;Jon&apos;, &apos;Skeet&apos;)&quot;&#xd;&#xa;}" STYLE_REF="listingblock" ID="ID_1572131805">
<node TEXT="4.2. Using batches - 1" ID="ID_856319422" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      sql.withBatch(3) { stmt -&gt;
    </p>
    <p>
      &nbsp;&nbsp;stmt.addBatch &quot;INSERT INTO Author (firstname, lastname) VALUES ('Dierk', 'Koenig')&quot;
    </p>
    <p>
      &nbsp;&nbsp;stmt.addBatch &quot;INSERT INTO Author (firstname, lastname) VALUES ('Paul', 'King')&quot;
    </p>
    <p>
      &nbsp;&nbsp;stmt.addBatch &quot;INSERT INTO Author (firstname, lastname) VALUES ('Guillaume', 'Laforge')&quot;
    </p>
    <p>
      &nbsp;&nbsp;stmt.addBatch &quot;INSERT INTO Author (firstname, lastname) VALUES ('Hamlet', 'D''Arcy')&quot;
    </p>
    <p>
      &nbsp;&nbsp;stmt.addBatch &quot;INSERT INTO Author (firstname, lastname) VALUES ('Cedric', 'Champeau')&quot;
    </p>
    <p>
      &nbsp;&nbsp;stmt.addBatch &quot;INSERT INTO Author (firstname, lastname) VALUES ('Erik', 'Pragt')&quot;
    </p>
    <p>
      &nbsp;&nbsp;stmt.addBatch &quot;INSERT INTO Author (firstname, lastname) VALUES ('Jon', 'Skeet')&quot;
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="After executing these statements, there will be 7 new rows in the database. In fact, they will have been added in batches even though you can’t easily tell that after that fact. If you want to confirm what is going on under the covers, you can add a little bit of extra logging into your program. Add the following lines before the withBatch statement:" STYLE_REF="paragraph" ID="ID_1310144930"/>
<node TEXT="import java.util.logging.*&#xd;&#xa;&#xd;&#xa;// next line will add fine logging&#xd;&#xa;Logger.getLogger(&apos;groovy.sql&apos;).level = Level.FINE&#xd;&#xa;// also adjust logging.properties file in JRE_HOME/lib to have:&#xd;&#xa;// java.util.logging.ConsoleHandler.level = FINE" STYLE_REF="listingblock" ID="ID_1844339276">
<node TEXT="4.2. Using batches - 2" ID="ID_1487700024" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import java.util.logging.*
    </p>
    <p>
      
    </p>
    <p>
      // next line will add fine logging
    </p>
    <p>
      Logger.getLogger('groovy.sql').level = Level.FINE
    </p>
    <p>
      // also adjust logging.properties file in JRE_HOME/lib to have:
    </p>
    <p>
      // java.util.logging.ConsoleHandler.level = FINE
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="With this extra logging turned on, and the changes made as per the above comment for the logging.properties file, you should see output such as:" STYLE_REF="paragraph" ID="ID_903289230"/>
<node TEXT="FINE: Successfully executed batch with 3 command(s)&#xd;&#xa;Apr 19, 2015 8:38:42 PM groovy.sql.BatchingStatementWrapper processResult&#xd;&#xa;&#xd;&#xa;FINE: Successfully executed batch with 3 command(s)&#xd;&#xa;Apr 19, 2015 8:38:42 PM groovy.sql.BatchingStatementWrapper processResult&#xd;&#xa;&#xd;&#xa;FINE: Successfully executed batch with 1 command(s)&#xd;&#xa;Apr 19, 2015 8:38:42 PM groovy.sql.Sql getStatement" STYLE_REF="listingblock" ID="ID_458292589"/>
<node TEXT="We should also note, that any combination of SQL statements can be added to the batch. They don’t all have to be inserting a new row to the same table." STYLE_REF="paragraph" ID="ID_358790146"/>
<node TEXT="We noted earlier that to avoid SQL injection, we encourage you to use prepared statements, this is achieved using the variants of methods which take GStrings or a list of extra parameters. Prepared statements can be used in combination with batches as shown in the following example:" STYLE_REF="paragraph" ID="ID_870644349"/>
<node TEXT="def qry = &apos;INSERT INTO Author (firstname, lastname) VALUES (?,?)&apos;&#xd;&#xa;sql.withBatch(3, qry) { ps -&gt;&#xd;&#xa;  ps.addBatch(&apos;Dierk&apos;, &apos;Koenig&apos;)&#xd;&#xa;  ps.addBatch(&apos;Paul&apos;, &apos;King&apos;)&#xd;&#xa;  ps.addBatch(&apos;Guillaume&apos;, &apos;Laforge&apos;)&#xd;&#xa;  ps.addBatch(&apos;Hamlet&apos;, &quot;D&apos;Arcy&quot;)&#xd;&#xa;  ps.addBatch(&apos;Cedric&apos;, &apos;Champeau&apos;)&#xd;&#xa;  ps.addBatch(&apos;Erik&apos;, &apos;Pragt&apos;)&#xd;&#xa;  ps.addBatch(&apos;Jon&apos;, &apos;Skeet&apos;)&#xd;&#xa;}" STYLE_REF="listingblock" ID="ID_1332493736">
<node TEXT="4.2. Using batches - 3" ID="ID_921597768" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def qry = 'INSERT INTO Author (firstname, lastname) VALUES (?,?)'
    </p>
    <p>
      sql.withBatch(3, qry) { ps -&gt;
    </p>
    <p>
      &nbsp;&nbsp;ps.addBatch('Dierk', 'Koenig')
    </p>
    <p>
      &nbsp;&nbsp;ps.addBatch('Paul', 'King')
    </p>
    <p>
      &nbsp;&nbsp;ps.addBatch('Guillaume', 'Laforge')
    </p>
    <p>
      &nbsp;&nbsp;ps.addBatch('Hamlet', &quot;D'Arcy&quot;)
    </p>
    <p>
      &nbsp;&nbsp;ps.addBatch('Cedric', 'Champeau')
    </p>
    <p>
      &nbsp;&nbsp;ps.addBatch('Erik', 'Pragt')
    </p>
    <p>
      &nbsp;&nbsp;ps.addBatch('Jon', 'Skeet')
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="This provides a much safer option if the data could come from a user such as via a script or a web form. Of course, given that a prepared statement is being used, you are limited to a batch of the same SQL operation (insert in our example) to the one table." STYLE_REF="paragraph" ID="ID_1588662331"/>
</node>
<node STYLE_REF="header" FOLDED="true" ID="ID_1459661009"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_performing_pagination">
</a>4.3. Performing pagination
  </body>
</html>

</richcontent>
<node TEXT="When presenting large tables of data to a user, it is often convenient to present information a page at a time. Many of Groovy’s SQL retrieval methods have extra parameters which can be used to select a particular page of interest. The starting position and page size are specified as integers as shown in the following example using rows:" STYLE_REF="paragraph" ID="ID_1923436832"/>
<node TEXT="def qry = &apos;SELECT * FROM Author&apos;&#xd;&#xa;assert sql.rows(qry, 1, 3)*.firstname == [&apos;Dierk&apos;, &apos;Paul&apos;, &apos;Guillaume&apos;]&#xd;&#xa;assert sql.rows(qry, 4, 3)*.firstname == [&apos;Hamlet&apos;, &apos;Cedric&apos;, &apos;Erik&apos;]&#xd;&#xa;assert sql.rows(qry, 7, 3)*.firstname == [&apos;Jon&apos;]" STYLE_REF="listingblock" ID="ID_121479303">
<node TEXT="4.3. Performing pagination - 1" ID="ID_1179460386" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def qry = 'SELECT * FROM Author'
    </p>
    <p>
      assert sql.rows(qry, 1, 3)*.firstname == ['Dierk', 'Paul', 'Guillaume']
    </p>
    <p>
      assert sql.rows(qry, 4, 3)*.firstname == ['Hamlet', 'Cedric', 'Erik']
    </p>
    <p>
      assert sql.rows(qry, 7, 3)*.firstname == ['Jon']
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node STYLE_REF="header" FOLDED="true" ID="ID_156947989"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_fetching_metadata">
</a>4.4. Fetching metadata
  </body>
</html>

</richcontent>
<node TEXT="JDBC metadata can be retrieved in numerous ways. Perhaps the most basic approach is to extract the metadata from any row as shown in the following example which examines the tablename, column names and column type names:" STYLE_REF="paragraph" ID="ID_242832793"/>
<node TEXT="sql.eachRow(&quot;SELECT * FROM Author WHERE firstname = &apos;Dierk&apos;&quot;) { row -&gt;&#xd;&#xa;  def md = row.getMetaData()&#xd;&#xa;  assert md.getTableName(1) == &apos;AUTHOR&apos;&#xd;&#xa;  assert (1..md.columnCount).collect{ md.getColumnName(it) } == [&apos;ID&apos;, &apos;FIRSTNAME&apos;, &apos;LASTNAME&apos;]&#xd;&#xa;  assert (1..md.columnCount).collect{ md.getColumnTypeName(it) } == [&apos;INTEGER&apos;, &apos;VARCHAR&apos;, &apos;VARCHAR&apos;]&#xd;&#xa;}" STYLE_REF="listingblock" ID="ID_1289602698">
<node TEXT="4.4. Fetching metadata - 1" ID="ID_1286122808" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      sql.eachRow(&quot;SELECT * FROM Author WHERE firstname = 'Dierk'&quot;) { row -&gt;
    </p>
    <p>
      &nbsp;&nbsp;def md = row.getMetaData()
    </p>
    <p>
      &nbsp;&nbsp;assert md.getTableName(1) == 'AUTHOR'
    </p>
    <p>
      &nbsp;&nbsp;assert (1..md.columnCount).collect{ md.getColumnName(it) } == ['ID', 'FIRSTNAME', 'LASTNAME']
    </p>
    <p>
      &nbsp;&nbsp;assert (1..md.columnCount).collect{ md.getColumnTypeName(it) } == ['INTEGER', 'VARCHAR', 'VARCHAR']
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="And another slight variant to the previous example, this time also looking at the column label:" STYLE_REF="paragraph" ID="ID_173984205"/>
<node TEXT="sql.eachRow(&quot;SELECT firstname AS first FROM Author WHERE firstname = &apos;Dierk&apos;&quot;) { row -&gt;&#xd;&#xa;  def md = row.getMetaData()&#xd;&#xa;  assert md.getColumnName(1) == &apos;FIRSTNAME&apos;&#xd;&#xa;  assert md.getColumnLabel(1) == &apos;FIRST&apos;&#xd;&#xa;}" STYLE_REF="listingblock" ID="ID_719128187">
<node TEXT="4.4. Fetching metadata - 2" ID="ID_1646733937" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      sql.eachRow(&quot;SELECT firstname AS first FROM Author WHERE firstname = 'Dierk'&quot;) { row -&gt;
    </p>
    <p>
      &nbsp;&nbsp;def md = row.getMetaData()
    </p>
    <p>
      &nbsp;&nbsp;assert md.getColumnName(1) == 'FIRSTNAME'
    </p>
    <p>
      &nbsp;&nbsp;assert md.getColumnLabel(1) == 'FIRST'
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Accessing metadata is quite common, so Groovy also provides variants to many of its methods that let you supply a closure that will be called once with the row metadata in addition to the normal row closure which is called for each row. The following example illustrates the two closure variant for eachRow:" STYLE_REF="paragraph" ID="ID_585395741"/>
<node TEXT="def metaClosure = { meta -&gt; assert meta.getColumnName(1) == &apos;FIRSTNAME&apos; }&#xd;&#xa;def rowClosure = { row -&gt; assert row.FIRSTNAME == &apos;Dierk&apos; }&#xd;&#xa;sql.eachRow(&quot;SELECT firstname FROM Author WHERE firstname = &apos;Dierk&apos;&quot;, metaClosure, rowClosure)" STYLE_REF="listingblock" ID="ID_704986146">
<node TEXT="4.4. Fetching metadata - 3" ID="ID_977209810" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def metaClosure = { meta -&gt; assert meta.getColumnName(1) == 'FIRSTNAME' }
    </p>
    <p>
      def rowClosure = { row -&gt; assert row.FIRSTNAME == 'Dierk' }
    </p>
    <p>
      sql.eachRow(&quot;SELECT firstname FROM Author WHERE firstname = 'Dierk'&quot;, metaClosure, rowClosure)
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Note that our SQL query will only return one row, so we could have equally used firstRow for the previous example." STYLE_REF="paragraph" ID="ID_367503855"/>
<node TEXT="Finally, JDBC also provides metadata per connection (not just for rows). You can also access such metadata from Groovy as shown in this example:" STYLE_REF="paragraph" ID="ID_174633469"/>
<node TEXT="def md = sql.connection.metaData&#xd;&#xa;assert md.driverName == &apos;HSQL Database Engine Driver&apos;&#xd;&#xa;assert md.databaseProductVersion == &apos;2.5.1&apos;&#xd;&#xa;assert [&apos;JDBCMajorVersion&apos;, &apos;JDBCMinorVersion&apos;].collect{ md[it] } == [4, 2]&#xd;&#xa;assert md.stringFunctions.tokenize(&apos;,&apos;).contains(&apos;CONCAT&apos;)&#xd;&#xa;def rs = md.getTables(null, null, &apos;AUTH%&apos;, null)&#xd;&#xa;assert rs.next()&#xd;&#xa;assert rs.getString(&apos;TABLE_NAME&apos;) == &apos;AUTHOR&apos;" STYLE_REF="listingblock" ID="ID_1435355138">
<node TEXT="4.4. Fetching metadata - 4" ID="ID_1415582918" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def md = sql.connection.metaData
    </p>
    <p>
      assert md.driverName == 'HSQL Database Engine Driver'
    </p>
    <p>
      assert md.databaseProductVersion == '2.5.1'
    </p>
    <p>
      assert ['JDBCMajorVersion', 'JDBCMinorVersion'].collect{ md[it] } == [4, 2]
    </p>
    <p>
      assert md.stringFunctions.tokenize(',').contains('CONCAT')
    </p>
    <p>
      def rs = md.getTables(null, null, 'AUTH%', null)
    </p>
    <p>
      assert rs.next()
    </p>
    <p>
      assert rs.getString('TABLE_NAME') == 'AUTHOR'
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Consult the JavaDoc for your driver to find out what metadata information is available for you to access." STYLE_REF="paragraph" ID="ID_1453843256"/>
</node>
<node STYLE_REF="header" FOLDED="true" ID="ID_1589185434"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_named_and_named_ordinal_parameters">
</a>4.5. Named and named-ordinal parameters
  </body>
</html>

</richcontent>
<node TEXT="Groovy supports some additional alternative placeholder syntax variants. The GString variants are typically preferred over these alternatives but the alternatives are useful for Java integration purposes and sometimes in templating scenarios where GStrings might already be in heavy use as part of a template. The named parameter variants are much like the String plus list of parameter variants but instead of having a list of ? placeholders followed by a list of parameters, you have one or more placeholders having the form :propName or ?.propName and a single map, named arguments or a domain object as the parameter. The map or domain object should have a property named propName corresponding to each supplied placeholder." STYLE_REF="paragraph" ID="ID_755113317"/>
<node TEXT="Here is an example using the colon form:" STYLE_REF="paragraph" ID="ID_1328455091"/>
<node TEXT="sql.execute &quot;INSERT INTO Author (firstname, lastname) VALUES (:first, :last)&quot;, first: &apos;Dierk&apos;, last: &apos;Koenig&apos;" STYLE_REF="listingblock" ID="ID_1714513428">
<node TEXT="4.5. Named and named-ordinal parameters - 1" ID="ID_1850041585" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      sql.execute &quot;INSERT INTO Author (firstname, lastname) VALUES (:first, :last)&quot;, first: 'Dierk', last: 'Koenig'
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="And another example using the question mark form:" STYLE_REF="paragraph" ID="ID_1911215531"/>
<node TEXT="sql.execute &quot;INSERT INTO Author (firstname, lastname) VALUES (?.first, ?.last)&quot;, first: &apos;Jon&apos;, last: &apos;Skeet&apos;" STYLE_REF="listingblock" ID="ID_518870500">
<node TEXT="4.5. Named and named-ordinal parameters - 2" ID="ID_1590010902" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      sql.execute &quot;INSERT INTO Author (firstname, lastname) VALUES (?.first, ?.last)&quot;, first: 'Jon', last: 'Skeet'
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="If the information you need to supply is spread across multiple maps or domain objects you can use the question mark form with an additional ordinal index as shown here:" STYLE_REF="paragraph" ID="ID_1488138380"/>
<node TEXT="class Rockstar { String first, last }&#xd;&#xa;def pogo = new Rockstar(first: &apos;Paul&apos;, last: &apos;McCartney&apos;)&#xd;&#xa;def map = [lion: &apos;King&apos;]&#xd;&#xa;sql.execute &quot;INSERT INTO Author (firstname, lastname) VALUES (?1.first, ?2.lion)&quot;, pogo, map" STYLE_REF="listingblock" ID="ID_184151073">
<node TEXT="4.5. Named and named-ordinal parameters - 3" ID="ID_1642415345" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      class Rockstar { String first, last }
    </p>
    <p>
      def pogo = new Rockstar(first: 'Paul', last: 'McCartney')
    </p>
    <p>
      def map = [lion: 'King']
    </p>
    <p>
      sql.execute &quot;INSERT INTO Author (firstname, lastname) VALUES (?1.first, ?2.lion)&quot;, pogo, map
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node STYLE_REF="header" FOLDED="true" ID="ID_1971220965"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_stored_procedures">
</a>4.6. Stored procedures
  </body>
</html>

</richcontent>
<node TEXT="The exact syntax for creating a stored procedure or function varies slightly between different databases. For the HSQLDB database we are using, we can create a stored function which returns the initials of all authors in a table as follows:" STYLE_REF="paragraph" ID="ID_1505502564"/>
<node TEXT="sql.execute &quot;&quot;&quot;&#xd;&#xa;  CREATE FUNCTION SELECT_AUTHOR_INITIALS()&#xd;&#xa;  RETURNS TABLE (firstInitial VARCHAR(1), lastInitial VARCHAR(1))&#xd;&#xa;  READS SQL DATA&#xd;&#xa;  RETURN TABLE (&#xd;&#xa;    SELECT LEFT(Author.firstname, 1) as firstInitial, LEFT(Author.lastname, 1) as lastInitial&#xd;&#xa;    FROM Author&#xd;&#xa;  )&#xd;&#xa;&quot;&quot;&quot;" STYLE_REF="listingblock" ID="ID_695008419">
<node TEXT="4.6. Stored procedures - 1" ID="ID_1222115250" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      sql.execute &quot;&quot;&quot;
    </p>
    <p>
      &nbsp;&nbsp;CREATE FUNCTION SELECT_AUTHOR_INITIALS()
    </p>
    <p>
      &nbsp;&nbsp;RETURNS TABLE (firstInitial VARCHAR(1), lastInitial VARCHAR(1))
    </p>
    <p>
      &nbsp;&nbsp;READS SQL DATA
    </p>
    <p>
      &nbsp;&nbsp;RETURN TABLE (
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;SELECT LEFT(Author.firstname, 1) as firstInitial, LEFT(Author.lastname, 1) as lastInitial
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;FROM Author
    </p>
    <p>
      &nbsp;&nbsp;)
    </p>
    <p>
      &quot;&quot;&quot;
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="We can use a SQL CALL statement to invoke the function using Groovy’s normal SQL retrieval methods. Here is an example using eachRow." STYLE_REF="paragraph" ID="ID_181144505"/>
<node TEXT="def result = []&#xd;&#xa;sql.eachRow(&apos;CALL SELECT_AUTHOR_INITIALS()&apos;) {&#xd;&#xa;  result &lt;&lt; &quot;$it.firstInitial$it.lastInitial&quot;&#xd;&#xa;}&#xd;&#xa;assert result == [&apos;DK&apos;, &apos;JS&apos;, &apos;GL&apos;]" STYLE_REF="listingblock" ID="ID_1269402203">
<node TEXT="4.6. Stored procedures - 2" ID="ID_301208799" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def result = []
    </p>
    <p>
      sql.eachRow('CALL SELECT_AUTHOR_INITIALS()') {
    </p>
    <p>
      &nbsp;&nbsp;result &lt;&lt; &quot;$it.firstInitial$it.lastInitial&quot;
    </p>
    <p>
      }
    </p>
    <p>
      assert result == ['DK', 'JS', 'GL']
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Here is the code for creating another stored function, this one taking the lastname as a parameter:" STYLE_REF="paragraph" ID="ID_1209118434"/>
<node TEXT="sql.execute &quot;&quot;&quot;&#xd;&#xa;  CREATE FUNCTION FULL_NAME (p_lastname VARCHAR(64))&#xd;&#xa;  RETURNS VARCHAR(100)&#xd;&#xa;  READS SQL DATA&#xd;&#xa;  BEGIN ATOMIC&#xd;&#xa;    DECLARE ans VARCHAR(100);&#xd;&#xa;    SELECT CONCAT(firstname, &apos; &apos;, lastname) INTO ans&#xd;&#xa;    FROM Author WHERE lastname = p_lastname;&#xd;&#xa;    RETURN ans;&#xd;&#xa;  END&#xd;&#xa;&quot;&quot;&quot;" STYLE_REF="listingblock" ID="ID_350346958">
<node TEXT="4.6. Stored procedures - 3" ID="ID_1060614311" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      sql.execute &quot;&quot;&quot;
    </p>
    <p>
      &nbsp;&nbsp;CREATE FUNCTION FULL_NAME (p_lastname VARCHAR(64))
    </p>
    <p>
      &nbsp;&nbsp;RETURNS VARCHAR(100)
    </p>
    <p>
      &nbsp;&nbsp;READS SQL DATA
    </p>
    <p>
      &nbsp;&nbsp;BEGIN ATOMIC
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;DECLARE ans VARCHAR(100);
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;SELECT CONCAT(firstname, ' ', lastname) INTO ans
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;FROM Author WHERE lastname = p_lastname;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;RETURN ans;
    </p>
    <p>
      &nbsp;&nbsp;END
    </p>
    <p>
      &quot;&quot;&quot;
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="We can use the placeholder syntax to specify where the parameter belongs and note the special placeholder position to indicate the result:" STYLE_REF="paragraph" ID="ID_668297542"/>
<node TEXT="def result = sql.firstRow(&quot;{? = call FULL_NAME(?)}&quot;, [&apos;Koenig&apos;])&#xd;&#xa;assert result[0] == &apos;Dierk Koenig&apos;" STYLE_REF="listingblock" ID="ID_1998649986">
<node TEXT="4.6. Stored procedures - 4" ID="ID_1573568397" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def result = sql.firstRow(&quot;{? = call FULL_NAME(?)}&quot;, ['Koenig'])
    </p>
    <p>
      assert result[0] == 'Dierk Koenig'
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Finally, here is a stored procedure with input and output parameters:" STYLE_REF="paragraph" ID="ID_1055113241"/>
<node TEXT="sql.execute &quot;&quot;&quot;&#xd;&#xa;  CREATE PROCEDURE CONCAT_NAME (OUT fullname VARCHAR(100),&#xd;&#xa;    IN first VARCHAR(50), IN last VARCHAR(50))&#xd;&#xa;  BEGIN ATOMIC&#xd;&#xa;    SET fullname = CONCAT(first, &apos; &apos;, last);&#xd;&#xa;  END&#xd;&#xa;&quot;&quot;&quot;" STYLE_REF="listingblock" ID="ID_582802855">
<node TEXT="4.6. Stored procedures - 5" ID="ID_1994746203" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      sql.execute &quot;&quot;&quot;
    </p>
    <p>
      &nbsp;&nbsp;CREATE PROCEDURE CONCAT_NAME (OUT fullname VARCHAR(100),
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;IN first VARCHAR(50), IN last VARCHAR(50))
    </p>
    <p>
      &nbsp;&nbsp;BEGIN ATOMIC
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;SET fullname = CONCAT(first, ' ', last);
    </p>
    <p>
      &nbsp;&nbsp;END
    </p>
    <p>
      &quot;&quot;&quot;
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="To use the CONCAT_NAME stored procedure parameter, we make use of a special call method. Any input parameters are simply provided as parameters to the method call. For output parameters, the resulting type must be specified as shown here:" STYLE_REF="paragraph" ID="ID_427074581"/>
<node TEXT="sql.call(&quot;{call CONCAT_NAME(?, ?, ?)}&quot;, [Sql.VARCHAR, &apos;Dierk&apos;, &apos;Koenig&apos;]) {&#xd;&#xa;  fullname -&gt; assert fullname == &apos;Dierk Koenig&apos;&#xd;&#xa;}" STYLE_REF="listingblock" ID="ID_1452632472">
<node TEXT="4.6. Stored procedures - 6" ID="ID_1531328559" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      sql.call(&quot;{call CONCAT_NAME(?, ?, ?)}&quot;, [Sql.VARCHAR, 'Dierk', 'Koenig']) {
    </p>
    <p>
      &nbsp;&nbsp;fullname -&gt; assert fullname == 'Dierk Koenig'
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="sql.execute &quot;&quot;&quot;&#xd;&#xa;  CREATE PROCEDURE CHECK_ID_POSITIVE_IN_OUT ( INOUT p_err VARCHAR(64), IN pparam INTEGER, OUT re VARCHAR(15))&#xd;&#xa;  BEGIN ATOMIC&#xd;&#xa;    IF pparam &gt; 0 THEN&#xd;&#xa;      set p_err = p_err || &apos;_OK&apos;;&#xd;&#xa;      set re = &apos;RET_OK&apos;;&#xd;&#xa;    ELSE&#xd;&#xa;      set p_err = p_err || &apos;_ERROR&apos;;&#xd;&#xa;      set re = &apos;RET_ERROR&apos;;&#xd;&#xa;    END IF;&#xd;&#xa;  END;&#xd;&#xa;&quot;&quot;&quot;" STYLE_REF="listingblock" ID="ID_722753219">
<node TEXT="4.6. Stored procedures - 7" ID="ID_835144755" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      sql.execute &quot;&quot;&quot;
    </p>
    <p>
      &nbsp;&nbsp;CREATE PROCEDURE CHECK_ID_POSITIVE_IN_OUT ( INOUT p_err VARCHAR(64), IN pparam INTEGER, OUT re VARCHAR(15))
    </p>
    <p>
      &nbsp;&nbsp;BEGIN ATOMIC
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;IF pparam &gt; 0 THEN
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;set p_err = p_err || '_OK';
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;set re = 'RET_OK';
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;ELSE
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;set p_err = p_err || '_ERROR';
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;set re = 'RET_ERROR';
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;END IF;
    </p>
    <p>
      &nbsp;&nbsp;END;
    </p>
    <p>
      &quot;&quot;&quot;
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="def scall = &quot;{call CHECK_ID_POSITIVE_IN_OUT(?, ?, ?)}&quot;&#xd;&#xa;sql.call scall, [Sql.inout(Sql.VARCHAR(&quot;MESSAGE&quot;)), 1, Sql.VARCHAR], {&#xd;&#xa;  res, p_err -&gt; assert res == &apos;MESSAGE_OK&apos; &amp;&amp; p_err == &apos;RET_OK&apos;&#xd;&#xa;}" STYLE_REF="listingblock" ID="ID_359872931">
<node TEXT="4.6. Stored procedures - 8" ID="ID_18410384" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def scall = &quot;{call CHECK_ID_POSITIVE_IN_OUT(?, ?, ?)}&quot;
    </p>
    <p>
      sql.call scall, [Sql.inout(Sql.VARCHAR(&quot;MESSAGE&quot;)), 1, Sql.VARCHAR], {
    </p>
    <p>
      &nbsp;&nbsp;res, p_err -&gt; assert res == 'MESSAGE_OK' &amp;&amp; p_err == 'RET_OK'
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node STYLE_REF="header" FOLDED="true" ID="ID_273359028"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a class="anchor" href="#_using_datasets">
</a>5. Using DataSets
  </body>
</html>

</richcontent>
<node TEXT="Groovy provides a groovy.sql.DataSet class which enhances the groovy.sql.Sql class with what can be thought of as mini ORM functionality. Databases are accessed and queried using POGO fields and operators rather than JDBC-level API calls and RDBMS column names." STYLE_REF="paragraph" ID="ID_1607299781"/>
<node TEXT="So, instead of a query like:" STYLE_REF="paragraph" ID="ID_1783842230"/>
<node TEXT="def qry = &quot;&quot;&quot;SELECT * FROM Author&#xd;&#xa;  WHERE (firstname &gt; ?)&#xd;&#xa;  AND (lastname &lt; ?)&#xd;&#xa;  ORDER BY lastname DESC&quot;&quot;&quot;&#xd;&#xa;def params = [&apos;Dierk&apos;, &apos;Pragt&apos;]&#xd;&#xa;def result = sql.rows(qry, params)&#xd;&#xa;assert result*.firstname == [&apos;Eric&apos;, &apos;Guillaume&apos;, &apos;Paul&apos;]" STYLE_REF="listingblock" ID="ID_83883449">
<node TEXT="5. Using DataSets - 1" ID="ID_1811049470" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def qry = &quot;&quot;&quot;SELECT * FROM Author
    </p>
    <p>
      &nbsp;&nbsp;WHERE (firstname &gt; ?)
    </p>
    <p>
      &nbsp;&nbsp;AND (lastname &lt; ?)
    </p>
    <p>
      &nbsp;&nbsp;ORDER BY lastname DESC&quot;&quot;&quot;
    </p>
    <p>
      def params = ['Dierk', 'Pragt']
    </p>
    <p>
      def result = sql.rows(qry, params)
    </p>
    <p>
      assert result*.firstname == ['Eric', 'Guillaume', 'Paul']
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="You can write code like this:" STYLE_REF="paragraph" ID="ID_1919290821"/>
<node TEXT="def authorDS = sql.dataSet(&apos;Author&apos;)&#xd;&#xa;def result = authorDS.findAll{ it.firstname &gt; &apos;Dierk&apos; }&#xd;&#xa;        .findAll{ it.lastname &lt; &apos;Pragt&apos; }&#xd;&#xa;        .sort{ it.lastname }&#xd;&#xa;        .reverse()&#xd;&#xa;assert result.rows()*.firstname == [&apos;Eric&apos;, &apos;Guillaume&apos;, &apos;Paul&apos;]" STYLE_REF="listingblock" ID="ID_1042198583">
<node TEXT="5. Using DataSets - 2" ID="ID_1787764311" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def authorDS = sql.dataSet('Author')
    </p>
    <p>
      def result = authorDS.findAll{ it.firstname &gt; 'Dierk' }
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.findAll{ it.lastname &lt; 'Pragt' }
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.sort{ it.lastname }
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.reverse()
    </p>
    <p>
      assert result.rows()*.firstname == ['Eric', 'Guillaume', 'Paul']
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Here we have a helper &quot;domain&quot; class:" STYLE_REF="paragraph" ID="ID_1284944869"/>
<node TEXT="class Author {&#xd;&#xa;    String firstname&#xd;&#xa;    String lastname&#xd;&#xa;}" STYLE_REF="listingblock" ID="ID_557583400">
<node TEXT="5. Using DataSets - 3" ID="ID_562929711" BACKGROUND_COLOR="#66cccc"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      class Author {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;String firstname
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;String lastname
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Database access and manipulation involves creating or working with instances of the domain class." STYLE_REF="paragraph" ID="ID_534601747"/>
</node>
</node>
</node>
</node>
</map>

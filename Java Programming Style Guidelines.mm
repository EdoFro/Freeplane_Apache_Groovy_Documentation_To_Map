<map version="freeplane 1.9.8">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="Java Programming Style Guidelines" LOCALIZED_STYLE_REF="AutomaticLayout.level.root" FOLDED="false" ID="ID_696401721" LINK="https://geosoft.no/index.html">
<hook NAME="AutomaticEdgeColor" COUNTER="17" RULE="ON_BRANCH_CREATION"/>
<hook NAME="MapStyle" background="#f9f9f8" zoom="0.8">
    <conditional_styles>
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
        <conditional_style ACTIVE="true" STYLE_REF="MUST" LAST="false">
            <conjunct_condition>
                <node_contains_condition VALUE="must" ITEM="filter_node"/>
                <style_equals_condition TEXT="recom"/>
            </conjunct_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="SHOULD" LAST="false">
            <conjunct_condition>
                <node_contains_condition VALUE="should" ITEM="filter_node"/>
                <style_equals_condition TEXT="recom"/>
            </conjunct_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="CAN" LAST="false">
            <conjunct_condition>
                <node_contains_condition VALUE=" can " ITEM="filter_node"/>
                <style_equals_condition TEXT="recom"/>
            </conjunct_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="containsNextTasks" LAST="true">
            <script_condition>
                <script>(node.findAll() - node)?.any{it.style.name == &apos;nextTask&apos;}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="false" STYLE_REF="containsNextTasks" LAST="true">
            <script_condition>
                <script>(node.findAll() - node)?.any{it.style.name == &apos;Siguiente tarea&apos;} </script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="containsPendingTasks" LAST="true">
            <script_condition>
                <script>(node.findAll() - node)?.any{it.style.name == &apos;pendingTask&apos;}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="false" STYLE_REF="containsPendingTasks" LAST="true">
            <script_condition>
                <script>(node.findAll() - node)?.any{it.style.name == &apos;Tarea pendiente&apos;} </script>
            </script_condition>
        </conditional_style>
    </conditional_styles>
    <properties mapUsesOwnSaveOptions="true" save_last_visited_node="default" save_modification_times="false" fit_to_viewport="false" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" associatedTemplateLocation="template:/vis01%20light_nord_template%20vEdo.mm" save_folding="default"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" ID="ID_118736178" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_506805493" ICON_SIZE="12 pt" FORMAT_AS_HYPERLINK="false" COLOR="#484747" BACKGROUND_COLOR="#efefef" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" NUMBERED="false" FORMAT="STANDARD_FORMAT" TEXT_ALIGN="DEFAULT" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#8fbcbb" BORDER_DASH_LIKE_EDGE="true" BORDER_DASH="SOLID" VGAP_QUANTITY="2 px" MAX_WIDTH="10 cm" MIN_WIDTH="0 cm">
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
<stylenode TEXT="nextTask" ID="ID_195423806" BACKGROUND_COLOR="#ffff33">
<icon BUILTIN="yes"/>
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="pendingTask" ID="ID_1183132364" BACKGROUND_COLOR="#99ffff">
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="completedTask" ID="ID_1091903307" COLOR="#333333" BACKGROUND_COLOR="#cccccc">
<icon BUILTIN="checked"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="discardedTask" ID="ID_1718803538" COLOR="#666666" BACKGROUND_COLOR="#cccccc">
<icon BUILTIN="Descartado"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="containsNextTasks" ID="ID_1445722848" BACKGROUND_COLOR="#eaea86">
<icon BUILTIN="emoji-1F7E5"/>
</stylenode>
<stylenode TEXT="containsPendingTasks" ID="ID_1641770257" BACKGROUND_COLOR="#b5d7d7">
<icon BUILTIN="emoji-23F9"/>
</stylenode>
<stylenode TEXT="GroovyNode" ID="ID_1670291373" BACKGROUND_COLOR="#66cccc" STYLE="rectangle">
<icon BUILTIN="emoji-1F951"/>
<font NAME="Consolas"/>
</stylenode>
<stylenode TEXT="Warning" ID="ID_126920375" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="6 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#990000">
<icon BUILTIN="closed"/>
</stylenode>
<stylenode TEXT="hasGroovyNode" ID="ID_1725221810">
<icon BUILTIN="emoji-1F951"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.topic" ID="ID_255835482" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" ID="ID_784912940" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" ID="ID_801312703" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode TEXT="example" ID="ID_1459130800" MAX_WIDTH="30 cm" MIN_WIDTH="15 cm" COLOR="#0000ff">
<font NAME="Consolas"/>
<hook NAME="NodeCss">.not {
  color:          #770000;
}</hook>
</stylenode>
<stylenode TEXT="recom" MAX_WIDTH="7 cm" MIN_WIDTH="7 cm">
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="rationale" MAX_WIDTH="15 cm" MIN_WIDTH="15 cm">
<hook NAME="NodeCss">pre {
    color: #ff;
    background:     #dddde3;
}
tt {
    color: #ff;
}</hook>
</stylenode>
<stylenode TEXT="MUST" ID="ID_314257515">
<icon BUILTIN="emoji-1F7E5"/>
</stylenode>
<stylenode TEXT="SHOULD" ID="ID_863613856">
<icon BUILTIN="emoji-1F7E7"/>
</stylenode>
<stylenode TEXT="CAN" ID="ID_142607142">
<icon BUILTIN="emoji-1F7EA"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" ID="ID_1209359852" COLOR="#ffffff" BACKGROUND_COLOR="#484747" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="15 pt" TEXT_ALIGN="CENTER" MAX_WIDTH="6 cm" MIN_WIDTH="3 cm">
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
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      by GEOSOFT.NO
    </p>
  </body>
</html></richcontent>
<node TEXT="Java Programming Style Guidelines" POSITION="right" ID="ID_808394485">
<edge COLOR="#ff0000"/>
<node TEXT="Source:" ID="ID_668502503">
<node TEXT="https://geosoft.no/javastyle.html" ID="ID_392560612" LINK="https://geosoft.no/javastyle.html"/>
<node TEXT="This work is licensed under a Creative Commons Attribution 4.0 International License." FOLDED="true" ID="ID_1931791682">
<node TEXT="http://creativecommons.org/licenses/by/4.0/" ID="ID_1943697252" LINK="http://creativecommons.org/licenses/by/4.0/"/>
</node>
</node>
<node TEXT="Intro" FOLDED="true" ID="ID_448283170">
<node TEXT="The guidelines provided here are intended to improve the readability of code and make it consistent across the wide spectrum of Java projects." ID="ID_1858857543"/>
<node TEXT="A style guide is about consistency." ID="ID_240616180">
<node TEXT="Consistency with this style guide is important." ID="ID_1057863500"/>
<node TEXT="Consistency within a project is more important." ID="ID_520046656"/>
<node TEXT="Consistency within one package, class or method is the most important." ID="ID_874215509"/>
</node>
<node TEXT="However, know when to be inconsistent - sometimes style guide recommendations just aren&apos;t applicable." ID="ID_1996143174">
<node TEXT="When in doubt, use the best of judgment." ID="ID_1547224699"/>
<node TEXT="Look at example code and decide what looks best." ID="ID_1859752959"/>
</node>
<node TEXT="The recommendations are grouped by topic and each recommendation is numbered to make it easier to refer to during reviews." ID="ID_289017450"/>
<node TEXT="Layout for the recommendations is as follows:" ID="ID_1969105014">
<node TEXT="n. Guideline short description" STYLE_REF="recom" ID="ID_18641055" VGAP_QUANTITY="2 px">
<node STYLE_REF="example" ID="ID_744665276"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>Example if applicable</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1592772118"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Motivation, background and additional information.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="The motivation section is important." ID="ID_475869963">
<node TEXT="Introducing coding standards may be controversial and it is important to state the background for the recommendation." ID="ID_1285929870"/>
</node>
<node TEXT="In the guideline sections the terms must, should and can have special meaning." ID="ID_1347599475">
<icon BUILTIN="messagebox_warning"/>
<node TEXT="MUST" ID="ID_1890976479" BACKGROUND_COLOR="#ffcc99">
<font BOLD="true"/>
<node ID="ID_1289688024"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      A must requirement <b>must be followed</b>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="MUST" STYLE_REF="MUST" ID="ID_803640730"/>
</node>
</node>
<node TEXT="SHOULD" ID="ID_1042872000" BACKGROUND_COLOR="#ffcc99">
<font BOLD="true"/>
<node ID="ID_1702530494"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      a should is a <b>strong recommendation</b>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="SHOULD" STYLE_REF="SHOULD" ID="ID_753571436"/>
</node>
</node>
<node TEXT="CAN" ID="ID_353243005" BACKGROUND_COLOR="#ffcc99">
<font BOLD="true"/>
<node ID="ID_1029051746"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      a can is a <b>general guideline</b>.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="CAN" STYLE_REF="CAN" ID="ID_526458856"/>
</node>
</node>
</node>
<node TEXT="This work is licensed under a Creative Commons Attribution 4.0 International License." ID="ID_81658970">
<node TEXT="http://creativecommons.org/licenses/by/4.0/" ID="ID_1182693831" LINK="http://creativecommons.org/licenses/by/4.0/"/>
</node>
</node>
<node TEXT="1 General recommendations" FOLDED="true" ID="ID_54444936">
<node TEXT="1.1 Any violation to the guide is allowed if it enhances readability." STYLE_REF="recom" ID="ID_264962096" VGAP_QUANTITY="2 px">
<node STYLE_REF="example" ID="ID_75960061"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1231401128"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The main goal of the recommendation is to improve readability and thereby the understanding and the maintainability and general quality of the code. It is impossible to cover all the specific cases in a general guide and the programmer should be flexible.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="2 Naming conventions" FOLDED="true" ID="ID_632479339">
<node TEXT="2.1 General naming conventions" ID="ID_38933678" VGAP_QUANTITY="18.75 pt">
<node TEXT="resumen" ID="ID_1501732232">
<node TEXT="mypackage" ID="ID_1253269103"/>
<node TEXT="MyType" ID="ID_52662034"/>
<node TEXT="myVariable" ID="ID_751626020"/>
<node TEXT="MY_CONSTANT" ID="ID_1167162766"/>
<node TEXT="defineMethod()" ID="ID_1826805682"/>
</node>
<node TEXT="2.1 Names representing packages should be in all lower case." STYLE_REF="recom" FOLDED="true" ID="ID_1701567236" VGAP_QUANTITY="2 px">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1907779253"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>mypackage, com.company.application.ui</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_847722151"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Package naming convention used by Oracle for the Java core packages. The initial package name representing the domain name must be in lower case.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.2 Names representing types must be nouns and written in mixed case starting with upper case." STYLE_REF="recom" FOLDED="true" ID="ID_554995591">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_928813909"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>Line, AudioSystem</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1450372211"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Common practice in the Java development community and also the type naming convention used by Oracle for the Java core packages.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.3 Variable names must be in mixed case starting with lower case." STYLE_REF="recom" FOLDED="true" ID="ID_1860549110">
<node STYLE_REF="example" ID="ID_1645569298"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>line, audioSystem</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1062615310"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Common practice in the Java development community and also the naming convention for variables used by Oracle for the Java core packages. Makes variables easy to distinguish from types, and effectively resolves potential naming collision as in the declaration <tt>Line line;</tt>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.4 Names representing constants (final variables) must be all uppercase using underscore to separate words." STYLE_REF="recom" FOLDED="true" ID="ID_802634706">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1746765100"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>MAX_ITERATIONS, COLOR_RED</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_503509609"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Common practice in the Java development community and also the naming convention used by Oracle for the Java core packages.<br/><br/>In general, the use of such constants should be minimized.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.5 Names representing methods must contain a verb and written in mixed case starting with lower case." STYLE_REF="recom" FOLDED="true" ID="ID_482383842">
<node STYLE_REF="example" ID="ID_1246330428"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>getName(), computeTotalWidth()</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1157095053"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Common practice in the Java development community and also the naming convention used by Oracle for the Java core packages. This is identical to variable names, but methods in Java are already distinguishable from variables by their specific form.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.6 Abbreviations and acronyms should not be uppercase when used as name." STYLE_REF="recom" FOLDED="true" ID="ID_1105264316">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1348466130"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>exportHtmlSource(); <i class="not">// NOT: exportHTMLSource();</i>
openDvdPlayer();    <i class="not">// NOT: openDVDPlayer();</i>
</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1788541630"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Using all uppercase for the base name will give conflicts with the naming conventions given above. A variable of this type whould have to be named <tt>dVD</tt>, <tt>hTML</tt>&nbsp;etc. which obviously is not very readable. Another problem is illustrated in the examples above; When the name is connected to another, the readability is seriously reduced; The word following the acronym does not stand out as it should.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.7 Private class variables should have underscore suffix." STYLE_REF="recom" FOLDED="true" ID="ID_307188552">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1861681671"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>class Person
{
  private String name_;

  :
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_210748554"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Apart from its name and its type, the <em>scope</em>&nbsp;of a variable is its most important feature. Indicating class scope by using underscore makes it easy to distinguish class variables from local scratch variables. This is important because class variables are considered to have higher significance than method variables, and should be treated with special care by the programmer.

    <p>
      A side effect of the underscore naming convention is that it nicely resolves the problem of finding reasonable variable names for setter methods:
    </p>
    <pre>  void setName(String name)
  {
    name_ = name;
  }</pre>
    <p>
      An issue is whether the underscore should be added as a prefix or as a suffix. Both practices are commonly used, but the latter is recommended because it seem to best preserve the readability of the name.
    </p>
    <p>
      It should be noted that scope identification in variables have been a controversial issue for quite some time. It seems, though, that this practice now is gaining acceptance and that it is becoming more and more common as a convention in the professional development community.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.8 Generic variables should have the same name as their type." STYLE_REF="recom" FOLDED="true" ID="ID_1028945249">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1070594396"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>void setTopic(Topic topic) <i class="not">// NOT: void setTopic(Topic value)</i>
                           <i class="not">// NOT: void setTopic(Topic aTopic)</i>
                           <i class="not">// NOT: void setTopic(Topic t)</i>

void connect(Database database) <i class="not">// NOT: void connect(Database db)</i>
                                <i class="not">// NOT: void connect(Database oracleDB)</i>
</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_60584369"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Reduce complexity by reducing the number of terms and names used. Also makes it easy to deduce the type given a variable name only.

    <p>
      If for some reason this convention doesn't seem to <em>fit</em>&nbsp;it is a strong indication that the type name is badly chosen.<br/><br/>Non-generic variables have a <em>role</em>. These variables can often be named by combining role and type:
    </p>
    <pre>  Point  startingPoint, centerPoint;
  Name   loginName;</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.9 All names should be written in English." STYLE_REF="recom" FOLDED="true" ID="ID_306180503">
<node STYLE_REF="example" ID="ID_1533650472"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1436743887"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    English is the preferred language for international development.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.10 Variables with a large scope should have long names, variables with a small scope can have short names." STYLE_REF="recom" FOLDED="true" ID="ID_1498343889">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1809499021"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_618259870"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Scratch variables used for temporary storage or indices are best kept short. A programmer reading such variables should be able to assume that its value is not used outside a few lines of code. Common scratch variables for integers are <em>i</em>, <em>j</em>, <em>k</em>, <em>m</em>, <em>n</em>&nbsp;and for characters <em>c</em>&nbsp;and <em>d</em>.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.11 The name of the object is implicit, and should be avoided in a method name." STYLE_REF="recom" FOLDED="true" ID="ID_1665816302">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1201352238"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>line.getLength();   <i class="not">// NOT: line.getLineLength();</i>
</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_574295489"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The latter might seem natural in the class declaration, but proves superfluous in use, as shown in the example.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="2.2 Specific naming conventions" ID="ID_486564800">
<node TEXT="2.12 The terms get/set must be used where an attribute is accessed directly." STYLE_REF="recom" FOLDED="true" ID="ID_92706636">
<node STYLE_REF="example" ID="ID_1931535628"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>employee.getName();
employee.setName(name);

matrix.getElement(2, 4);
matrix.setElement(2, 4, value);</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_598850637"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Common practice in the Java community and the convention used by Oracle for the Java core packages.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.13 is prefix should be used for boolean variables and methods." STYLE_REF="recom" FOLDED="true" ID="ID_626533299">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_614143059"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>isSet, isVisible, isFinished, isFound, isOpen</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1305602125"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This is the naming convention for boolean methods and variables used by Oracle for the Java core packages.

    <p>
      Using the <em>is</em>&nbsp;prefix solves a common problem of choosing bad boolean names like <em>status</em>&nbsp;or <em>flag</em>. <em>isStatus</em>&nbsp;or <em>isFlag</em>&nbsp;simply doesn't fit, and the programmer is forced to chose more meaningful names.
    </p>
    <p>
      Setter methods for boolean variables must have <i>set</i>&nbsp;prefix as in:
    </p>
    <pre>  void setFound(boolean isFound);</pre>
    <p>
      There are a few alternatives to the <em>is</em>&nbsp;prefix that fits better in some situations. These are <em>has</em>, <em>can</em>&nbsp;and <em>should</em>&nbsp;prefixes:
    </p>
    <pre>  boolean hasLicense();
  boolean canEvaluate();
  boolean shouldAbort = false;</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.14 The term compute can be used in methods where something is computed." STYLE_REF="recom" FOLDED="true" ID="ID_1387921987">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_78279703"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>valueSet.computeAverage();
matrix.computeInverse()</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1023608098"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Give the reader the immediate clue that this is a potential time consuming operation, and if used repeatedly, he might consider caching the result. Consistent use of the term enhances readability.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.15 The term find can be used in methods where something is looked up." STYLE_REF="recom" FOLDED="true" ID="ID_7441335">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1233198760"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>vertex.findNearestVertex();
matrix.findSmallestElement();
node.findShortestPath(Node destinationNode);</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_575123725"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Give the reader the immediate clue that this is a simple look up method with a minimum of computations involved. Consistent use of the term enhances readability.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.16 The term initialize can be used where an object or a concept is established." STYLE_REF="recom" FOLDED="true" ID="ID_972073985">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_825423090"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>printer.initializeFontSet();</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_471322572"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The American <em>initialize</em>&nbsp;should be preferred over the English <em>initialise</em>. Abbreviation <em>init</em>&nbsp;must be avoided.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.17 User interface components names should be suffixed by the element type." STYLE_REF="recom" FOLDED="true" ID="ID_471897202">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_616297619"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>widthScale, nameTextField, leftScrollbar, mainPanel, fileToggle, minLabel, printerDialog</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1462282910"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Enhances readability since the name gives the user an immediate clue of the type of the variable and thereby the available resources of the object.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.18 Plural form should be used on names representing a collection of objects." STYLE_REF="recom" FOLDED="true" ID="ID_1470783170">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1338751355"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>Collection&lt;Point&gt;  points;
int[]              values;</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1098827345"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Enhances readability since the name gives the user an immediate clue of the type of the variable and the operations that can be performed on its elements.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.19 n prefix should be used for variables representing a number of objects." STYLE_REF="recom" FOLDED="true" ID="ID_113410587">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_273062178"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>nPoints, nLines</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1352027939"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The notation is taken from mathematics where it is an established convention for indicating a number of objects.

    <p>
      Note that Oracle use <em>num</em>&nbsp;prefix in the core Java packages for such variables. This is probably meant as an abbreviation of <em>number of</em>, but as it looks more like <em>number</em>&nbsp;it makes the variable name strange and misleading. If &quot;number of&quot; is the preferred phrase, <em>numberOf</em>&nbsp;prefix can be used instead of just <em>n</em>. <em>num</em>&nbsp;prefix must not be used.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.20 No suffix should be used for variables representing an entity number." STYLE_REF="recom" FOLDED="true" ID="ID_658119288">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1292804632"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>tableNo, employeeNo</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1318087255">
<icon BUILTIN="messagebox_warning"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The notation is taken from mathematics where it is an established convention for indicating an entity number.

    <p>
      An elegant alternative is to prefix such variables with an <em>i</em>: <tt>iTable, iEmployee</tt>. This effectively makes them <em>named</em>&nbsp;iterators.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.21 Iterator variables should be called i, j, k etc." STYLE_REF="recom" FOLDED="true" ID="ID_191727417">
<node STYLE_REF="example" ID="ID_679133346"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>for (Iterator i = points.iterator(); i.hasNext(); ) {
  :
}

for (int i = 0; i &lt; nTables; i++) {
  :
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_3788526"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The notation is taken from mathematics where it is an established convention for indicating iterators.

    <p>
      Variables named <em>j</em>, <em>k</em>&nbsp;etc. should be used for nested loops only.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.22 Complement names must be used for complement entities." STYLE_REF="recom" FOLDED="true" ID="ID_258406351">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_898455409"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>get/set, add/remove, create/destroy, start/stop, insert/delete,
increment/decrement, old/new, begin/end, first/last, up/down, min/max,
next/previous, open/close, show/hide, suspend/resume, etc.</pre>
  </body>
</html>

</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_466974929"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Reduce complexity by symmetry.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.23 Abbreviations in names should be avoided." STYLE_REF="recom" FOLDED="true" ID="ID_1639938222">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_274349920"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>computeAverage();               <i class="not">// NOT: compAvg();</i>
ActionEvent event;              <i class="not">// NOT: ActionEvent e;</i>
catch (Exception exception) {   <i class="not">// NOT: catch (Exception e) {</i>
</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1431809726"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    There are two types of words to consider. First are the common words listed in a language dictionary. These must never be abbreviated. Never write:

    <p>
      <tt>cmd&nbsp;&nbsp;</tt>&nbsp;instead of <tt>&nbsp;&nbsp;command</tt><br/><tt>comp&nbsp;</tt>&nbsp;instead of <tt>&nbsp;&nbsp;compute</tt><br/><tt>cp &nbsp;&nbsp;</tt>&nbsp;instead of <tt>&nbsp;&nbsp;copy</tt><br/><tt>e &nbsp;&nbsp;&nbsp;</tt>&nbsp;instead of <tt>&nbsp;&nbsp;exception</tt><br/><tt>init&nbsp;</tt>&nbsp;instead of <tt>&nbsp;&nbsp;initialize</tt><br/><tt>pt &nbsp;&nbsp;</tt>&nbsp;instead of <tt>&nbsp;&nbsp;point</tt><br/>etc.
    </p>
    <p>
      Then there are domain specific phrases that are more naturally known through their acronym or abbreviations. These phrases should be kept abbreviated. Never write:
    </p>
    <p>
      <tt>HypertextMarkupLanguage&nbsp; </tt>instead of <tt>&nbsp;&nbsp;html</tt><br/><tt>CentralProcessingUnit &nbsp;&nbsp; </tt>instead of <tt>&nbsp;&nbsp;cpu</tt><br/><tt>PriceEarningRatio &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </tt>instead of <tt>&nbsp;&nbsp;pe</tt><br/>etc.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.24 Negated boolean variable names must be avoided." STYLE_REF="recom" FOLDED="true" ID="ID_1049262215">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1423460280"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>bool isError; <i class="not">// NOT: isNoError</i>
bool isFound; <i class="not">// NOT: isNotFound</i>
</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_590165052"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The problem arise when the logical not operator is used and double negative arises. It is not immediately apparent what <tt>!isNotError</tt>&nbsp;means.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.25 Associated constants (final variables) should be prefixed by a common type name." STYLE_REF="recom" FOLDED="true" ID="ID_1413017688">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_412339984"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>final int  COLOR_RED   = 1;
final int  COLOR_GREEN = 2;
final int  COLOR_BLUE  = 3;</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_416402619"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This indicates that the constants belong together, and what concept the constants represents.

    <p>
      An alternative to this approach is to put the constants inside an interface effectively prefixing their names with the name of the interface:
    </p>
    <pre>  interface Color
  {
    final int RED   = 1;
    final int GREEN = 2;
    final int BLUE  = 3;
  }</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.26 Exception classes should be suffixed with Exception." STYLE_REF="recom" FOLDED="true" ID="ID_198078491">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1813680840"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>class AccessException extends Exception
{
  :
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1602377745"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Exception classes are really not part of the main design of the program, and naming them like this makes them stand out relative to the other classes. This standard is followed by Oracle in the basic Java library.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.27 Default interface implementations can be prefixed by Default." STYLE_REF="recom" FOLDED="true" ID="ID_1412391511">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1662769861"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>class DefaultTableCellRenderer
  implements TableCellRenderer
{
  :
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1350398857"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    It is not uncommon to create a simplistic class implementation of an interface providing default behaviour to the interface methods. The convention of prefixing these classes by <em>Default</em>&nbsp;has been adopted by Oracle for the JDK.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.28 Singleton classes should return their sole instance through method getInstance." STYLE_REF="recom" FOLDED="true" ID="ID_1651435878">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1992399910"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>public final class UnitManager
{
  private final static UnitManager instance_ = new UnitManager();

  private UnitManager()
  {
    :
  }

  public static UnitManager getInstance()  <i class="not">// NOT: get() or instance() or unitManager() etc.</i>
  {
    return instance_;
  }
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_224859678"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Common practice in the Java community though not consistently followed by Oracle in the JDK. The above layout is the preferred pattern.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.29 Classes that creates instances on behalf of others (factories) can do so through method new[ClassName]" STYLE_REF="recom" FOLDED="true" ID="ID_1902796951">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_713141463"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>class PointFactory
{
  public Point newPoint(...)
  {
    ...
  }
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1092975735"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Indicates that the instance is created by <i>new</i>&nbsp;inside the factory method and that the construct is a controlled replacement of <tt>new Point()</tt>.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2.30 Functions (methods returning an object) should be named after what they return and procedures (void methods) after what they do." STYLE_REF="recom" FOLDED="true" ID="ID_1909794523">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1931713205"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1197557675"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Increase readability. Makes it clear what the unit should do and especially all the things it is <em>not</em>&nbsp;supposed to do. This again makes it easier to keep the code clean of side effects.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="3 Files" FOLDED="true" ID="ID_535983647" VGAP_QUANTITY="2 px">
<node TEXT="3.1 Java source files should have the extension .java." STYLE_REF="recom" FOLDED="true" ID="ID_1722493200">
<node STYLE_REF="example" ID="ID_985090393"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>Point.java</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_363928872"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Enforced by the Java tools.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="3.2 Classes should be declared in individual files with the file name matching the class name. Secondary private classes can be declared as inner classes and reside in the file of the class they belong to." STYLE_REF="recom" ID="ID_752332110">
<node STYLE_REF="example" ID="ID_1798283201"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1319274582"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Enforced by the Java tools.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="3.3 File content can be kept within 80 columns." STYLE_REF="recom" FOLDED="true" ID="ID_338759920">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_805072642"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_763708718"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    80 columns is the common dimension for editors, terminal emulators, printers and debuggers, and files that are shared between several developers should keep within these constraints. It improves readability when unintentional line breaks are avoided when passing a file between programmers.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="3.4 Special characters like TAB and page break must be avoided." STYLE_REF="recom" FOLDED="true" ID="ID_301887495">
<node STYLE_REF="example" ID="ID_407134469"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1942135078"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    These characters are bound to cause problem for editors, printers, terminal emulators or debuggers when used in a multi-programmer, multi-platform environment.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="3.5 The incompleteness of split lines must be made obvious." STYLE_REF="recom" FOLDED="true" ID="ID_1840407190">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1072195299"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>totalSum = a + b + c +
           d + e;

method(param1, param2,
       param3);

setText (&quot;Long line split&quot; +
         &quot;into two parts.&quot;);

for (int tableNo = 0; tableNo &lt; nTables;
     tableNo += tableStep) {
  ...
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1033094037"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Split lines occurs when a statement exceed the 80 column limit given above. It is difficult to give rigid rules for how lines should be split, but the examples above should give a general hint.

    <p>
      In general:
    </p>
    <ul>
      <li>
        Break after a comma.
      </li>
      <li>
        Break after an operator.
      </li>
      <li>
        Align the new line with the beginning of the expression on the previous line.
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="4 Statements" FOLDED="true" ID="ID_1373903538">
<node TEXT="4.1 Package and import statements" FOLDED="true" ID="ID_1952784540">
<node TEXT="4.1 The package statement must be the first statement of the file. All files should belong to a specific package." FOLDED="true" ID="ID_954257064">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1002749317"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_308743191"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The <tt>package</tt>&nbsp;statement location is enforced by the Java language. Letting all files belong to an actual (rather than the Java default) package enforces Java language object oriented programming techniques.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="4.2 The import statements must follow the package statement. import statements should be sorted with the most fundamental packages first, and grouped with associated packages together and one blank line between groups." FOLDED="true" ID="ID_1526277696">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1424933790"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>import java.io.IOException;
import java.net.URL;

import java.rmi.RmiServer;
import java.rmi.server.Server;

import javax.swing.JPanel;
import javax.swing.event.ActionEvent;

import org.linux.apache.server.SoapServer;</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1355877056"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The <tt>import</tt>&nbsp;statement location is enforced by the Java language. The sorting makes it simple to browse the list when there are many imports, and it makes it easy to determine the dependiencies of the present package The grouping reduce complexity by collapsing related information into a common unit.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="4.3 Imported classes must always be listed explicitly." FOLDED="true" ID="ID_1226354713">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_160306642"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>import java.util.List;      <i class="not">// NOT: import java.util.*;</i>
import java.util.ArrayList;
import java.util.HashSet;
    </pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_956353098"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Importing classes explicitly gives an excellent documentation value for the class at hand and makes the class easier to comprehend and maintain.

    <p>
      Appropriate tools should be used in order to always keep the import list minimal and up to date.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="4.2 Classes and interfaces" FOLDED="true" ID="ID_1825342191">
<node TEXT="4.4 Class and Interface declarations should be organized" STYLE_REF="recom" ID="ID_1051824282">
<icon BUILTIN="messagebox_warning"/>
<node TEXT="in the following manner:" STYLE_REF="recom" ID="ID_38235234">
<icon BUILTIN="messagebox_warning"/>
<node TEXT="Class/Interface documentation." ID="ID_1442457200"/>
<node TEXT="class or interface statement." ID="ID_281299588"/>
<node TEXT="Class (static) variables in the order" ID="ID_1823655245">
<node TEXT="public," ID="ID_349918796"/>
<node TEXT="protected," ID="ID_652350597"/>
<node TEXT="package (no access modifier)," ID="ID_1876319804"/>
<node TEXT="private." ID="ID_1837407720"/>
</node>
<node TEXT="Instance variables in the order" ID="ID_929057878">
<node TEXT="public," ID="ID_1055202775"/>
<node TEXT="protected," ID="ID_1301693628"/>
<node TEXT="package (no access modifier)," ID="ID_1504831475"/>
<node TEXT="private." ID="ID_1265756953"/>
</node>
<node TEXT="Constructors." ID="ID_1323111753"/>
<node TEXT="Methods (no specific order)." ID="ID_1655620425"/>
</node>
<node STYLE_REF="example" ID="ID_1617895807"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1709427920"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Reduce complexity by making the location of each class element predictable.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="4.3 Methods" FOLDED="true" ID="ID_713333591">
<node TEXT="4.5 Method modifiers should be given in the following order:" STYLE_REF="recom" ID="ID_1207923489">
<icon BUILTIN="messagebox_warning"/>
<node TEXT="order" ID="ID_1669269164">
<node TEXT="&lt;access&gt;" ID="ID_217250903">
<node TEXT="The &lt;access&gt; modifier (if present) must be the first modifier." ID="ID_1579767132"/>
<node TEXT="&lt;access&gt; is one of" ID="ID_1501789627">
<node TEXT="or" ID="ID_999057755">
<node TEXT="public," ID="ID_1323623833"/>
<node TEXT="protected" ID="ID_1665850329"/>
<node TEXT="private" ID="ID_69772733"/>
</node>
</node>
</node>
<node TEXT="static" ID="ID_608906839"/>
<node TEXT="abstract" ID="ID_166502135"/>
<node TEXT="synchronized" ID="ID_1126011776"/>
<node TEXT="&lt;unusual&gt;" ID="ID_506684239">
<node TEXT="while &lt;unusual&gt; includes" ID="ID_228184821">
<node TEXT="volatile" ID="ID_89436973"/>
<node TEXT="transient." ID="ID_576247297"/>
</node>
</node>
<node TEXT="final" ID="ID_723621196"/>
<node TEXT="native" ID="ID_1097455673"/>
</node>
<node STYLE_REF="example" ID="ID_1687373300"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>public static double square(double a);  <i class="not">// NOT: static public double square(double a);</i>
</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_962698932"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The most important lesson here is to keep the <em>access</em>&nbsp;modifier as the first modifier. Of the possible modifiers, this is by far the most important, and it must stand out in the method declaration. For the other modifiers, the order is less important, but it make sense to have a fixed convention.
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="4.4 Types" FOLDED="true" ID="ID_291591292">
<node TEXT="4.6 Type conversions must always be done explicitly. Never rely on implicit type conversion." STYLE_REF="recom" ID="ID_1492781738">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_815608836"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>floatValue = (int) intValue; <i class="not">// NOT: floatValue = intValue;</i>
    </pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_46655829">
<icon BUILTIN="messagebox_warning"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    By this, the programmer indicates that he is aware of the different types involved and that the mix is intentional.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="4.5 Variables" FOLDED="true" ID="ID_1300240692">
<node TEXT="4.7 Variables should be initialized where they are declared and they should be declared in the smallest scope possible." STYLE_REF="recom" ID="ID_1655021972">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_169104333"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_903970941"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This ensures that variables are valid at any time. Sometimes it is impossible to initialize a variable to a valid value where it is declared. In these cases it should be left uninitialized rather than initialized to some phony value.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="4.8 Variables must never have dual meaning." STYLE_REF="recom" ID="ID_1182609912">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1391284536"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1838375584"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Enhances readability by ensuring all concepts are represented uniquely. Reduce chance of error by side effects. Don't fall into the temptation of reusing an existing variable in a new context.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="4.9 Class variables should never be declared public." STYLE_REF="recom" ID="ID_1684986107">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_672036986"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_342466926"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The concept of Java information hiding and encapsulation is violated by public variables. Use private variables and access functions instead. One exception to this rule is when the class is essentially a data structure, with no behavior (equivalent to a C++ <tt>struct</tt>). In this case it is appropriate to make the class' instance variables public <a href="https://geosoft.no/javastyle.html#ref2">[2]</a>.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="4.10 Arrays should be declared with their brackets next to the type." STYLE_REF="recom" ID="ID_1703554464">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1905899179"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>double[] vertex;  <i class="not">// NOT: double vertex[];</i>
int[]    count;   <i class="not">// NOT: int    count[];</i>

public static void main(String[] arguments)

public double[] computeVertex()
    </pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1007085132"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The reason for is twofold. First, the <em>array-ness</em>&nbsp;is a feature of the class, not the variable. Second, when returning an array from a method, it is not possible to have the brackets with other than the type (as shown in the last example).
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="4.6 Loops" FOLDED="true" ID="ID_63227363">
<node TEXT="4.11 Variables should be kept alive for as short a time as possible." STYLE_REF="recom" FOLDED="true" ID="ID_137934385">
<node STYLE_REF="example" ID="ID_656740321"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1488085759"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Keeping the operations on a variable within a small scope, it is easier to control the effects and side effects of the variable.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="4.12 Only loop control statements must be included in the for() construction." STYLE_REF="recom" FOLDED="true" ID="ID_902186048">
<node STYLE_REF="example" ID="ID_66690329"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>sum = 0;                       <i class="not">// NOT: for (i = 0, sum = 0; i &lt; 100; i++)</i>
for (i = 0; i &lt; 100; i++)   <i class="not">             sum += value[i];</i>
  sum += value[i];
    </pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1488715844"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Increase maintainability and readability. Make a clear distinction of what <em>controls</em>&nbsp;and what is <em>contained</em>&nbsp;in the loop.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="4.13 Loop variables should be initialized immediately before the loop." STYLE_REF="recom" FOLDED="true" ID="ID_1124806954">
<node STYLE_REF="example" ID="ID_1505189806"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>boolean isDone = false;   <i class="not">// NOT: boolean isDone = false;</i>
while (!isDone) {         <i class="not">//      :</i>
  :                       <i class="not">//      while (!isDone) {</i>
}                         <i class="not">//        :</i>
                          <i class="not">//      }</i>
</pre>
  </body>
</html>
</richcontent>
</node>
<node TEXT="" STYLE_REF="rationale" ID="ID_1105149747"/>
</node>
<node TEXT="4.14 The use of do-while loops can be avoided." STYLE_REF="recom" FOLDED="true" ID="ID_55382609">
<node STYLE_REF="example" ID="ID_1849465726"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_788177892"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <em>do-while</em>&nbsp;loops are less readable than ordinary <em>while</em>&nbsp;loops and <em>for</em>&nbsp;loops since the conditional is at the bottom of the loop. The reader must scan the entire loop in order to understand the scope of the loop.

    <p>
      In addition, <em>do-while</em>&nbsp;loops are not needed. Any <em>do-while</em>&nbsp;loop can easily be rewritten into a <em>while</em>&nbsp;loop or a <em>for</em>&nbsp;loop. Reducing the number of constructs used enhance readbility.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="4.7 Conditionals" FOLDED="true" ID="ID_1544123782">
<node TEXT="4.15 Complex conditional expressions must be avoided. Introduce temporary boolean variables instead." STYLE_REF="recom" FOLDED="true" ID="ID_1307287654">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_182809747"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>bool isFinished = (elementNo &lt; 0) || (elementNo &gt; maxElement);
bool isRepeatedEntry = elementNo == lastElement;
if (isFinished || isRepeatedEntry) {
  :
}

<i class="not">// NOT:
if ((elementNo &lt; 0) || (elementNo &gt; maxElement)||
     elementNo == lastElement) {
  :
}</i>
</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_934514181"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    By assigning boolean variables to expressions, the program gets automatic documentation. The construction will be easier to read, debug and maintain.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="4.16 The happy case should be put in the if-part and the exception in the else-part of an if statement." STYLE_REF="recom" FOLDED="true" ID="ID_1497008773">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_171456979"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>boolean isOk = readFile(fileName);
if (isOk) {
  :
}
else {
  :
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1062707925"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Makes sure that the exceptions does not obscure the normal path of execution. This is important for both the readability and performance.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="4.17 The conditional should be put on a separate line." STYLE_REF="recom" FOLDED="true" ID="ID_1844611368">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_611998746"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>if (isDone)       <i class="not">// NOT: if (isDone) doCleanup();</i>
  doCleanup();</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_762797091"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This is for debugging purposes. When writing on a single line, it is not apparent whether the test is really true or not.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="4.18 Executable statements in conditionals must be avoided." STYLE_REF="recom" FOLDED="true" ID="ID_573524217">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_410999393"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>InputStream stream = File.open(fileName, &quot;w&quot;);
if (stream != null) {
  :
}

<i class="not">// NOT:
if (File.open(fileName, &quot;w&quot;) != null)) {
  :
}</i>
</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_263078042"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Conditionals with executable statements are simply very difficult to read. This is especially true for programmers new to Java.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="4.8 Miscellaneous" FOLDED="true" ID="ID_45618757">
<node TEXT="4.19 The use of magic numbers in the code should be avoided. Numbers other than 0 and 1can be considered declared as named constants instead." STYLE_REF="recom" FOLDED="true" ID="ID_1894777902">
<node STYLE_REF="example" ID="ID_1436703936"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>private static final int  TEAM_SIZE = 11;
:
Player[] players = new Player[TEAM_SIZE]; <i class="not">// NOT: Player[] players = new Player[11];</i>
</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_490148048"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    If the number does not have an obvious meaning by itself, the readability is enhanced by introducing a named constant instead.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="4.20 Floating point constants should always be written with decimal point and at least one decimal." STYLE_REF="recom" FOLDED="true" ID="ID_51461077">
<node STYLE_REF="example" ID="ID_802369606"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>double total = 0.0;    <i class="not">// NOT:  double total = 0;</i>
double speed = 3.0e8;  <i class="not">// NOT:  double speed = 3e8;</i>

double sum;
:
sum = (a + b) * 10.0;</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_159865091"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This emphasize the different nature of integer and floating point numbers. Mathematically the two model completely different and non-compatible concepts.

    <p>
      Also, as in the last example above, it emphasize the type of the assigned variable (<tt>sum</tt>) at a point in the code where this might not be evident.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="4.21 Floating point constants should always be written with a digit before the decimal point." STYLE_REF="recom" FOLDED="true" ID="ID_663983885">
<node STYLE_REF="example" ID="ID_521287211"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>double total = 0.5;  <i class="not">// NOT:  double total = .5;</i>
</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1033670143"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The number and expression system in Java is borrowed from mathematics and one should adhere to mathematical conventions for syntax wherever possible. Also, 0.5 is a lot more readable than .5; There is no way it can be mixed with the integer 5.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="4.22 Static variables or methods must always be refered to through the class name and never through an instance variable." STYLE_REF="recom" FOLDED="true" ID="ID_97302857">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_840629393"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>Thread.sleep(1000);    <i class="not">// NOT: thread.sleep(1000);</i>
</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_773183554"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This emphasize that the element references is static and independent of any particular instance. For the same reason the class name should also be included when a variable or method is accessed from within the same class.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="5 Layout and comments" FOLDED="true" ID="ID_1660610891">
<node TEXT="5.1 Layout" FOLDED="true" ID="ID_672951518">
<node TEXT="5.1 Basic indentation should be 2." STYLE_REF="recom" FOLDED="true" ID="ID_779407821">
<node STYLE_REF="example" ID="ID_1256250361"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>for (i = 0; i &lt; nElements; i++)
  a[i] = 0;</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_198415319"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Indentation is used to emphasize the logical structure of the code. Indentation of 1 is to small to acheive this. Indentation larger than 4 makes deeply nested code difficult to read and increase the chance that the lines must be split. Choosing between indentation of 2, 3 and 4; 2 and 4 are the more common, and 2 chosen to reduce the chance of splitting code lines. Note that the Oracle recommendation on this point is 4.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.2 Block layout should be as illustrated in example 1 below (recommended) or example 2, and must not be as shown in example 3. Class, Interface and method blocks should use the block layout of example 2." STYLE_REF="recom" FOLDED="true" ID="ID_1092254342">
<node TEXT="OK" ID="ID_1842164078">
<node STYLE_REF="example" ID="ID_178231904"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>while (!done) {
  doSomething();
  done = moreToDo();
}<br/>
</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="example" ID="ID_1707831627"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>while (!done) 
{
&nbsp;&nbsp;doSomething();
&nbsp;&nbsp;done = moreToDo();
}</pre>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="NOK" ID="ID_195658246">
<node STYLE_REF="example" ID="ID_348813058"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre><i class="not">while (!done)
 {
   doSomething();
   done = moreToDo();
 }</i></pre>
  </body>
</html>

</richcontent>
</node>
</node>
<node STYLE_REF="rationale" ID="ID_701986624"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Example 3 introduce an extra indentation level which doesn't emphasize the logical structure of the code as clearly as example 1 and 2.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.3 The class and interface declarations should have the following form:" STYLE_REF="recom" FOLDED="true" ID="ID_1374394133">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_827577034"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>class Rectangle extends Shape
  implements Cloneable, Serializable
{
  ...
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1775902417"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This follows from the general block rule above. Note that it is common in the Java developer community to have the opening bracket at the end of the line of the class keyword. This is not recommended.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.4 Method definitions should have the following form:" STYLE_REF="recom" FOLDED="true" ID="ID_1993729919">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_71261965"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>public void someMethod()
  throws SomeException
{
  ...
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1588247270"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    See comment on <tt>class</tt>&nbsp;statements above.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.5 The if-else class of statements should have the following form:" STYLE_REF="recom" FOLDED="true" ID="ID_694784987">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1246290952"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>if (condition) {
  statements;
}

if (condition) {
  statements;
}
else {
   statements;
}

if (condition) {
  statements;
}
else if (condition) {
  statements;
}
else {
  statements;
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_37282371"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This follows partly from the general block rule above. However, it might be discussed if an <tt>else</tt>&nbsp;clause should be on the same line as the closing bracket of the previous <tt>if</tt>&nbsp;or <tt>else</tt>&nbsp;clause:

    <pre>  if (condition) {
    statements;
  } else {
    statements;
  }</pre>
    This is equivalent to the Oracle recommendation. The chosen approach is considered better in the way that each part of the <tt>if-else</tt>&nbsp;statement is written on separate lines of the file. This should make it easier to manipulate the statement, for instance when moving <tt>else</tt>&nbsp;clauses around.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.6 The for statement should have the following form:" STYLE_REF="recom" FOLDED="true" ID="ID_299933669">
<node STYLE_REF="example" ID="ID_1247585181"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>for (initialization; condition; update) {
  statements;
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1240019655"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This follows from the general block rule above.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.7 An empty for statement should have the following form:" STYLE_REF="recom" FOLDED="true" ID="ID_520209190">
<node STYLE_REF="example" ID="ID_258702143"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>for (initialization; condition; update)
  ;</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_931703224"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This emphasize the fact that the for statement is empty and it makes it obvious for the reader that this is intentional.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.8 The while statement should have the following form:" STYLE_REF="recom" FOLDED="true" ID="ID_817773607">
<node STYLE_REF="example" ID="ID_1089280306"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>while (condition) {
  statements;
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_875932774"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This follows from the general block rule above.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.9 The do-while statement should have the following form:" STYLE_REF="recom" FOLDED="true" ID="ID_231038959">
<node STYLE_REF="example" ID="ID_1586974605"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>do {
  statements;
} while (condition);</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1801766347"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This follows from the general block rule above.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.10 The switch statement should have the following form:" STYLE_REF="recom" FOLDED="true" ID="ID_649682710" VGAP_QUANTITY="2 px">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_651730064"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>switch (condition) {
  case ABC :
    statements;
    // Fallthrough

  case DEF :
    statements;
    break;

  case XYZ :
    statements;
    break;

  default :
    statements;
    break;
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1331597972"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This differs slightly from the Oracle recommendation both in indentation and spacing. In particular, each <tt>case</tt>&nbsp;keyword is indented relative to the switch statement as a whole. This makes the entire switch statement stand out. Note also the extra space before the <em>:</em>&nbsp;character. The explicit <em>Fallthrough</em>&nbsp;comment should be included whenever there is a case statement without a <tt>break</tt>&nbsp;statement. Leaving the <tt>break</tt>&nbsp;out is a common error, and it must be made clear that it is intentional when it is not there.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.11 A try-catch statement should have the following form:" STYLE_REF="recom" FOLDED="true" ID="ID_1165789232">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1733965276"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>try {
  statements;
}
catch (Exception exception) {
  statements;
}

try {
  statements;
}
catch (Exception exception) {
  statements;
}
finally {
  statements;
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1874331469"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This follows partly from the general block rule above. This form differs from the Oracle recommendation in the same way as the <tt>if-else</tt>&nbsp;statement described above.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.12 Single statement if-else, for or while statements can be written without brackets." STYLE_REF="recom" FOLDED="true" ID="ID_1506411484">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_308731200"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>if (condition)
  statement;

while (condition)
  statement;

for (initialization; condition; update)
  statement;</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1171479298"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    It is a common recommendation (Oracle Java recommendation included) that brackets should always be used in all these cases. However, brackets are in general a language construct that groups several statements. Brackets are per definition superfluous on a single statement. A common argument against this syntax is that the code will break <em>if</em>&nbsp;an additional statement is added without also adding the brackets. In general however, code should never be written to accommodate for changes that <em>might</em>&nbsp;arise.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="5.2 White space" FOLDED="true" ID="ID_1701915765">
<node TEXT="5.13 - Operators should be surrounded by a space character. - Java reserved words should be followed by a white space. - Commas should be followed by a white space. - Colons should be surrounded by white space. - Semicolons in for statements should be followed by a space character." STYLE_REF="recom" FOLDED="true" ID="ID_1724742666">
<node STYLE_REF="example" ID="ID_408074907"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>a = (b + c) * d; <i class="not">// NOT: a=(b+c)*d</i>

while (true) {   <i class="not">// NOT: while(true){</i>
  ...

doSomething(a, b, c, d);  <i class="not">// NOT: doSomething(a,b,c,d);</i>

case 100 :  <i class="not">// NOT: case 100:</i>

for (i = 0; i &lt; 10; i++) {  <i class="not">// NOT: for(i=0;i&lt;10;i++){</i>
  ...
    </pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1890333490"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Makes the individual components of the statements stand out and enhances readability. It is difficult to give a complete list of the suggested use of whitespace in Java code. The examples above however should give a general idea of the intentions.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.14 Logical units within a block should be separated by one blank line." STYLE_REF="recom" FOLDED="true" ID="ID_1736094955">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1096667091"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre><i class="not">// Create a new identity matrix</i>
Matrix4x4 matrix = new Matrix4x4();

<i class="not">// Precompute angles for efficiency</i>
double cosAngle = Math.cos(angle);
double sinAngle = Math.sin(angle);

<i class="not">// Specify matrix as a rotation transformation</i>
matrix.setElement(1, 1,  cosAngle);
matrix.setElement(1, 2,  sinAngle);
matrix.setElement(2, 1, -sinAngle);
matrix.setElement(2, 2,  cosAngle);

<i class="not">// Apply rotation</i>
transformation.multiply(matrix);</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1757499947"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Enhances readability by introducing white space between logical units. Each block is often introduced by a comment as indicated in the example above.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.15 Statements can be aligned wherever this enhances readability." STYLE_REF="recom" FOLDED="true" ID="ID_1744612779">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1251201960"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>if      (a == lowValue)    compueSomething();
else if (a == mediumValue) computeSomethingElse();
else if (a == highValue)   computeSomethingElseYet();

value = (potential        * oilDensity)   / constant1 +
        (depth            * waterDensity) / constant2 +
        (zCoordinateValue * gasDensity)   / constant3;

minPosition     = computeDistance(min,     x, y, z);
averagePosition = computeDistance(average, x, y, z);

switch (phase) {
  case PHASE_OIL   : text = &quot;Oil&quot;;   break;
  case PHASE_WATER : text = &quot;Water&quot;; break;
  case PHASE_GAS   : text = &quot;Gas&quot;;   break;
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1916845127"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    There are a number of places in the code where white space can be included to enhance readability even if this violates common guidelines. Many of these cases have to do with code alignment. General guidelines on code alignment are difficult to give, but the examples above should give some general hints. In short, any construction that enhances readability should be allowed.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="5.3 Comments" FOLDED="true" ID="ID_743732134">
<node TEXT="5.16 Tricky code should not be commented but rewritten." STYLE_REF="recom" FOLDED="true" ID="ID_561921240">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_710074700"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_834730924"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    In general, the use of comments should be minimized by making the code self-documenting by appropriate name choices and an explicit logical structure.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.17 All comments should be written in English." STYLE_REF="recom" FOLDED="true" ID="ID_232723619">
<node STYLE_REF="example" ID="ID_80166240"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_248364888"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    In an international environment English is the preferred language.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.18 Javadoc comments should have the following form:" STYLE_REF="recom" FOLDED="true" ID="ID_1990272757">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1991326724"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre><i class="not">/**
 * Return lateral location of the specified position.
 * If the position is unset, NaN is returned.
 *
 * @param x    X coordinate of position.
 * @param y    Y coordinate of position.
 * @param zone Zone of position.
 * @return     Lateral location.
 * @throws IllegalArgumentException  If zone is &lt;= 0.
 */</i>
public double computeLocation(double x, double y, int zone)
  throws IllegalArgumentException
{
  ...
}
  </pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1207037131"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    A readable form is important because this type of documentation is typically read more often <i>inside</i>&nbsp;the code than it is as processed text.

    <p>
      Note in particular:
    </p>
    <ul>
      <li>
        The opening /** on a separate line
      </li>
      <li>
        Subsequent * is aligned with the first one
      </li>
      <li>
        Space after each *
      </li>
      <li>
        Empty line between description and parameter section.
      </li>
      <li>
        Alignment of parameter descriptions.
      </li>
      <li>
        Punctuation behind each parameter description.
      </li>
      <li>
        No blank line bewteen the documentation block and the method/class.
      </li>
    </ul>
    <p>
      Javadoc of class members can be specified on a single line as follows:
    </p>
    <pre>  /** Number of connections to this database */
  private int nConnections_;</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.19 There should be a space after the comment identifier." STYLE_REF="recom" FOLDED="true" ID="ID_861024518">
<node STYLE_REF="example" ID="ID_1736996649"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>// This is a comment    <i class="not">NOT: //This is a comment</i>

/**                     <i class="not">NOT: /**</i>
 * This is a javadoc    <i class="not">      *This is a javadoc</i>
 * comment              <i class="not">      *comment</i>
 */                     <i class="not">      */</i>
</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_478473515"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Improves readability by making the text stand out.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.20 Use // for all non-JavaDoc comments, including multi-line comments." STYLE_REF="recom" FOLDED="true" ID="ID_1911708199">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1682822081"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>// Comment spanning
// more than one line.</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1079012718"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Since multilevel Java commenting is not supported, using // comments ensure that it is always possible to comment out entire sections of a file using /* */ for debugging purposes etc.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.21 Comments should be indented relative to their position in the code." STYLE_REF="recom" FOLDED="true" ID="ID_227577414">
<node STYLE_REF="example" ID="ID_394574868"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>while (true) {       <i class="not">// NOT:  while (true) { </i>
  // Do something    <i class="not">         // Do something</i>
  something();       <i class="not">           something();</i>
}                    <i class="not">         }</i>
</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1741826512"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This is to avoid that the comments break the logical structure of the program.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.22 All public classes and public and protected functions within public classes should be documented using the Java documentation (javadoc) conventions." STYLE_REF="recom" FOLDED="true" ID="ID_1692609775">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1494867286"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_165539181"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This makes it easy to keep up-to-date online code documentation.

    <p>
      It is a good practice to always document package private and private content in the same way.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.23 All class members should be properly documented." STYLE_REF="recom" FOLDED="true" ID="ID_885196341">
<node STYLE_REF="example" ID="ID_814220570"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>public final class License
{
  <i class="not">/** The license holder, i.e. the licensee. Non-null. */</i>
  private final String licensee_;

  <i class="not">/** License issuer. Non-null. */</i>
  private final String issuer_;

  <i class="not">/** Name of product being licensed. Non-null. */</i>
  private final String product_;

  <i class="not">/** ID of product the license is valid for. Non-null. */</i>
  private final String productId_;

  <i class="not">/** Last date the license is valid. Or null if it never expires. */</i>
  private final Date expireDate_;

  :
}
    </pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1207915031"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Provide proper documentation of the <em>intent</em>&nbsp;for all class members. Should clearly identify value range and if it can be null and in case, what this means.

    <p>
      If synchronization is an issue the members should identify by which lock it is protected.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5.24 Overridden methods must be tagged by @Override and instrcuted to inherit the documentation of their base class." STYLE_REF="recom" FOLDED="true" ID="ID_858277190">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1498603862"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre><i class="not">/** {@inheritDoc} */</i>
@Override
public String toString()
{
  :
}
    </pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1195817429"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Will ensure correct API documentation and will cause compilation error if the method signature is wrong. Includes interface methods.

    <p>
      There should be no reason to provide specific documentation for such methods. If the base class documentation is not sufficient it is a clear indication that the logic in the override should be in a different method.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="6 Best practices" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1390922705">
<node TEXT="6.1 Classes should be final unless they are explicitly designed for inheritance." STYLE_REF="recom" FOLDED="true" ID="ID_114269148">
<node STYLE_REF="example" ID="ID_98353846"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>public final class Location
{
  :
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1145337166"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Very few classes are inherited, and creating proper base classes takes serious effort. Making a class final indicates for the client that the class is not designed for or meant to be inherited.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.2 Accessibility of classes and members should be minimized." STYLE_REF="recom" FOLDED="true" ID="ID_706556164">
<node STYLE_REF="example" ID="ID_1675178594"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1598828142"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    If possible:

    <ul>
      <li>
        Prefer package classes to public classes.
      </li>
      <li>
        Prefer final classes to non-final classes.
      </li>
      <li>
        Prefer private inner classes to package classes if the class is local to one other class only.
      </li>
      <li>
        Prefer private static inner classes to private non-static inner classes.
      </li>
      <li>
        Prefer package methods to public methods.
      </li>
      <li>
        Prefer private methods to package methods.
      </li>
      <li>
        Prefer static private methods to private methods if the class members are not referenced, or it is natural to pass these as methods arguments.
      </li>
      <li>
        Prefer private members to protected members.
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.3 Class members should whenever possible be immutable (final) with its state established at declaration or in the constructor." STYLE_REF="recom" FOLDED="true" ID="ID_1903111730">
<node STYLE_REF="example" ID="ID_1966912031"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>public final class Node
{
  private final List&lt;Node&gt; children_ = new ArrayList&lt;&gt;();

  :
}


public final class Location
{
  private final double latitude_;

  private final double longitude_;

  public Location(double latitude, double longitude)
  {
    latitude_ = latitude;
    longitude_ = logitude;
    :
  }

  :
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_311884059"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Keeps the class state easier to control, reduce the need for setter methods and simplifies threading.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.4 Mutable members must not be exposed through a public API without explicit notice." STYLE_REF="recom" FOLDED="true" ID="ID_572304948">
<node STYLE_REF="example" ID="ID_164716516"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>public List&lt;Point&gt; getPoints()
{
  return Collections.unmodifiableList(points_);
}

<i class="not">// NOT:
public List&lt;Point&gt; getPoints()
{
  return points_;
}</i>


public Date getDate()
{
  return date_ != null ? new Date(date_.getTime()) : null;
}

<i class="not">// NOT:
public Date getDate()
{
  return date_;
}</i>


public double[] getCoordinates()
{
  return Arrays.copyOf(coordinates_, coordinates_.length);
}

<i class="not">// NOT:
public double[] getCoordinates()
{
  return coordinates_;
}</i></pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_288370008"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Providing access to mutable members violates encapsulation and can cause defects that are very hard to locate.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.5 Mutable arguments must be copied when received by public methods." STYLE_REF="recom" FOLDED="true" ID="ID_1770054656">
<node STYLE_REF="example" ID="ID_1188993746"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>public void addValues(List&lt;Value&gt; values)
{
  values_.addAll(values);
}

public void setDate(Date date)
{
  date_ = date != null ? new Date(date.getTime()) : null;
}

public void setCoordinates(double[] coordinates)
{
  coordinates_ = Arrays.copyOf(coordinates, coordinates.length);
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1574210520"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Enforce encapsulation.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.6 Valid argument range of public methods must be documented and validated with IllegalArgumentException." STYLE_REF="recom" FOLDED="true" ID="ID_1418445534">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_1863863609"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre><i class="not">/**
 * Specify the length of this line segment.
 *
 * @param length  Length to set. [0.0, &gt;.
 * @throws IllegalArgumentException  If length is &lt; 0.
 */</i>
public void setLength(double length)
{
  if (length &lt; 0.0)
    throw new IllegalArgumentException(&quot;Invalid length: &quot; + length);

  :
}

<i class="not">/**
 * Create a new Type instance.
 *
 * @param id           Type ID. Non-null.
 * @param displayName  Display name of the type. Null if unspecified.
 */</i>public Type(String id, String displayName)
{
  if (id == null)
    throw new IllegalArgumentException(&quot;id cannot be null&quot;);

  :
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1562551782"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Documentation is for the client to make it clear what the API can accept and not. The exception is to break the program flow as soon as possible after an invalid call.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.7 Valid argument range of private methods must be documented and validated with assert." STYLE_REF="recom" FOLDED="true" ID="ID_1139209237">
<icon BUILTIN="messagebox_warning"/>
<node STYLE_REF="example" ID="ID_121382574"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre><i class="not">/**
 * Specify the length of this line segment.
 *
 * @param length  Length to set. [0.0, &gt;.
 * @throws IllegalArgumentException  If length is &lt; 0.0.
 */</i>
private void setLength(double length)
{
  assert length &gt;= 0.0 : &quot;Invalid length: &quot; + length);
  :
}

<i class="not">/**
 * Add a new element to this instance.
 *
 * @param element  Element to add. Non-null.
 */</i>private void addElement(Element element)
{
  assert element != null : &quot;element cannot be null&quot;;
  :
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_795038957"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Similar to the public counterpart, but private methods that are called with illegal arguments identifies programmer errors and there is no reason the problem should be passed up to the calling class through an exception.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.8 The possible value range of return values must be properly documented." STYLE_REF="recom" FOLDED="true" ID="ID_278142040">
<node STYLE_REF="example" ID="ID_273819667"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre><i class="not">/**
 * Return the number of values in this collection.
 *
 * @return  Number of values in this collection. [0,&gt;.
 */</i>
public int getNValues()
{
  :
}

<i class="not">/**
 * Return the children of this node.
 *
 * @return  The children of this node. Never null.
 */</i>
private List&lt;Node&gt; getChildren()
{
  :
}

<i class="not">/**
 * Return the description of this entry.
 *
 * @return  Description of this entry. Null if none provided.
 */</i>
private String getDescription()
{
  :
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1204104248"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Simplify correct API usage.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.9 The equals() method must be overridden if different objects should report as equal according to the logical model." STYLE_REF="recom" FOLDED="true" ID="ID_1292585229">
<node STYLE_REF="example" ID="ID_113571516"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>class Task
{
  :

  <i class="not">/** {@inheritDoc} */</i>
  @Override
  public boolean equals(Object object)
  {
    if (object == null)
      return false;

    if (object == this)
      return true;

    if (!(object instanceof Task))
      return false;

    Task task = (Task) object;

    <i class="not">// Compare every member. Beware of null checking.</i>
    if (!task.member1_.equals(member1_))
      return false;

    :

    return true;
  }
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1405279547"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The base class <tt>equals()</tt>&nbsp;method will compare object pointers and this is not sufficient for comparing the internal state of objects.

    <p>
      The general format of the overridden <tt>equals()</tt>&nbsp;method should follow the template above.
    </p>
    <p>
      Always consider the <em>alternative</em>&nbsp;approach of implementing <tt>equals()</tt>&nbsp;which is to ensure that equal objects always are the <em>same</em>&nbsp;instances. This can be achieved by using factories that manage the pool of created objects.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.10 The hashCode() method must always be overridden when equals() is." STYLE_REF="recom" FOLDED="true" ID="ID_1100264774" VGAP_QUANTITY="2 px">
<node STYLE_REF="example" ID="ID_1551196024" VSHIFT_QUANTITY="-0.75 pt"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>class Task
{
  :

  <i class="not">/** {@inheritDoc} */</i>
  @Override
  public int hashCode()
  {
    return Objects.hash(member1_, member2_, ...);
  }
}</pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1835745868"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    When instances are used as keys in hashed collections it is essential that objects that reports as <em>equal</em>&nbsp;have identical hash code. This will in general not happen if <tt>equals()</tt>&nbsp;is overridden and <tt>hashCode()</tt>&nbsp;is not.

    <p>
      The <tt>hashCode()</tt>&nbsp;method must be fast and should create its integer code from the hash codes of its <em>immutable members</em>&nbsp;and should ensure sufficient distribution of codes from the possible keys. This may involve convoluted mathematics including prime number factors etc. For the general client it is advised to simply use the logic provided by the JDK in the <tt>Objects.hash(...)</tt>&nbsp;method as shown above.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.11 Objects should be referred to by their simplest possible interface." STYLE_REF="recom" FOLDED="true" ID="ID_1476292660">
<node STYLE_REF="example" ID="ID_296951718"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre><i class="not">// NOT: The ArrayList class is most probably not needed here</i>
ArrayList&lt;Point&gt; points = new ArrayList&lt;&gt;();

<i class="not">// This is better</i>
List&lt;Point&gt; points = new ArrayList&lt;&gt;();

<i class="not">// Even better if list indexing is not needed</i>
Collection&lt;Point&gt; points = new ArrayList&lt;&gt;();

<i class="not">// Even better if only iteration is needed</i>
Iterable&lt;Point&gt; points = new ArrayList&lt;&gt;();
    </pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1390795408"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Improve flexibility as the implementing type can be changed with less impact.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.12 Utility classes (classes with static methods only) should have a private constructor." STYLE_REF="recom" FOLDED="true" ID="ID_59899470">
<node STYLE_REF="example" ID="ID_471361596"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>public final class HardwareId
{
  <i class="not">/**
   * Private constructor to prevent client instantiation.
   */</i>
  private HardwareId()
  {
    assert false : &quot;This constructor should never be called&quot;;
  }

  :
}
    </pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_334722636"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    If the constructor is not created explicitly, a default public one is generated. This is not wanted as instances of such classes makes no sense.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.13 Checked exceptions must be properly handled." STYLE_REF="recom" FOLDED="true" ID="ID_1446962625">
<node STYLE_REF="example" ID="ID_1106798620"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1809665137"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    There are four ways of handling exceptions thrown by a call within a method.

    <ul>
      <li>
        Pass the exception on to the client. Do this if the exception cannot be adequately handled at this level, or the information provided by the exception is <em>better</em>&nbsp;handled by the client code:

        <pre>            void method()
              throws SomeException
            {
              :
            }
          </pre>
      </li>
      <li>
        Catch the exception and pass on a <em>different</em>&nbsp;checked exception. Do this if the condition should be handled by the client code, but at a higher level of abstraction:

        <pre>            try {
              :
            }
            catch (SomeException exception) {
              throw new OtherException(..., exception);
            }
          </pre>
      </li>
      <li>
        Handle the exception, typically by closing resources and logging:

        <pre>            try {
              :
            }
            catch (SomeException exception) {
              :
              logger_.log(Level.WARNING, &quot;Operation failed ... &quot;, exception);
            }
          </pre>
      </li>
      <li>
        Ignore the exception. Do this only if it is <em>certain</em>&nbsp;the the exception will not be thrown, and document the fact with assert:

        <pre>            try {
              :
            }
            catch (SomeException exception) {
              assert false : &quot;This will never happen&quot;;
            }
          </pre>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.14 The toString() method should always be overridden." STYLE_REF="recom" FOLDED="true" ID="ID_1391772628">
<node STYLE_REF="example" ID="ID_553417503"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre><i class="not">/** {@inheritDoc} */</i>
@Override
public String toString()
{
  return name_ + &quot; &quot; + value_ + ...;
}
    </pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_866789049"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This is recommended by the <tt>Object</tt>&nbsp;base class: <em>&quot;It is recommended that all subclasses override the toString method. The string should be a concise but informative representation that is easy for humans to read.&quot;</em>

    <p>
      Providing a good <tt>toString</tt>&nbsp;implementation simply makes classes much more pleasant to use, such as during debugging or with print outs.
    </p>
    <p>
      If practical, a string representation of <em>all</em>&nbsp;the members of a class should be included in the <tt>toString</tt>&nbsp;method.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.15 Code must never rely on the toString() method." STYLE_REF="recom" FOLDED="true" ID="ID_800383690">
<node STYLE_REF="example" ID="ID_1817926620"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_311754496"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    According to the previous advice, <tt>toString</tt>&nbsp;should always be overridden.

    <p>
      However convenient, the code must never <em>rely</em>&nbsp;on the exact format of this and if a specific string representation of a class content is used in the business logic, this logic must be provided by a different method than <tt>toString</tt>.
    </p>
    <p>
      The reason is flexibility. <tt>toString</tt>&nbsp;should contain a scratch representation of the class content convenient for debugging or logging, and it should be possible to modify (for instance when the class changes) without any impact on the surrounding code.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.16 Methods that returns collection should never return null. Return an empty collection instead." STYLE_REF="recom" FOLDED="true" ID="ID_358428320">
<node STYLE_REF="example" ID="ID_1346802188"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre><i class="not">/**
 * Return the points of this shape.
 *
 * @return  The points of this shape. Never null.
 */</i>
List&lt;Point&gt; getPoints()
{
  ...
}
      </pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_576927862"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    This simply makes code much more robust and client code much easier to write. Methods that returns null for collections (like <tt>java.io.File.listFiles()</tt>) is a production disaster waiting to occur.

    <p>
      According to the documentation rule above, always document the fact that null is never returned.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6.17 Level of nesting should be kept as low as possible." STYLE_REF="recom" FOLDED="true" ID="ID_669580119">
<node STYLE_REF="example" ID="ID_307412665"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre><i class="not">// NOT: Don't do this</i>
for (int i = 0; i &lt; lines.length; i++) {
  if (!line.isEmpty() &amp;&amp; !line.startsWith(&quot;#&quot;)) {
    String tokens = line.split(&quot;=&quot;);
    if (tokens.size == 2) {
      String key = tokens[0];
      if (!key.endsWith(&quot;_&quot;)) {
        <i class="not">//
        // Handle nominal case here
        //</i>
      }
    }
  }
}

<i class="not">// Do this instead</i>
for (int i = 0; i &lt; lines.length; i++) {
  if (line.isEmpty() || line.startsWith(&quot;#&quot;)
    continue;

  String tokens = line.split(&quot;=&quot;);
  if (tokens.size != 2)
   continue;

  String key = tokens[0];
  if (key.endsWith(&quot;_&quot;))
    continue;

  <i class="not">//
  // Handle nominal case here
  //</i>
}



<i class="not">// NOT: Never use else after returning from an if-clause</i>
int getMagnitude(double v)
{
  if (Double.isNaN(v)) {
    return -1;
  }
  else {
    <i class="not">//
    // Handle nominal case here
    //</i>
  }
}

<i class="not">// Do this instead</i>
int getMagnitude(double v)
{
  if (Double.isNaN(v))
    return -1;

  <i class="not">//
  // Handle nominal case here
  //</i>
}



<i class="not">// NOT: Don't use if-else if the ternary operator can be used instead</i>
String text;
if (Double.isNaN(value))
  text = &quot;&quot;;
else
  text = value.toString();

<i class="not">// Do this instead</i>
String text = Double.isNaN(value) ? &quot;&quot; : value.toString();
    </pre>
  </body>
</html>
</richcontent>
</node>
<node STYLE_REF="rationale" ID="ID_1297265844"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    In general, use <tt>continue</tt>, <tt>break</tt>&nbsp;and <tt>return</tt>&nbsp;wherever this simplifies the code structure, prohibits deep nesting and improves readability.

    <p>
      It is often argued that <tt>continue</tt>&nbsp;and <tt>break</tt>&nbsp;are variants of the infamous <tt>goto</tt>&nbsp;statement and that they therefore must be avoided. Likewise, it is argued that methods should contain a single point of return only. The examples above indicates that readability is greatly improved if instead the level of nesting is reduced as much as possible.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="7 Examples" STYLE_REF="pendingTask" ID="ID_503404123">
<node TEXT="https://github.com/rabbagast" ID="ID_1552066102" LINK="https://github.com/rabbagast"/>
</node>
</node>
<node TEXT="Unit Testing Guidelines" FOLDED="true" POSITION="right" ID="ID_319633457">
<edge COLOR="#ff00ff"/>
<node TEXT="Source:" FOLDED="true" ID="ID_1879736229">
<node TEXT="https://geosoft.no/unittesting.html" ID="ID_1031847037" LINK="https://geosoft.no/unittesting.html"/>
</node>
<node TEXT="These are unit testing guidelines created and maintained by GeoSoft." ID="ID_740190533"/>
<node TEXT="The guidelines are applied to all GeoSoft software projects." ID="ID_1003276290"/>
<node TEXT="Rules 1 - 10" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1164786016">
<node TEXT="1. Keep unit tests small and fast" STYLE_REF="recom" FOLDED="true" ID="ID_457949570">
<node STYLE_REF="rationale" ID="ID_1095386179"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Ideally the entire test suite should be executed before every code check in. Keeping the tests fast reduce the development turnaround time.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="2. Unit tests should be fully automated and non-interactive" STYLE_REF="recom" FOLDED="true" ID="ID_1201566589">
<node STYLE_REF="rationale" ID="ID_63731747"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    The test suite is normally executed on a regular basis and must be fully automated to be useful. If the results require manual inspection the tests are not proper unit tests.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="3. Make unit tests simple to run" STYLE_REF="recom" FOLDED="true" ID="ID_214963600">
<node STYLE_REF="rationale" ID="ID_1313325667"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Configure the development environment so that single tests and test suites can be run by a single command or a one button click.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="4. Measure the tests" STYLE_REF="recom" FOLDED="true" ID="ID_741821865">
<node STYLE_REF="rationale" ID="ID_1636984081"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Apply coverage analysis to the test runs so that it is possible to read the exact execution coverage and investigate which parts of the code is executed and not.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="5. Fix failing tests immediately" STYLE_REF="recom" FOLDED="true" ID="ID_1193088456">
<node STYLE_REF="rationale" ID="ID_1327940493"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Each developer should be responsible for making sure a new test runs successfully upon check in, and that all existing tests runs successfully upon code check in.

    <p>
      If a test fails as part of a regular test execution the entire team should drop what they are currently doing and make sure the problem gets fixed.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="6. Keep testing at unit level" STYLE_REF="recom" FOLDED="true" ID="ID_1705866124">
<node STYLE_REF="rationale" ID="ID_380408521"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Unit testing is about testing <em>classes</em>. There should be one test class per ordinary class and the class behaviour should be tested in isolation. Avoid the temptation to test an entire work-flow using a unit testing framework, as such tests are slow and hard to maintain. Work-flow testing may have its place, but it is not unit testing and it must be set up and executed independently.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="7. Start off simple" STYLE_REF="recom" FOLDED="true" ID="ID_1205796131">
<node STYLE_REF="rationale" ID="ID_1324889205"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    One simple test is infinitely better than no tests at all. A simple test class will establish the target class test framework, it will verify the presence and correctness of both the build environment, the unit testing environment, the execution environment and the coverage analysis tool, and it will prove that the target class is part of the assembly and that it can be accessed.

    <p>
      The <i>Hello, world!</i>&nbsp;of unit tests goes like this:
    </p>
    <pre>     void testDefaultConstruction()
     {
       Foo foo = new Foo();
       assertNotNull(foo);
     }</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="8. Keep tests independent" STYLE_REF="recom" FOLDED="true" ID="ID_626353711">
<node STYLE_REF="rationale" ID="ID_85037777"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    To ensure testing robustness and simplify maintenance, tests should never rely on other tests nor should they depend on the ordering in which tests are executed.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="9. Keep tests close to the class being tested" STYLE_REF="recom" FOLDED="true" ID="ID_861281266">
<node STYLE_REF="rationale" ID="ID_171462391"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    If the class to test is <i class="tt">Foo</i>&nbsp;the test class should be called <i class="tt">FooTest</i>&nbsp;(<em>not</em>&nbsp;<i class="tt">TestFoo</i>) and kept in the same package (directory) as <i class="tt">Foo</i>. Keeping test classes in separate directory trees makes them harder to access and maintain.

    <p>
      Make sure the build environment is configured so that the test classes doesn't make its way into production libraries or executables.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="10. Name tests properly" STYLE_REF="recom" FOLDED="true" ID="ID_63912137">
<node STYLE_REF="rationale" ID="ID_611745766"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Make sure each test method test one distinct feature of the class being tested and name the test methods accordingly. The typical naming convention is <i class="tt">test[what]</i>&nbsp;such as <i class="tt">testSaveAs()</i>, <i class="tt">testAddListener()</i>, <i class="tt">testDeleteProperty()</i>&nbsp;etc.
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Rules 11 - 20" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1565766854">
<node TEXT="11. Test public API" STYLE_REF="recom" FOLDED="true" ID="ID_1803282857">
<node STYLE_REF="rationale" ID="ID_1607271479"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Unit testing can be defined as <em>testing classes through their public API</em>. Some testing tools makes it possible to test private content of a class, but this should be avoided as it makes the test more verbose and much harder to maintain. If there is private content that seems to need explicit testing, consider refactoring it into public methods in utility classes instead. But do this to improve the general design, not to aid testing.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="12. Think black-box" STYLE_REF="recom" FOLDED="true" ID="ID_72014582">
<node STYLE_REF="rationale" ID="ID_1870395729"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Act as a 3rd party class consumer, and test if the class fulfills its requirements. And try to tear it apart.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="13. Think white-box" STYLE_REF="recom" FOLDED="true" ID="ID_690734121">
<node STYLE_REF="rationale" ID="ID_1057957239"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    After all, the test programmer also wrote the class being tested, and extra effort should be put into testing the most complex logic.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="14. Test the trivial cases too" STYLE_REF="recom" FOLDED="true" ID="ID_1590081616">
<node STYLE_REF="rationale" ID="ID_209408232"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    It is sometimes recommended that all non-trivial cases should be tested and that trivial methods like simple setters and getters can be omitted. However, there are several reasons why trivial cases should be tested too:

    <ul>
      <li>
        <em>Trivial</em>&nbsp;is hard to define. It may mean different things to different people.
      </li>
      <li>
        From a black-box perspective there is no way to know which part of the code is <em>trivial</em>.
      </li>
      <li>
        The <em>trivial</em>&nbsp;cases can contain errors too, often as a result of copy-paste operations:

        <pre>     private double weight_;
     private double x_, y_;

     public void setWeight(int weight)
     {
       weight = weight_;  <i class="not">// error</i>
     }

     public double getX()
     {
       return x_;
     }

     public double getY()
     {
       return x_;  <i class="not">// error</i>
     }</pre>
      </li>
    </ul>
    The recommendation is therefore to test <em>everything</em>. The trivial cases are simple to test after all.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="15. Focus on execution coverage first" STYLE_REF="recom" FOLDED="true" ID="ID_1134267874">
<node STYLE_REF="rationale" ID="ID_208367292"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Distinguish between <em>execution coverage</em>&nbsp;and <em>actual test coverage</em>. The initial goal of a test should be to ensure high execution coverage. This will ensure that the code is actually executed on <em>some</em>&nbsp;input parameters. When this is in place, the test coverage should be improved. Note that actual test coverage cannot be easily measured (and is always close to 0% anyway).

    <p>
      Consider the following public method:
    </p>
    <pre>     void setLength(double length);</pre>
    By calling <i class="tt">setLength(1.0)</i>&nbsp;you might get 100% execution coverage. To acheive 100% actual test coverage the method must be called for <em>every possible</em>&nbsp;double value and correct behaviour must be verified for all of them. Surly an impossible task.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="16. Cover boundary cases" STYLE_REF="recom" FOLDED="true" ID="ID_133305405">
<node STYLE_REF="rationale" ID="ID_1497475603"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Make sure the parameter boundary cases are covered. For numbers, test negatives, 0, positive, smallest, largest, NaN, infinity, etc. For strings test empty string, single character string, non-ASCII string, multi-MB strings etc. For collections test empty, one, first, last, etc. For dates, test January 1, February 29, December 31 etc. The class being tested will suggest the boundary cases in each specific case. The point is to make sure as many as possible of these are tested properly as these cases are the prime candidates for errors.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="17. Provide a random generator" STYLE_REF="recom" FOLDED="true" ID="ID_1736727098">
<node STYLE_REF="rationale" ID="ID_480126159"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    When the boundary cases are covered, a simple way to improve test coverage further is to generate random parameters so that the tests can be executed with different input every time.

    <p>
      To achieve this, provide a simple utility class that generates random values of the base types like doubles, integers, strings, dates etc. The generator should produce values from the entire domain of each type.
    </p>
    <p>
      If the tests are fast, consider running them inside loops to cover as many possible input combinations as possible. The following example verifies that converting twice between little endian and big endian representations gives back the original value. As the test is fast, it is executed on one million different values each time.
    </p>
    <pre>    void testByteSwapper()
    {
      for (int i = 0; i &lt; 1000000; i++) {
        double v0 = Random.getDouble();
        double v1 = ByteSwapper.swap(v0);
        double v2 = ByteSwapper.swap(v1);
        assertEquals(v0, v2);
      }
    }</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="18. Test each feature once" STYLE_REF="recom" FOLDED="true" ID="ID_1466516203">
<node STYLE_REF="rationale" ID="ID_880853930"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    When being in testing mode it is sometimes tempting to assert on &quot;everything&quot; in every test. This should be avoided as it makes maintenance harder. Test exactly the feature indicated by the name of the test method.

    <p>
      As for ordinary code, it is a goal to keep the amount of test code as low as possible.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="19. Use explicit asserts" STYLE_REF="recom" FOLDED="true" ID="ID_114719203">
<node STYLE_REF="rationale" ID="ID_732654649"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Always prefer <i class="tt">assertEquals(a, b)</i>&nbsp;to <i class="tt">assertTrue(a == b)</i>&nbsp;(and likewise) as the former will give more useful information of what exactly is wrong if the test fails. This is in particular important in combination with random value parameters as described above when the input values are not known in advance.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="20. Provide negative tests" STYLE_REF="recom" FOLDED="true" ID="ID_296390925">
<node STYLE_REF="rationale" ID="ID_1332228814"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Negative tests intentionally misuse the code and verify robustness and appropriate error handling.

    <p>
      Consider this method that throws an exception if called with a negative parameter:
    </p>
    <pre>    void setLength(double length) throws IllegalArgumentException;</pre>
    Testing correct behavior for this particular case can be done by:

    <pre>    try {
      setLength(-1.0);
      fail();  <i class="not">// If we get here, something went wrong</i>
    }
    catch (IllegalArgumentException exception) {
      <i class="not">// If we get here, all is fine</i>
    }</pre>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Rules 21 - 28" STYLE_REF="pendingTask" FOLDED="true" ID="ID_274531342">
<node TEXT="21. Design code with testing in mind" STYLE_REF="recom" FOLDED="true" ID="ID_973172780">
<node STYLE_REF="rationale" ID="ID_1916404868"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Writing and maintaining unit tests are costly, and minimizing public API and reducing cyclomatic complexity in the code are ways to reduce this cost and make high-coverage test code faster to write and easier to maintain.

    <p>
      Some suggestions:
    </p>
    <ul>
      <li>
        Make class members immutable by establishing state at construction time. This reduce the need of setter methods.
      </li>
      <li>
        Restrict the use of excessive inheritance and virtual public methods.
      </li>
      <li>
        Reduce the public API by utilizing friend classes (C++), internal scope (C#) and package scope (Java).
      </li>
      <li>
        Avoid unnecessary branching.
      </li>
      <li>
        Keep as little code as possible inside branches.
      </li>
      <li>
        Make heavy use of exceptions and assertions to validate arguments in public and private API's respectively.
      </li>
      <li>
        Restrict the use of convenience methods. From a black-box perspective every method must be tested equally well. Consider the following trivial example:

        <pre>        public void scale(double x0, double y0, double scaleFactor)
        {
          <i class="not">// scaling logic</i>
        }

        public void scale(double x0, double y0)
        {
          scale(x0, y0, 1.0);
        }</pre>
        Leaving out the latter simplifies testing on the expense of slightly extra workload for the client code.
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="22. Don&apos;t connect to predefined external resources" STYLE_REF="recom" FOLDED="true" ID="ID_1257151917">
<node STYLE_REF="rationale" ID="ID_518106757"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Unit tests should be written without explicit knowledge of the environment context in which they are executed so that they can be run anywhere at anytime. In order to provide required resources for a test these resources should instead be made available by the test itself.

    <p>
      Consider for instance a class for parsing files of a certain type. Instead of picking a sample file from a predefined location, put the file content inside the test, write it to a temporary file in the test setup process and delete the file when the test is done.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="23. Know the cost of testing" STYLE_REF="recom" FOLDED="true" ID="ID_631898065">
<node STYLE_REF="rationale" ID="ID_1552990445"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Not writing unit tests is costly, but writing unit tests is costly too. There is a trade-off between the two, and in terms of execution coverage the typical industry standard is at about 80%.

    <p>
      The typical areas where it is hard to get full execution coverage is on error and exception handling dealing with external resources. Simulating a database breakdown in the middle of a transaction is quite possible, but might prove too costly compared to extensive code reviews which is the alternative approach.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="24. Prioritize testing" STYLE_REF="recom" FOLDED="true" ID="ID_22396504">
<node STYLE_REF="rationale" ID="ID_834515427"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Unit testing is a typical bottom-up process, and if there is not enough resources to test all parts of a system priority should be put on the lower levels first.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="25. Prepare test code for failures" STYLE_REF="recom" FOLDED="true" ID="ID_652946547">
<node STYLE_REF="rationale" ID="ID_1683207797"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Consider the simple example:

    <pre>    Handle handle = manager.getHandle();
    assertNotNull(handle);

    String handleName = handle.getName();
    assertEquals(handleName, &quot;handle-01&quot;);</pre>
    If the first assertion is false, the code crashes in the subsequent statement and none of the remaining tests will be executed. Always prepare for test failure so that the failure of a single test doesn't bring down the entire test suite execution. In general rewrite as follows:

    <pre>    Handle handle = manager.getHandle();
    assertNotNull(handle);
    if (handle == null) return;

    String handleName = handle.getName();
    assertEquals(handleName, &quot;handle-01&quot;);</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="26. Write tests to reproduce bugs" STYLE_REF="recom" FOLDED="true" ID="ID_1720240425">
<node STYLE_REF="rationale" ID="ID_1178069584"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    When a bug is reported, write a test to reproduce the bug (i.e. a failing test) and use this test as a success criteria when fixing the code.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="27. Keep it simple" STYLE_REF="recom" FOLDED="true" ID="ID_1110146250">
<node STYLE_REF="rationale" ID="ID_576177077"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    Unit tests must be simple in order to be effective, they should not contain comprehensive complexity on their own. A sure smell is if the unit test is duplicating some of the logic in the code being tested, or if it otherwise seems that the test code <em>itself</em>&nbsp;needs unit testing.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="28. Know the limitations" STYLE_REF="recom" FOLDED="true" ID="ID_830862245">
<node STYLE_REF="rationale" ID="ID_18206750"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <em>Unit tests can never prove the correctness of code!!</em>

    <p>
      A failing test may indicate that the code contains errors, but a succeeding test doesn't prove anything at all.
    </p>
    <p>
      The most useful appliance of unit tests are verification and documentation of requirements at a low level, and <em>regression testing</em>: verifying that code invariants remains stable during code evolution and refactoring.
    </p>
    <p>
      Consequently unit tests can never replace a proper up-front design and a sound development process. Unit tests should be used as a valuable supplement to the established development methodologies.
    </p>
    <p>
      And perhaps most important: The use of unit tests forces the developers to think through their designs which in general improve code quality and API's.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="" POSITION="left" ID="ID_1498395373">
<edge COLOR="#7c0000"/>
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="script to import java style guidelines" POSITION="left" ID="ID_1911954401">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      @Grab('org.jsoup:jsoup:1.13.1')
    </p>
    <p>
      import org.jsoup.Jsoup
    </p>
    <p>
      import org.jsoup.nodes.Document
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      File input = new File(&quot;C:/Downloads/Java Programming Style Guidelines 2.html&quot;)
    </p>
    <p>
      Document doc = Jsoup.parse(input, &quot;UTF-8&quot;, &quot;&quot;)
    </p>
    <p>
      
    </p>
    <p>
      doc.outputSettings.prettyPrint(false)
    </p>
    <p>
      
    </p>
    <p>
      def nodo =&nbsp;&nbsp;node
    </p>
    <p>
      
    </p>
    <p>
      def nHeader = nodo.createChild('Headers')
    </p>
    <p>
      def headers = doc.getElementsByTag('h1')
    </p>
    <p>
      headers.each{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nHeader.createChild(it.text())
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def i = 0
    </p>
    <p>
      def divisor = 10
    </p>
    <p>
      def nRules
    </p>
    <p>
      def rules = doc.getElementsByClass(&quot;rule&quot;)
    </p>
    <p>
      rules.each{ r -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;if(i%divisor == 0){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nRules?.folded = true
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nRules = nodo.createChild(&quot;Rules ${i/divisor}&quot;)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def eRecom&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= r.getElementsByClass(&quot;recom&quot;)[0]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def eExample&nbsp;&nbsp;&nbsp;= r.getElementsByClass(&quot;example&quot;)[0]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def eRationale = r.getElementsByClass(&quot;rationale&quot;)[0]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nRecom&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= nRules.createChild( contenido(eRecom,'p') )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nExample&nbsp;&nbsp;&nbsp;= nRecom.createChild( contenido(eExample,'x') )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nRationale = nRecom.createChild( contenido(eRationale,'h') )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nRecom.style.name = &quot;recom&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nExample.style.name = &quot;example&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nRationale.style.name = &quot;rationale&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nRules?.folded = true
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;i++
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      return rules.size()
    </p>
    <p>
      
    </p>
    <p>
      def contenido(elem, tipo){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;if(!elem){return ''}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def texto
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;switch (tipo.toString().take(1).toLowerCase()){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case ['p', 't']: //plain
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto = elem.text()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'h': //html
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto = &quot;&lt;html&gt;${elem.html()}&lt;/html&gt;&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'x': //html
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto = &quot;&lt;html&gt;&lt;pre&gt;${elem.html()}&lt;/pre&gt;&lt;/html&gt;&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'o': //outerHtml
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto = &quot;&lt;html&gt;${elem.outerHtml()}&lt;/html&gt;&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'm': //markdown
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto = htmlToMarkdown(elem)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto = elem.text()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="script to import unit testing guidelines" POSITION="left" ID="ID_936607437">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      @Grab('org.jsoup:jsoup:1.13.1')
    </p>
    <p>
      import org.jsoup.Jsoup
    </p>
    <p>
      import org.jsoup.nodes.Document
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      //File input = new File(&quot;C:/Downloads/Java Programming Style Guidelines 2.html&quot;)
    </p>
    <p>
      File input = new File(&quot;C:/Downloads/Unit Testing Guidelines.html&quot;)
    </p>
    <p>
      Document doc = Jsoup.parse(input, &quot;UTF-8&quot;, &quot;&quot;)
    </p>
    <p>
      
    </p>
    <p>
      doc.outputSettings.prettyPrint(false)
    </p>
    <p>
      
    </p>
    <p>
      def nodo =&nbsp;&nbsp;node
    </p>
    <p>
      
    </p>
    <p>
      def nHeader = nodo.createChild('Headers')
    </p>
    <p>
      def headers = doc.getElementsByTag('h1')
    </p>
    <p>
      headers.each{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nHeader.createChild(it.text())
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def i = 0
    </p>
    <p>
      def divisor = 10
    </p>
    <p>
      def nRules
    </p>
    <p>
      def rules = doc.getElementsByClass(&quot;rule&quot;)
    </p>
    <p>
      rules.each{ r -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;if(i%divisor == 0){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nRules?.folded = true
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nRules = nodo.createChild(&quot;Rules ${i/divisor}&quot;)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def eRecom&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= r.getElementsByClass(&quot;recom&quot;)[0]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//def eExample&nbsp;&nbsp;&nbsp;= r.getElementsByClass(&quot;example&quot;)[0]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def eRationale = r.getElementsByClass(&quot;rationale&quot;)[0]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nRecom&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= nRules.createChild( contenido(eRecom,'p') )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//def nExample&nbsp;&nbsp;&nbsp;= nRecom.createChild( contenido(eExample,'x') )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nRationale = nRecom.createChild( contenido(eRationale,'h') )
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nRecom.style.name = &quot;recom&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;//nExample.style.name = &quot;example&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nRationale.style.name = &quot;rationale&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nRules?.folded = true
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;i++
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      return rules.size()
    </p>
    <p>
      
    </p>
    <p>
      def contenido(elem, tipo){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;if(!elem){return ''}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def texto
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;switch (tipo.toString().take(1).toLowerCase()){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case ['p', 't']: //plain
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto = elem.text()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'h': //html
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto = &quot;&lt;html&gt;${elem.html()}&lt;/html&gt;&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'x': //html
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto = &quot;&lt;html&gt;&lt;pre&gt;${elem.html()}&lt;/pre&gt;&lt;/html&gt;&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'o': //outerHtml
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto = &quot;&lt;html&gt;${elem.outerHtml()}&lt;/html&gt;&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'm': //markdown
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto = htmlToMarkdown(elem)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto = elem.text()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="" POSITION="left" ID="ID_1557363617">
<edge COLOR="#00ffff"/>
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="I saved the html files in my drive and then I applied this scripts" ID="ID_1597618911"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      but you can do the same by downloading the html files dirctly in the script
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</map>

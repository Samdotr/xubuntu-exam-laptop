<!-- =====================================================================  -->
<!-- This file contains AbiSuite Preferences.  AbiSuite is a suite of Open  -->
<!-- Source desktop applications developed by AbiSource, Inc.  Information  -->
<!-- about this application can be found at http://www.abisource.com        -->
<!-- You should not edit this file by hand.                                 -->
<!-- =====================================================================  -->

<!--         Build_ID          = unknown -->
<!--         Build_Version     = 3.0.2 -->
<!--         Build_CompileTime = 12:46:29 -->
<!--         Build_CompileDate = Apr  2 2020 -->

<AbiPreferences app="abiword" ver="1.0">

	<Select
	    scheme="_custom_"
	    autosaveprefs="1"
	    useenvlocale="1"
	/>

	<!-- The following scheme, _builtin_, contains the built-in application
	**** defaults and adjusted by the installation system defaults.  This scheme
	**** is only written here as a reference.  Any schemes following this one
	**** only list values that deviate from the built-in values.
	**** Items values must observe XML encoding for double quote (&quot;),
	**** ampersand (&amp;), and angle brackets (&lt; and &gt;).
	-->

	<Scheme
		name="_builtin_"
		InsertMode="1"
		OptionsTabNumber="0"
		ToolbarLayouts="FileEditOps FormatOps TableOps ExtraOps"
		EnableSmoothScrolling="1"
		InnerQuoteStyle="1"
		RulerUnits="cm"
		ColorRevision5="0fb305"
		StringSet="en-GB"
		ColorRevision10="ff0000"
		SaveContextGlyphs="0"
		SpellCheckCaps="1"
		ColorShowPara="7f7f7f"
		CloseOnLastDoc="0"
		KeyBindingsCycle="0"
		ColorRevision6="08b3f8"
		TableBarVisible="0"
		StandardBarVisible="1"
		AutoSpellCheck="1"
		SimpleBarVisible="0"
		AutoSaveFilePeriod="5"
		UseSuffix="1"
		StringSetDirectory="strings"
		AlwaysPromptEncoding="0"
		NoMACinUUID="0"
		DirMarkerAfterClosingParenthesis="0"
		DefaultSaveFormat=".rtf"
		InsertModeToggle="0"
		layoutMode="1"
		CursorBlink="1"
		SpellCheckNumbers="1"
		ColorRevision8="0485c3"
		ColorRevision7="04cec3"
		AutoGrammarCheck="0"
		ColorFieldOffset="0c0c0c"
		ColorHdrFtr="000000"
		ZoomType="Width"
		DefaultGraphics="0"
		AutoSaveFile="1"
		ColorMargin="7f7f7f"
		SpellAutoReplace="0"
		RemapGlyphsDefault="&#xb0;"
		ToolbarAppearance="icon"
		AutoLoadPlugins="1"
		ColorImage="0000ff"
		HTML_Export_Options="?xml,xmlns:awml,+CSS"
		ColorRevision1="ab04fe"
		ColorRevision9="0712c3"
		SpellCheckInternet="1"
		OuterQuoteStyle="0"
		LatinLigatures="0"
		AutoSaveFileExt=".bak~"
		ColorColumnLine="000000"
		ColorGrammarSquiggle="00bb00"
		SmartQuotesEnable="1"
		ColorRevision2="ab1477"
		TransparentColor="ffffff"
		FormatBarVisible="1"
		ColorHyperLink="0000ff"
		/>

	<Scheme
		name="_custom_"
		ZoomPercentage="100"
		AutoSaveFilePeriod="1"
		AutoSpellCheck="0"
		/>

	<Plugin
		name="_AbiPaint_"
		szImageEditor="gimp"
		bLeaveImageAsPNG="1"
		/>

	<Recent
		max="0"
		/>

	<Geometry
		width="1280"
		height="720"
		posx="0"
		posy="0"
		flags="2"
		/>

	<Log>
	</Log>

	<Fonts include="1">
		<Face name="Times New Roman"/>
	<!--
	     Here you can put a list of fonts to limit the fonts that appear 
	     in the font UI:

		<Face name="some face"/>

	     The include attribute of 'Fonts' controls the significance of 
	     the list:
	     include="1" - limit fonts to those listed
	     include="0" - exclude the listed fonts from the system font list
	-->
	</Fonts>

</AbiPreferences>

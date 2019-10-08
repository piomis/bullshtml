$/header()$
<h5>Coverage Report - $srcDir.path$ 
$if(srcDir.worthyParent)$
<a href='#' onClick='loadSummary("$srcDir.worthyParent.escapedPath$");'><img src='images/upper.png' border="0"/></a>
$endif$
</h5> 

<div class="separator">&nbsp;</div> 
<table class="report" id="currentDir"> 
	<thead>
		<tr>
			<td class="heading" width="50%">Current Directory</td>  
			<td class="heading"  width="10%"># Files</td>
			<td class="heading"  width="20%">
				<a class="dfn" href="help.html" onclick="popupwindow('help.html'); return false;">
					Function Coverage
				</a>
			</td>
			<td class="heading"  width="20%">
				<a class="dfn" href="help.html" onclick="popupwindow('help.html'); return false;">
					Branch Coverage
				</a>
			</td>
		</tr>
	</thead> 
	<tbody> 
	$srcDir:/SrcDir()$
	</tbody> 
</table> 


<!--- subDir --!>
$if(first(srcDir.childSrcDir))$
<div class="separator">&nbsp;</div> 
<table class="report" id="subDirResult"> 
	<thead>
		<tr>
			<td class="heading" width="50%">Sub Directory</td>  
			<td class="heading"  width="10%"># Files</td>
			<td class="heading"  width="20%">
				<a class="dfn" href="help.html" onclick="popupwindow('help.html'); return false;">
					Function Coverage
				</a>
			</td>
			<td class="heading"  width="20%">
				<a class="dfn" href="help.html" onclick="popupwindow('help.html'); return false;">
					Branch Coverage
				</a>
			</td>
		</tr>
	</thead> 
	
	
	<tbody> 
	$srcDir.childSrcDir:{ eachDir |
		$eachDir:/SrcDir()$
	}$
	</tbody> 
</table> 
$endif$

<!--- files --!>
$if(first(srcDir.childSrcFile))$
<div class="separator">&nbsp;</div> 
<table class="report" id="fileList"> 
	<thead>
		<tr>
			<td class="heading" width="50%">File</td>  
			<td class="heading" width="10%">#Function</td>  

			<td class="heading"  width="20%">
				<a class="dfn" href="help.html" onclick="popupwindow('help.html'); return false;">
					Function Coverage
				</a>
			</td>
			<td class="heading"  width="20%">
				<a class="dfn" href="help.html" onclick="popupwindow('help.html'); return false;">
					Branch Coverage
				</a>
			</td>
		</tr>
	</thead> 
	
	
	<tbody> 
	$srcDir.childSrcFile:{ eachFile |
		$eachFile:/SrcFileForDir()$
	}$
	</tbody> 
</table> 
$endif$
$/footer()$

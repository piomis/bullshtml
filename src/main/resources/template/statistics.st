{
    "directories":
    [
$first(srcDirList): { it |
        { "path": "$it.escapedPath$", "covf": "$it.functionCoverageString$%", "covb": "$it.branchCoverageString$%" \}}$ $rest(srcDirList): { it | ,
        { "path": "$it.escapedPath$", "covf": "$it.functionCoverageString$%", "covb": "$it.branchCoverageString$%" \}}$
    ],
    "files":
    [
$first(srcFileList): { it |
        { "path": "$it.parentDir.escapedPath$", "name": "$it.path.name$", "covf": "$it.functionCoverageString$%", "covb": "$it.branchCoverageString$%" \}}$ $rest(srcFileList): { it | ,
        { "path": "$it.parentDir.escapedPath$", "name": "$it.path.name$", "covf": "$it.functionCoverageString$%", "covb": "$it.branchCoverageString$%" \}}$
    ]
}
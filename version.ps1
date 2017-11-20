#
# author Zoltan Somogyi, 2017
# license: you may use this script for any purpose as long as you keep this header intact!
# https://ai-toolkit.blogspot.be
#
param (
[string]$ResourceDefinePath,
[string]$VersionDefinePath,
[string]$FindAndReplaceDefinePath
)

. $FindAndReplaceDefinePath
. $VersionDefinePath

[string]$major = '1'
[string]$current_version_n = "$major.$current_minor_version.0.1"
[string]$current_version_s = "$major,$current_minor_version,0,1"
[int]$next_minor_version = $current_minor_version + 1
[string]$next_version_n = "$major.$next_minor_version.0.1"
[string]$next_version_s = "$major,$next_minor_version,0,1"

echo "Replacing version number in resource file OLD: $current_version_n NEW: $next_version_n" 

# replace current version number with next version number in resource file
Find-InTextFile -FilePath $ResourceDefinePath -Find $current_version_n -Replace $next_version_n
Find-InTextFile -FilePath $ResourceDefinePath -Find $current_version_s -Replace $next_version_s

# replace current version number in version_define.ps1
Find-InTextFile -FilePath $VersionDefinePath -Find "current_minor_version=$current_minor_version" -Replace "current_minor_version=$next_minor_version"

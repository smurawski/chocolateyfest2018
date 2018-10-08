describe 'Git' {
    it 'is installed' {
        get-command git -erroraction silentlycontinue | should not benullorempty
    }
    it 'has git/usr/bin on path' {
        $env:path | should belike '*C:\Program Files\Git\usr\bin*'
    }
}
describe 'Git' {
    it 'is installed' {
        get-command git -erroraction silentlycontinue | should not benullorempty
    }
}
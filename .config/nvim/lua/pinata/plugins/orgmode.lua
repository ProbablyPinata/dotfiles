return {
    -- install emacs for exporting
    'nvim-orgmode/orgmode',
    lazy = true,
    ft = { 'org' },
    opts = {
        org_agenda_files = '~/orgfiles/**/*',
        org_default_notes_file = '~/orgfiles/refile.org',
    }
}

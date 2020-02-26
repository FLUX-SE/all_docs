'use strict';

window.$docsify = {
    name: 'Flux:: Documentation',
    loadSidebar: true,
    subMaxLevel: 4,
    homepage: 'README.md',
    auto2top: true,
    routerMode: 'hash',
    logo: 'include/logo_flux_white.svg',
    relativePath: true,
    alias: {
        // Avoid 404
        '/(.+_doc)/(.*)/_sidebar.md': '/$1/_sidebar.md',
    },
    plugins: [
        EditOnGithubPlugin.create(
            "https://github.com/FLUX-SE/all_docs/blob/master/",
            null,
            null
        )
    ],
    pagination: {
        previousText: 'Previous',
        nextText: 'Next',
        crossChapter: true,
        crossChapterText: true,
    }
};

window.$docsify.footer = {
    copy: '<span>FLUX:: SE &copy; 2020 | </span>',
    pre: '',
    class: 'docsify-footer'
};
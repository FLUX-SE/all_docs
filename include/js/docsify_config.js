'use strict';

window.$docsify = {
    name: 'Flux:: Documentation',
    loadSidebar: 'sidebar.md',
    subMaxLevel: 4,
    homepage: 'README.md',
    auto2top: true,
    routerMode: 'hash',
    logo: 'include/logo_flux_white.svg',
    relativePath: true,
    plugins: []
};

window.$docsify.plugins.push(
    EditOnGithubPlugin.create(
        "https://github.com/FLUX-SE/all_docs/blob/master/",
        null,
        null
    )
);

window.$docsify.footer = {
    copy: '<span>FLUX:: SE &copy; 2020 | </span>',
    pre: '',
    class: 'docsify-footer'
};

window.$docsify.search = {
    maxAge: 3600,
    namespace: 'flux-doc',
};

window.$docsify.pagination = {
    previousText: 'Previous',
    nextText: 'Next',
    crossChapter: true,
    crossChapterText: true,
};
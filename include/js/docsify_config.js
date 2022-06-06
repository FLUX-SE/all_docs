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

var editOnGithubPluginText = function (file) {
    var language = file.split("/")[0];
    switch (language) {
        case 'fr_FR':
            return '&#9998; Editer sur GitHub';
        default:
            return '&#9998; Edit on git';
    }
};
window.$docsify.plugins.push(
    EditOnGithubPlugin.create(
        "https://github.com/FLUX-SE/all_docs/blob/master/",
        null,
        editOnGithubPluginText
    )
);

window.$docsify.footer = {
    copy: '<span>FLUX:: SE &copy; 2022 | </span>',
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
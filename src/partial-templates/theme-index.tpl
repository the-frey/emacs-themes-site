<div class="content center-wrapper">

    <form action="../pages/search.html">
        <input name="search" id="search" type="text" class="search-bar" placeholder="Search themes..."/>
        <button type="submit" name="submit" class="search-button">Search</button>
    </form>

    <!-- Theme list start -->
    <ul class="themes-list">
        {{#each themes}}
        <li class="cell js-theme-cell" data-title="{{this.title}}">
            <p class="theme-title">{{this.title}}</p>
            <a class="no-hover" href="{{this.link}}">
                <img class="theme-small-img" alt="{{this.title}}" title="{{this.title}}" src="{{this.img}}"/>
            </a>
        </li>
        {{/each}}
    </ul>
    <!-- Theme list end -->

    <!-- Pagination start -->
    <div class="pagination-pages-text">Pages:</div>
    <ul>
        {{#each pages}}
        {{#if this.current}}
        <li class="page-number">{{this.number}}</li>
        {{else}}
        <li class="page-number">
            <a href="./{{this}}.html">{{this}}</a>
        </li>
        {{/if}}
        {{/each}}
    </ul>
    <!-- Pagination end -->

</div>

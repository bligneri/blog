---
title: Search the Site
omit_header_text: true
type: page
description: Find anything on the website.
draft: false
---

## Search

{{< rawhtml >}}
<link href="/pagefind/pagefind-ui.css" rel="stylesheet">
<script src="/pagefind/pagefind-ui.js"></script>

<div id="search"></div>
<script>
    window.addEventListener('DOMContentLoaded', (event) => {
        new PagefindUI({ element: "#search", showSubResults: true });
    });
</script>
{{< /rawhtml >}}

#### Provided by a great library

Thanks [PageFind.app](https://pagefind.app/docs/ui-usage/) for the extraordinary integration.

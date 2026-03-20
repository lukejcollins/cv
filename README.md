# My CV

Below you can download my CV as a PDF:

<table cellspacing="0" cellpadding="0">
    <tr>
        <th>
            <a href="https://github.com/lukejcollins/cv/releases/download/latest/english.pdf">
                CV
            </a>
        </th>
    </tr>
    <tr>
        <td>
            <a href="https://github.com/lukejcollins/cv/releases/download/latest/english.pdf">
                <img src="https://github.com/lukejcollins/cv/releases/download/latest/english-thumbnail.png" alt="English CV">
            </a>
        </td>
    </tr>
</table>

The PDF (and the thumbnail) is automatically built and deployed on each push using my GitHub Actions pipeline [here](./.github/workflows/build-cv.yaml).

## Compile it yourself

Requires [Typst](https://github.com/typst/typst) to be installed. The template now uses Ubuntu-friendly system fonts (`Liberation` with `DejaVu` fallbacks) so the GitHub Actions build does not need extra font setup.

```sh
git clone https://github.com/lukejcollins/cv.git
typst compile english.typ
```

## Licence

[MIT](./LICENSE)

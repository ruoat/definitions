# Diagrams

Textual diagram file formats such as [PlantUML](http://www.plantuml.com/) and
[Graphviz DOT](http://www.graphviz.org/content/dot-language) are preferred, as 
the changes to diagram content can be reviewed nicely.

## Embedding diagrams to Markdown documents

For Graphviz, see [Gravizo](http://www.gravizo.com/). Gravizo supports also 
PlantUML but due to some incompatibilities it's better to use plantuml.com 
service.

Examples:

    ![Image name](http://g.gravizo.com/source?https%3A%2F%2Fraw.githubusercontent.com%2Fomahoito%2Fdefinitions%2Fmaster%2Ffilename.dot%3F1)

    ![Image name](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/definitions/master/filename.puml?1) 
    
**Notice** the `%3F1` or `?1` at the end. Increment this extra parameter to 
invalidate all caches (browser, GitHub, rendering service).

## Reviewing PlantUML pull requests

1. Install [Chrome Plugin](https://chrome.google.com/webstore/detail/plantuml-viewer/legbfeljfbjgfifnkmpoajgpgejojooj)
2. When reviewing a pull requests click View button open the full file and then
   Raw button. Chrome should render the diagram as an image.
 
## Creating PlantUML diagrams online

http://www.plantuml.com/plantuml

## Working with PlantUML files locally

There are several options for rendering PlantUML files locally. 
For example, you could enable the Chrome plugin for file:// URLs in Chrome 
settings, then run Chrome and your favorite text editor side by side to render
the diagram as you edit it.

Besides the Chrome plugin, PlantUML plugins are available for various IDEs
(such as Eclipse and Intellij IDEA) and text editors. See 
http://plantuml.com/running for the complete list.

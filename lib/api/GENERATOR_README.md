# How to re-generate the API

### Prerequisites
 - Java 8 or later
 - [OpenAPI Generator CLI](https://openapi-generator.tech/) installed
 - CLI open in this folder

### Generate the API
`java -jar <PATH_TO_GENERATOR> generate -i <OPENAPI_DOC_URI> -g dart-dio -o . --enable-post-process-file`

### Example:
`
java -jar C:\Editors\OpenAPI\cli.jar generate -i C:\Users\micha\Desktop\swagger.json -g dart-dio -o C:\Repositories\cookbook\lib\api --enable-post-process-file
`


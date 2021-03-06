
# ETL Batch processing using streaming in Mulesoft 

From time to time you are faced with a requirement to load some file content from system A to system B. This example application illustrates how process big file content using Mule ESB. 'Big' means the file size is bigger than jvm allocated virtual memory.

### Assumptions

Related links to documentation are 
[Streaming in Mule Apps](https://docs.mulesoft.com/mule-runtime/4.3/streaming-about),
[Batch Processing](https://docs.mulesoft.com/mule-runtime/4.3/batch-processing-concept)

### Example Use Case

In this example, by hitting an HTTPS endpoint a user will attempt to transform data file from csv to text, json to text, xml to text. Input files contains small content 1000 rows but it can be extented manually at will in src/main/resources/data-in

Open in browser :<br/>
http://localhost:8081/api/etl/localfile?sourceFile=WriteLines_010.xml <br/> 
http://localhost:8081/api/etl/localfile?sourceFile=WriteLines_010.json <br/> 
http://localhost:8081/api/etl/localfile?sourceFile=WriteLines_010.csv


### Set Up and Run the Example ###

just be sure you have loaded runtime 4.3.0 and run the application via anypoint studio 

### Some additional details  ###

start the etl-batch-process-poc mulesoft project.

open browser for example chrome

fill address with http://localhost:8081/api/etl/localfile?sourceFile=WriteLines_010.csv press enter 

if you see some json in response with column "status": "EXECUTING" then all previous steps was successfull, now

in json response obtain the input/output file in column 'destinationFileName' 

{
  "sourceFileName": "D:/../AnypointStudio7/plugins/org.mule.tooling.server.4.3.0.ee_7.3.5.202110271734/mule/apps/etl-batch-process-poc/data-in/WriteLines_010.csv",
  "destinationFileName": "D:/../AnypointStudio7/plugins/org.mule.tooling.server.4.3.0.ee_7.3.5.202110271734/mule/apps/etl-batch-process-poc/data-out/WriteLines_010.csv.out",
  "batchJobResultObject": {
    "creationTime": "2021-11-2 
    .....
}

open WriteLines_010.csv and WriteLines_010.csv.out in editor and look at the file content before and after transformation 


### Added the same example working with sftp

This is advanced part, it need some experience working with sftp connector. Before run open config-dev.yaml and fill the sftp connection details

Open in browser :<br/> 
http://localhost:8081/api/etl/sftpfile?sourceFile=WriteLines_010.xml <br/> 
http://localhost:8081/api/etl/sftpfile?sourceFile=WriteLines_010.json <br/> 
http://localhost:8081/api/etl/sftpfile?sourceFile=WriteLines_010.csv

# Sequence Diagram
### Main Flow <br/>
![Main Flow](./tools/docs/diagrams/flow-main.png)
<br/>
### Subflow with batch job <br/>
![Batch Flow](./tools/docs/diagrams/flow-batch.png)

# Mule Flow
![Flows preview](./tools/docs/diagrams/flows-preview.png)


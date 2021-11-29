
# ETL Batch processing using streaming in Mulesoft 

From time to time you are faced with a requirement to load some file content from system A to system B. This example application illustrates how process big file content using Mule ESB. 'Big' means the file size is bigger than jvm allocated virtual memory.

### Assumptions

Related links to documentation are 
[Streaming in Mule Apps](https://docs.mulesoft.com/mule-runtime/4.3/streaming-about)
[Batch Processing](https://docs.mulesoft.com/mule-runtime/4.3/batch-processing-concept)

### Example Use Case

In this example, by hitting an HTTPS endpoint a user will attempt to transform data file from csv to text, json to text, xml to text. Input files contains small content 1000 rows but it can be extented manually at will in src/main/resources/data-in

Open in browser :
http://localhost:8081/api/etl?sourceFile=WriteLines_010.csv
http://localhost:8081/api/etl?sourceFile=WriteLines_010.json
http://localhost:8081/api/etl?sourceFile=WriteLines_010.xml


### Set Up and Run the Example ###

just be sure you have loaded runtime 4.3.0 and run the application via anypoint studio 

### Some additional details  ###

start the etl-batch-process-poc mulesoft project.

open browser for example chrome

fill address with http://localhost:8081/api/etl?sourceFile=WriteLines_010.csv press enter 

if you see some json in response with column "status": "EXECUTING" then all previous steps was successfull, now

in json response obtain the input/output file in column 'destinationFileName' 

{
  "sourceFileName": "D:/var/PF/AnypointStudio7/plugins/org.mule.tooling.server.4.3.0.ee_7.3.5.202110271734/mule/apps/etl-batch-process-poc/data-in/WriteLines_010.csv",
  "destinationFileName": "D:/var/PF/AnypointStudio7/plugins/org.mule.tooling.server.4.3.0.ee_7.3.5.202110271734/mule/apps/etl-batch-process-poc/data-out/WriteLines_010.csv.out",
  "batchJobResultObject": {
    "creationTime": "2021-11-2 
    .....
}

open WriteLines_010.csv and WriteLines_010.csv.out in editor and look at the file content before and after transformation 






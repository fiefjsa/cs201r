var fs = require('fs');
var http = require('http');
var url = require('url');
var ROOT_DIR = "./";
http.createServer(function (req, res) {
  var urlObj = url.parse(req.url, true, false);
  console.log("opening"+ROOT_DIR+urlObj.pathname);
  if(urlObj.pathname == "/getcity"){
      console.log("In REST SERVICE");
      console.log(urlObj);
      res.writeHead(200); 
      var myReg = new RegExp("^"+urlObj.query["q"]);
      var jsonresult = [ ];
      fs.readFile('cities.txt', function (err,data){
          if(err) throw err;
          cities = data.toString().split('\n');
          for(var i = 0; i < cities.length; i++){
              var result = cities[i].search(myReg);
              console.log(RegExp);
              console.log(result);
              if (result !=-1)
              {
                  jsonresult.push({city:cities[i]});
              }
          }
            res.end(JSON.stringify(jsonresult));
      });

      }else{
      fs.readFile(ROOT_DIR + urlObj.pathname, function (err,data) {
        if (err) {
          res.writeHead(404);
          res.end(JSON.stringify(err));
          return;
        }
        res.writeHead(200);
        res.end(data);
  });
}
}).listen(8080);
"use strict";

angular.module('RcWareVisionAppConfig').
run(['ESGVisionConfig', '$log', function (ESGVisionConfig, $log) {
  
  ESGVisionConfig.ApiFilesPrefix = "./webpanel";
  ESGVisionConfig.ApiPrefix = ".";
  ESGVisionConfig.CombinedTemplates = "html/desktop.html";
  ESGVisionConfig.ShowLogView = true;
}]);
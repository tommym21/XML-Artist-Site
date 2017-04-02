function getQueryStringParameter(param) {
            // http://stackoverflow.com/questions/901115/how-can-i-get-query-string-values
            var parameter = param.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
            var regexS = "[\\?&]" + parameter + "=([^&#]*)";
            var regex = new RegExp(regexS);
            var results = regex.exec(window.location.search);
            if(results == null)
                return "";
            else
                return decodeURIComponent(results[1].replace(/\+/g, " "));
}




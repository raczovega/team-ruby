window.onload = function() {
    var xmlDisplay = document.getElementById('xml-display');
    var formattedXml = formatXml(xmlDisplay.textContent);
    xmlDisplay.textContent = formattedXml;
  };
  
  function formatXml(xml) {
    var formatted = '';
    var reg = /(>)(<)(\/*)/g;
    xml = xml.replace(reg, '$1\r\n$2$3');
    var pad = 0;
    xml.split('\r\n').forEach(function(node) {
      var indent = 0;
      if (node.match(/.+<\/\w[^>]*>$/)) {
        indent = 0;
      } else if (node.match(/^<\/\w/)) {
        if (pad != 0) {
          pad -= 2;
        }
      } else if (node.match(/^<\w([^>]*[^\/])?>.*$/)) {
        indent = 2;
      } else {
        indent = 0;
      }
      var padding = '';
      for (var i = 0; i < pad; i++) {
        padding += ' ';
      }
      formatted += padding + node + '\r\n';
      pad += indent;
    });
    return formatted;
  }
  
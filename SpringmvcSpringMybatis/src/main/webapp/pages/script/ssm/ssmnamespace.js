var SSM = SSM || {};

SSM.namespace = function(namespaceString) {
    if(namespaceString !== undefined){
        var parts = namespaceString.split('.'), parent = window, currentPart = SSM;

        for (var i = 0, length = parts.length; i < length; i++) {
            currentPart = parts[i];
            parent[currentPart] = parent[currentPart] || {};
            parent = parent[currentPart];
        }

        return parent;
    }
}
// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

MarvelResponseDataWrapper m = IntegracaoController.getSeries();
System.debug('Code: ' + m.code);
System.debug('Status: ' + m.status);
System.debug('Total: ' + m.data.total);
System.debug('Count: ' + m.data.count);

for (MarvelResponseDataWrapper.ResultWrapper rw : m.data.results) {
    System.debug('==============');
    System.debug('Id: ' + rw.id);
    System.debug('Title: ' + rw.title);
    System.debug('Thumb: ' + rw.thumbnail.path + '/' + rw.thumbnail.extension);
}

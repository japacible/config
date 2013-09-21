var YEAR_MAX = 365;
var WEEK_MAX = 7;
var tasklistId;
var offset = 0;
var max = 0;

function load() {
  gapi.client.setApiKey('AIzaSyBwE6z--YzfQR3SAwhUsj-CTLVoCz4Snk4');
  gapi.client.load('tasks', 'v1', getTaskLists);
};

function getTaskLists() {
  gapi.client.request({
    'path': '/tasks/v1/users/@me/lists',
    'callback': handleListTasklists
  });
}

function handleListTasklists(response) {
  var tasklists = response && response.items;
  if (!tasklists || !tasklists.length) { throw('no tasklists'); }

  tasklistId = tasklists[0].id;
  insertTask();
}

function insertTask() {
  var dueDate = getISODateNow();

  gapi.client.request({
    'path': '/tasks/v1/lists/' + tasklistId + '/tasks',
    'method': 'POST',
    'body': JSON.stringify({
        'title': 'REACT JS HACK TIME!',
        'due': dueDate
      }),
    'callback': handleCreateTask
  });
};

function handleCreateTask(response) {
  if (!response || !response.id) { throw('Failed to create task'); }

  console.log('Created task.');
  console.log('Title: ' + response.title + ', ID: ' + response.id);

  if (max == YEAR_MAX) {
    if (offset < YEAR_MAX) {
      offset++;
      load();
    } else {
      offset = 0;
    }
  } else if (max == WEEK_MAX) {
    if (offset < WEEK_MAX) {
      offset++;
      load();
    } else {
      offset = 0;
    }
  } else {
    offset = 0;
  }
};

function auth() {
  var config = {
    'client_id': '551363164658',
    'scope': 'https://www.googleapis.com/auth/tasks'
  };
  gapi.auth.authorize(config, function() {
    console.log('authentication successful');
  });
};

function pad(n) {
  return n < 10 ? '0' + n : n
};

function ISODateString(d) {  
   return d.getUTCFullYear()+'-'
        + pad(d.getUTCMonth()+1)+'-'
        + pad(d.getUTCDate())+'T'
        + pad(d.getUTCHours())+':'
        + pad(d.getUTCMinutes())+':'
        + pad(d.getUTCSeconds())+'Z'
};

function getISODateNow() {
  var date = new Date();
  date.setDate(date.getDate() + offset);
  
  // Format: 2009-09-28T19:03:12Z
  return ISODateString(date);
};

function loadtoday() {
  load();
};

function loadweek() {
  max = WEEK_MAX;
  load();
};

function loadyear() {
  max = YEAR_MAX;
  load();
};

function alertme() {
  console.log("Done loading! That took a while.");
};
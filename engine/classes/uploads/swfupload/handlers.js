var totaluploadedfiles = 0;

function fileQueued(a) {
  try {
    var d = new FileProgress(a, this.customSettings.progressTarget);
    d.setStatus("Pending ...");
    d.toggleCancel(true, this)
  }catch(b) {
    this.debug(b)
  }
}
function fileQueueError(a, d, b) {
  try {
    if(d === SWFUpload.QUEUE_ERROR.QUEUE_LIMIT_EXCEEDED) {
      alert("You have attempted to queue too many files.\n" + (b === 0 ? "You have reached the upload limit." : "You may select " + (b > 1 ? "up to " + b + " files." : 
      "one file.")))
    }else {
      var c = new FileProgress(a, this.customSettings.progressTarget);
      c.setError();
      c.toggleCancel(false);
      switch(d) {
        case SWFUpload.QUEUE_ERROR.FILE_EXCEEDS_SIZE_LIMIT:
          c.setStatus("File is too big.");
          this.debug("Error Code: File too big, File name: " + a.name + ", File size: " + a.size + ", Message: " + b);
          break;
        case SWFUpload.QUEUE_ERROR.ZERO_BYTE_FILE:
          c.setStatus("Cannot upload Zero Byte files.");
          this.debug("Error Code: Zero byte file, File name: " + a.name + ", File size: " + a.size + ", Message: " + b);
          break;
        case SWFUpload.QUEUE_ERROR.INVALID_FILETYPE:
          c.setStatus("Invalid File Type.");
          this.debug("Error Code: Invalid File Type, File name: " + a.name + ", File size: " + a.size + ", Message: " + b);
          break;
        default:
          a !== null && c.setStatus("Unhandled Error");
          this.debug("Error Code: " + d + ", File name: " + a.name + ", File size: " + a.size + ", Message: " + b);
          break
      }
    }
  }catch(e) {
    this.debug(e)
  }
}
function fileDialogComplete(a, d) {
  try {
    if(a > 0) {
      document.getElementById(this.customSettings.cancelButtonId).disabled = false
    }
    elements = document.getElementById("form").elements;
    for(i = 0;i < elements.length;i++) {
      if(name = elements[i].name) {
        value = "";
        switch(elements[i].type) {
          case "select":
            value = elements[i].options[elements[i].selectedIndex].value;
            break;
          case "radio":
          ;
          case "checkbox":
            value = elements[i].checked ? 1 : 0;
            break;
          default:
            value = elements[i].value;
            break
        }
        this.addPostParam(name, value)
      }
    }
    this.startUpload()
  }catch(b) {
    this.debug(b)
  }
}
function uploadStart(a) {
  try {
    var d = new FileProgress(a, this.customSettings.progressTarget);
    d.setStatus("Uploading...");
    d.toggleCancel(true, this)
  }catch(b) {
  }
  return true
}
function uploadProgress(a, d, b) {
  try {
    var c = Math.ceil(d / b * 100), e = new FileProgress(a, this.customSettings.progressTarget);
    e.setProgress(c);
    e.setStatus("Uploading...")
  }catch(f) {
    this.debug(f)
  }
}
function uploadSuccess(a, d) {
  try {
    var b = new FileProgress(a, this.customSettings.progressTarget);
    b.setComplete();
	var reports = eval( '('+d+')' );

	if ( reports.error ) {
		b.setError();
		b.setStatus(reports.error);
	} else {

    	b.setStatus("Complete.");

		if ( reports.success ) {
			totaluploadedfiles ++;
			var returnbox = reports.returnbox;

			returnbox = returnbox.replace(/&lt;/g, "<");
			returnbox = returnbox.replace(/&gt;/g, ">");
			returnbox = returnbox.replace(/&amp;/g, "&");

			$('#cont1').append( returnbox );

		}

	}

    b.toggleCancel(false)
  }catch(c) {
    this.debug(c)
  }
}
function uploadError(a, d, b) {
  try {
    var c = new FileProgress(a, this.customSettings.progressTarget);
    c.setError();
    c.toggleCancel(false);
    switch(d) {
      case SWFUpload.UPLOAD_ERROR.HTTP_ERROR:
        c.setStatus("Error: " + b);
        this.debug("Error Code: HTTP Error, File name: " + a.name + ", Message: " + b);
        break;
      case SWFUpload.UPLOAD_ERROR.UPLOAD_FAILED:
        c.setStatus("Upload Failed.");
        this.debug("Error Code: Upload Failed, File name: " + a.name + ", File size: " + a.size + ", Message: " + b);
        break;
      case SWFUpload.UPLOAD_ERROR.IO_ERROR:
        c.setStatus("Server (IO) Error");
        this.debug("Error Code: IO Error, File name: " + a.name + ", Message: " + b);
        break;
      case SWFUpload.UPLOAD_ERROR.SECURITY_ERROR:
        c.setStatus("Security Error");
        this.debug("Error Code: Security Error, File name: " + a.name + ", Message: " + b);
        break;
      case SWFUpload.UPLOAD_ERROR.UPLOAD_LIMIT_EXCEEDED:
        c.setStatus("Upload limit exceeded.");
        this.debug("Error Code: Upload Limit Exceeded, File name: " + a.name + ", File size: " + a.size + ", Message: " + b);
        break;
      case SWFUpload.UPLOAD_ERROR.FILE_VALIDATION_FAILED:
        c.setStatus("Failed Validation.  Upload skipped.");
        this.debug("Error Code: File Validation Failed, File name: " + a.name + ", File size: " + a.size + ", Message: " + b);
        break;
      case SWFUpload.UPLOAD_ERROR.FILE_CANCELLED:
        if(this.getStats().files_queued === 0) {
          document.getElementById(this.customSettings.cancelButtonId).disabled = true
        }
        c.setStatus("Cancelled");
        c.setCancelled();
        break;
      case SWFUpload.UPLOAD_ERROR.UPLOAD_STOPPED:
        c.setStatus("Stopped");
        break;
      default:
        c.setStatus("Unhandled Error: " + d);
        this.debug("Error Code: " + d + ", File name: " + a.name + ", File size: " + a.size + ", Message: " + b);
        break
    }
  }catch(e) {
    this.debug(e)
  }
}
function uploadComplete(a) {
  if(this.getStats().files_queued === 0) {
    document.getElementById(this.customSettings.cancelButtonId).disabled = true
  }
}
function queueComplete(a) {
    if ( totaluploadedfiles > 0 ) tabClick(0);
	totaluploadedfiles = 0;
}
;
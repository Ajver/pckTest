extends Node


#func _ready():
#	JS_API.eval("""
#		engine.loadAdditionalPck = (destPath) => {
#			loadPromise(destPath, preloadProgressTracker).then(function(xhr) {
#				const file = {
#					path: destPath,
#					buffer: xhr.response
#				};
#				loadFileFunc(preloadedFiles[0]);
#
#				var dir = LIBS.PATH.dirname(file.path);
#				try {
#					LIBS.FS.stat(dir);
#				} catch (e) {
#					if (e.code !== 'ENOENT') {
#						throw e;
#					}
#					LIBS.FS.mkdirTree(dir);
#				}
#				LIBS.FS.createDataFile(file.path, null, new Uint8Array(file.buffer), true, true, false);
#
#				gatewayToGodot.newEvent('pck_loaded', destPath);
#			});
#		}
#
#	""")


func load_pck(pck_name:String) -> void:
	print("Loading pck with name: ", pck_name)

	JS_API.call_function("engine.loadAdditionalPck", [pck_name])
#	if not ProjectSettings.load_resource_pack(pck_name):
#		push_error("Error while loading pck with name: " + pck_name)
	

func _load_pck_via_js(pck_name:String) -> void:
#	JavaScript.eval(
#	"const destPath = '" + pck_name + "';" +
#	"""
#	loadPromise(destPath, preloadProgressTracker).then(function(xhr) {
#		const file = {
#			path: destPath,
#			buffer: xhr.response
#		};
#		loadFileFunc(preloadedFiles[0]);
#
#		var dir = LIBS.PATH.dirname(file.path);
#		try {
#			LIBS.FS.stat(dir);
#		} catch (e) {
#			if (e.code !== 'ENOENT') {
#				throw e;
#			}
#			LIBS.FS.mkdirTree(dir);
#		}
#		LIBS.FS.createDataFile(file.path, null, new Uint8Array(file.buffer), true, true, false);
#	});
#	""")
	JS_API.call_function('engine.loadAdditionalPck', [pck_name])



func on_pck_loaded(pck_name:String) -> void:
	print("PCK IS LOADED: ", pck_name)
	if not ProjectSettings.load_resource_pack(pck_name):
		push_error("Error while loading pck with name: " + pck_name)
	else:
		print("PCK file loaded successfuly!")

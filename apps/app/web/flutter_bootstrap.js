{{flutter_js}}
{{flutter_build_config}}

function removeProgressBar() {
  const progressBar = document.getElementById('progress-bar');
  progressBar.parentNode.removeChild(progressBar);
}

_flutter.loader.load({
  serviceWorkerSettings: {
    serviceWorkerVersion: {{flutter_service_worker_version}},
  },
  onEntrypointLoaded: async function(engineInitializer) {
    const appRunner = await engineInitializer.initializeEngine({
        useColorEmoji: true,
    });
    removeProgressBar();
    await appRunner.runApp();
  }
});
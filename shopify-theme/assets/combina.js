(function () {
  function initCombina(root) {
    var form = root.querySelector('[data-combina-form]');
    var steps = Array.prototype.slice.call(root.querySelectorAll('[data-step]'));
    var progress = root.querySelector('.combina-progress');
    var result = root.querySelector('[data-combina-result]');
    var answers = [];
    var current = 0;

    function showStep(index) {
      current = index;
      steps.forEach(function (step, stepIndex) { step.hidden = stepIndex !== current; });
      progress.textContent = 'Passo ' + (current + 1) + ' de ' + steps.length;
    }

    form.addEventListener('click', function (event) {
      var button = event.target.closest('button[data-value]');
      if (!button) return;
      answers[current] = button.dataset.value;
      if (current < steps.length - 1) {
        showStep(current + 1);
        return;
      }
      result.hidden = false;
      result.textContent = 'Prévia registrada: ' + answers.join(' · ') + '. As recomendações estarão disponíveis quando o catálogo for homologado.';
    });

    showStep(0);
  }

  document.querySelectorAll('[data-combina]').forEach(initCombina);
})();

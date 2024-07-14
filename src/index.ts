Macro.add("blurp", {
  skipArgs: false,
  handler: function () {
    this.output.appendChild(
      document.createTextNode(`You blurped the ${this.args}`),
    );
  },
});

// See http://brunch.io for documentation.
exports.files = {
  javascripts: {
    joinTo: {
      'static/vendor.js': /^(?!app)/, // Files that are not in `app` dir.
      'static/app.js': /^app/
    }
  },
  stylesheets: {joinTo: 'static/app.css'}
};

exports.plugins = {
  babel: {presets: ['latest']}
};
